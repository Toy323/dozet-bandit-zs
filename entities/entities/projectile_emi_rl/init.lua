INC_SERVER()

ENT.LifeTime = 6

function ENT:Initialize()
	self:SetModel("models/props_phx/mk-82.mdl")
	self:SetColor(Color(255, 255, 0))
	self:PhysicsInitSphere(3)
	self:SetSolid(SOLID_VPHYSICS)
	self:SetModelScale(0.2, 0)
	self:DrawShadow(false)

	self.Bounces = 0
	self.ExplodeTime = CurTime() + self.LifeTime
	self.Grace = CurTime() + 0.1
	self.Core = true
end

function ENT:Think()
	if self.ExplodeTime <= CurTime() then
		self:Explode(self:GetPos())
	end
	local owner = self:GetOwner() 
	local phys = self:GetPhysicsObject()
	if phys:IsValid() then
		phys:SetVelocityInstantaneous(phys:GetVelocity()*1.05+Vector(0,0,12))
	end
	if self.PhysicsData then
		if self.Bounces <= 0 or self.PhysicsData.HitEntity:IsPlayer() or self.PhysicsData.HitEntity.ZombieConstruction then
			self:Explode(self.PhysicsData.HitPos, self.PhysicsData.HitNormal, self.PhysicsData.HitEntity)
		end
		local phys = self.PhysicsData.PhysObject
		if phys:IsValid() then
			local hitnormal = self.PhysicsData.HitNormal
			local vel = self.PhysicsData.OurOldVelocity
			local normal = vel:GetNormalized()
			phys:SetVelocityInstantaneous((2 * hitnormal * hitnormal:Dot(normal * -1) + normal) * vel:Length() * 0.8)
		end
		if CurTime() >= self.Grace then
			self.Bounces = self.Bounces -1
		end
		self.PhysicsData = nil
	end
	self:NextThink(CurTime())
	return true
end

function ENT:Explode(hitpos, hitnormal, hitent, boom)
	if self.Exploded then return end
	self.Exploded = true
	local jump = false
	local owner = self:GetOwner()
	if owner:IsValid() then
		local source = self
		for k,v in pairs(ents.FindInSphere(self:GetPos(),120)) do
			if v == owner then jump = true owner:SetVelocity(v:GetVelocity()+Vector(0,0,310)) v:AddLegDamage(55) break end
		end

		if !jump then
			util.BlastDamagePlayer(source, owner, hitpos, 81, (self.ProjDamage or 29), DMG_ALWAYSGIB, 0.95)
			for k,v in pairs(ents.FindInSphere(hitpos, 108)) do
				if v and v:IsValid() and !v:IsPlayer() then
					if v.FireTurret then
						v:SetNextFire(CurTime() + 7)
					elseif v:GetClass() == "prop_ffemitterfield" then
						v:Remove()
					end
				end
			end
			if boom then
				--net.Start("zs_update_style") net.WriteTable({time = CurTime()+4+(math.random(10,20)*0.2),text = "AIRBOOM!",score = 90,color = Color(196,196,196)}) net.Send(owner) 
				local ent = ents.Create("prop_electricfield")
				if ent:IsValid() then
					ent:SetPos(hitpos)
					ent:SetOwner(owner)
					ent:Spawn()
					ent:SetModelScale(3, 3)
				end
			end
		end
	end
	self:EmitSound(")weapons/explode5.wav", 80, 130)
	self:Remove()
end
function ENT:OnTakeDamage(dmginfo)
	self:Explode(self:GetPos(),nil,nil,true)
	self:SetVelocity(Vector(0,0,0))
end

function ENT:PhysicsCollide(data, physobj)
	self.PhysicsData = data
	self:NextThink(CurTime())
end
