INC_SERVER()

local vector_origin = vector_origin
ENT.NextHook = 1
function ENT:Initialize()
	self:SetModel("models/props_junk/harpoon002a.mdl")
	self:PhysicsInitSphere(15)
	--self:PhysicsInitBox(Vector(-6,6,6),Vector(6,6,6))
	self:SetSolid(SOLID_VPHYSICS)
	self:SetModelScale(1, 0)
	self.trg = NULL
	self:SetAngles(self:GetOwner():GetAimVector():Angle())

	self.DieTime = CurTime() + 3
	self.LastPhysicsUpdate = UnPredictedCurTime()
end

function ENT:PhysicsUpdate(phys)
	if not self.InitVelocity then self.InitVelocity = self:GetVelocity() end

	local dt = (UnPredictedCurTime() - self.LastPhysicsUpdate)
	self.LastPhysicsUpdate = UnPredictedCurTime()

	phys:AddVelocity(self.InitVelocity * dt * -0.3)
end
function compare(a,b)
	return a.Health < b.Health
  end
function ENT:Think()
	if self.PhysicsData then
		self:Hit(self.PhysicsData.HitPos, self.PhysicsData.HitNormal, self.PhysicsData.HitEntity)
	end

	if self.Exploded then
		self:SetCollisionGroup(COLLISION_GROUP_WORLD)
	elseif self.DieTime < CurTime() then
		self:Remove()
	end

	
end

function ENT:OnRemove()

	local owner = self:GetOwner()
	if owner:Alive() and owner:GetActiveWeapon():IsValid() then
		owner:GetActiveWeapon():SetClip1(1)
	end

end

function ENT:Hit(vHitPos, vHitNormal, ent)
	if self.Exploded then return end

	local owner = self:GetOwner()
	if not owner:IsValid() then owner = self end

	vHitPos = vHitPos or self:GetPos()
	vHitNormal = vHitNormal or Vector(0, 0, 1)

	if ent:IsValid() then
		if (ent.BeingControlled or  ent and ent:IsValid() and ent:IsPlayer() and ent:Team() ~= owner:Team() ) and owner:IsPlayer() then
			if ent:IsValid() and ent:IsPlayer() and ent:Team() ~= owner:Team()  then
				self.Exploded = true


				ent:TakeSpecialDamage(4,DMG_GENERIC, owner, self)
				ent:SetVelocity(Vector(0,0,150))
				local ent0 = owner
				if owner:KeyDown(IN_ATTACK2) then
					ent0 = ent
					ent = owner

				end
				local status = ent:GiveStatus("devourer")
				if status and status:IsValid() then
					status:SetDamage(15)
					status:SetPuller(ent0)
					--local oldpos = self:LocalToWorld(self:OBBCenter())
					self:SetParent(status)
					--self:SetPos(oldpos)
				end
				self:GetPhysicsObject():SetVelocityInstantaneous(vector_origin)
			else
				local vel = owner:GetAimVector() * -2000
				ent:GetPhysicsObject():SetVelocity(vel)
			end
		end
	end
end

function ENT:PhysicsCollide(data, phys)
	self.PhysicsData = data
	self:NextThink(CurTime())
end
