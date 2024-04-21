AddCSLuaFile("cl_init.lua")
AddCSLuaFile("shared.lua")

include("shared.lua")
local steeringratio = 0.8
ENT.NextResnya = 0
function ENT:Think()
	local owner = self:GetOwner()

	if self:GetTime() <= 0 then
		self:Remove()
		return
	end

	self:AddTime(-0.1)
	self:NextThink(CurTime() + 0.1)
	if self.NextResnya < CurTime() then
		for k,v in pairs(ents.FindInSphere(owner:GetPos(),80)) do
			if v and v:IsPlayer() and v:Team() ~= owner:Team() and v:Alive() then
				v:TakeDamage(12,owner,owner:GetActiveWeapon())
			end
		end
		self.NextResnya = CurTime() + 0.4
	end
	for k,inflictor in pairs(ents.FindInSphere(self:GetPos(), 178)) do
		if string.sub(inflictor:GetClass(),1,10) == 'projectile' then
			local ent1 = ents.Create(inflictor:GetClass())
			if ent1:IsValid() then
				ent1:SetPos(inflictor:GetPos()+Vector(0,0,12))
				ent1:SetAngles(owner:EyeAngles())
				ent1:SetOwner(owner)
				ent1.ProjDamage = inflictor.ProjDamage
				ent1.Damage = inflictor.Damage
				ent1.ProjSource = inflictor
				ent1.Team = owner:Team()
				local projcenter = inflictor:GetPos()
				local fireorigin = owner:GetShootPos()
				local firevec = ( projcenter - fireorigin ):GetNormalized()
				ent1:Spawn()
				local phys = ent1:GetPhysicsObject()
				if phys:IsValid() then
					local aimvec = owner:GetAimVector()
					phys:Wake()
					local dir = (aimvec*steeringratio+firevec*(1-steeringratio))
					phys:AddVelocity(dir*2200)
				end
			end
			inflictor:Remove()
		end
	end

	return true
end
function ENT:EntityTakeDamage(ent, dmginfo)
	local attacker = dmginfo:GetAttacker()
	local own = self:GetOwner()
	if ent ~= own then return end
	if (attacker:IsValid() and attacker:IsPlayer() and own:IsPlayer() and attacker:Team() == own:Team()) then return end
	if dmginfo:GetDamagePosition() then
		self:SetDTVector(12,dmginfo:GetDamagePosition() )
	end
	local gd = math.Round(self:GetTime()/0.3/1.6,1)
	
	local mul = 1-gd
	if mul < 0 then
		mul = mul * -1
	end
	mul = math.Clamp(mul,0.1,0.9)
	local olddamage = dmginfo:GetDamage()
	dmginfo:SetDamage(0) 
	own:AddStamina(math.Clamp(40/gd,0,100))
	local inflictor = dmginfo:GetInflictor()
	local bruh = inflictor:GetClass()
	--print(bruh)
	if string.sub(bruh,1,10) == 'projectile' then
			local ent1 = ents.Create(inflictor:GetClass())
			if ent1:IsValid() then
				ent1:SetPos(inflictor:GetPos()+Vector(0,0,5))
				ent1:SetAngles(own:EyeAngles())
				ent1:SetOwner(own)
				ent1.ProjDamage = inflictor.ProjDamage
				ent1.Damage = inflictor.Damage
				ent1.ProjSource = inflictor
				ent1.Team = own:Team()
				local projcenter = inflictor:GetPos()
				local fireorigin = own:GetShootPos()
				local firevec = ( projcenter - fireorigin ):GetNormalized()
				ent1:Spawn()
				local phys = ent1:GetPhysicsObject()
				if phys:IsValid() then
					local aimvec = own:GetAimVector()
					phys:Wake()
					local dir = (aimvec*steeringratio+firevec*(1-steeringratio))
					phys:AddVelocity(dir*2200)
				end
			end
			inflictor:Remove()
		end

	if bit.band(dmginfo:GetDamageType(), DMG_BULLET) ~= 0 and (own.ParryBullets or 0) < CurTime() then
		timer.Simple(0, function()
			own:FireBullets({Num = 1, Src = own:GetPos(), Dir = (attacker:LocalToWorld(attacker:OBBCenter()) - own:GetPos()):GetNormalized(), Spread = Vector(0, 0, 0), Tracer = 1, TracerName = "rico_trace", Force = olddamage * 0.15, Damage = olddamage/gd, Callback = inflictor.BulletCallback})
			own.ParryBullets = CurTime() + 0.03
		end)
	end
end
