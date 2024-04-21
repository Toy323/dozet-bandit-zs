AddCSLuaFile("cl_init.lua")
AddCSLuaFile("shared.lua")

include("shared.lua")

function ENT:Think()
	local owner = self:GetOwner()

	if self:GetTime() <= 0 then
		self:Remove()
		return
	end

	self:AddTime(-0.1)
	self:NextThink(CurTime() + 0.1)
	return true
end
local steeringratio = 0.8
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
	local olddamage = dmginfo:GetDamage()
	dmginfo:SetDamage(olddamage*mul) 
	own:AddStamina(math.Clamp(40/gd,0,100))
	local inflictor = dmginfo:GetInflictor()
	local bruh = inflictor:GetClass()
	if string.sub(bruh,1,6) ~= 'status' then
		own:EmitSound('zombiesurvival/parry_sound.wav')
		own:ConCommand('-attack2')
		own:GetActiveWeapon():SetNextSecondaryFire(CurTime()+2)
	end
	--print(bruh)
	if string.sub(bruh,1,10) == 'projectile' and !(inflictor.NextAmmoTake or inflictor.NoWhirlWhind )  then -- and !inflictor.NoWhirlWhind  
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

	if bit.band(dmginfo:GetDamageType(), DMG_BULLET) ~= 0 and (own.ParryBullets or 0) < CurTime() and gd ~= 0 then
		timer.Simple(0, function()
			own:FireBullets({Num = 1, Src = own:GetPos(), Dir = (attacker:LocalToWorld(attacker:OBBCenter()) - own:GetPos() + Vector(math.random(-17,17),math.random(-30,30),math.random(-17,17))):GetNormalized(), Spread = Vector(0, 0, 0), Tracer = 1, TracerName = "rico_trace", Force = olddamage * 0.15, Damage = olddamage/gd, Callback = inflictor.BulletCallback})
			own.ParryBullets = CurTime() + 0.03
		end)
	end
	timer.Simple(0.7, function() if self:IsValid() then self:Remove() end end)
end
