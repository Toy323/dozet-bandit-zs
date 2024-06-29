AddCSLuaFile("cl_init.lua")
AddCSLuaFile("shared.lua")

include("shared.lua")

function ENT:Initialize()
	self.DeathTime = CurTime() + 30

	self:SetModel("models/props/cs_italy/orange.mdl")
	self:PhysicsInitSphere(4)
	self:SetSolid(SOLID_VPHYSICS)
	self:SetCollisionGroup(COLLISION_GROUP_PROJECTILE)
	self:SetColor(Color(0, 255, 0, 255))
	self:SetCustomCollisionCheck(true)

	local phys = self:GetPhysicsObject()
	if phys:IsValid() then
		phys:SetMass(4)
		phys:SetBuoyancyRatio(0.002)
		phys:EnableMotion(true)
		phys:Wake()
	end
end

function ENT:Think()
	if self.PhysicsData then
		self:Hit(self.PhysicsData.HitPos, self.PhysicsData.HitNormal, self.PhysicsData.HitEntity)
	end

	if self.DeathTime <= CurTime() then
		self:Remove()
	end
end

function ENT:Hit(vHitPos, vHitNormal, eHitEntity)
	if self.Exploded then return end
	self.Exploded = true
	self.DeathTime = 0

	local owner = self:GetOwner()
	if not owner:IsValid() then owner = self end

	vHitPos = vHitPos or self:GetPos()
	vHitNormal = vHitNormal or Vector(0, 0, 1)

	if eHitEntity:IsValid() then
		eHitEntity:PoisonDamage(self.Damage or 10, owner, self)
		if eHitEntity:IsPlayer() and owner:IsPlayer() then
			local attach = eHitEntity:GetAttachment(1)
			if attach then
				if vHitPos:Distance(attach.Pos) <= 18 then
					eHitEntity:PlayEyePoisonedSound()
					local status = eHitEntity:GiveStatus("confusion")
				end
			end
		end
	end

	local effectdata = EffectData()
		effectdata:SetOrigin(vHitPos)
		effectdata:SetNormal(vHitNormal)
	util.Effect("spithit", effectdata)
	util.Decal("YellowBlood", vHitPos + vHitNormal, vHitPos - vHitNormal)
end

function ENT:PhysicsCollide(data, phys)
	if not self:HitFence(data, phys) and data.HitEntity:IsValid() then
		self.PhysicsData = data
	end
	local pos = data.HitPos
	if pos and !self.Clayed then
		self:SetPos(pos)
		self:GetPhysicsObject():Sleep()
		self.Clayed = true
		for k,v in pairs(ents.FindInSphere(self:GetPos(), 25)) do
			if self:GetClass() == v:GetClass() and self ~= v then
				local add = self:GetDTInt(12)+1
				v:SetDTInt(12,v:GetDTInt(12)+add)
				v.Damage = v.Damage + 4*add
				v:SetModelScale(v:GetModelScale()+0.2*add)
				local effectdata = EffectData()
					effectdata:SetOrigin(pos)
					effectdata:SetNormal(Vector(0,0,1))
				util.Effect("spithit", effectdata)
				v.DeathTime = v.DeathTime + 5 * (v:GetDTInt(12)+add)
				if v:GetDTInt(12) > 17 then
					for i=1,math.Round((v:GetDTInt(12)+add)/2) do
						local ent = ents.Create("projectile_lipuchka")
						if ent:IsValid() then
							ent:SetPos(pos+Vector(0,0,20))
							ent:SetOwner(v:GetOwner())
							ent:Spawn()

							ent.Damage = 32
		
							local phys = ent:GetPhysicsObject()
							if phys:IsValid() then
								phys:SetVelocityInstantaneous(VectorRand(-260,260))
							end
						end
					end
					v:Remove()
				end
				self:Remove()
				break
			end
		end
	end


	self:NextThink(CurTime())
end
