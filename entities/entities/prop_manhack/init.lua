AddCSLuaFile("cl_init.lua")
AddCSLuaFile("shared.lua")

include("shared.lua")

ENT.NextWaterDamage = 0


function ENT:Initialize()
	self:SetModel(self.Model)
	self:SetUseType(SIMPLE_USE)
	self:SetModelScale(1.3)
	self:Activate()
	self:PhysicsInit(SOLID_VPHYSICS)
	local phys = self:GetPhysicsObject()
	if phys:IsValid() then
		phys:SetMass(self.Mass)
		phys:EnableDrag(false)
		phys:EnableMotion(true)
		phys:Wake()
		phys:SetBuoyancyRatio(0.8)

		local Constraint = ents.Create("phys_keepupright")
		Constraint:SetAngles(Angle(0, 0, 0))
		Constraint:SetKeyValue("angularlimit", 5)
		Constraint:SetPhysConstraintObjects(phys, phys)
		Constraint:Spawn()
		Constraint:Activate()
		self:DeleteOnRemove(Constraint)
	end

	self:StartMotionController()

	self:SetMaxObjectHealth(self.MaxHealth)
	self:SetObjectHealth(self:GetMaxObjectHealth())

	self.LastThink = CurTime()

	self.NextTouch = {}

	self:SetBodygroup(1, 1)
	self:SetBodygroup(2, 1)
	self:SetSequence(1)
	self:SetPlaybackRate(1)
	self:UseClientSideAnimation(true)

	--[[local ent = ents.Create("fhb")
	if ent:IsValid() then
		ent:SetPos(self:GetPos())
		ent:SetAngles(self:GetAngles())
		ent:SetParent(self)
		ent:SetOwner(self)
		ent.Size = self.HitBoxSize
		ent:Spawn()
	end]]

	ent = ents.Create("env_projectedtexture")
	if ent:IsValid() then
		ent:SetPos(self:GetRedLightPos())
		ent:SetAngles(self:GetRedLightAngles())
		ent:SetKeyValue("enableshadows", 0)
		ent:SetKeyValue("farz", 400)
		ent:SetKeyValue("nearz", 8)
		ent:SetKeyValue("lightfov", 80)
		local owner = self:GetOwner()
		if owner:IsValid() and owner:IsPlayer() then
			local vcol = team.GetColor(owner:Team())
			if vcol then
				ent:SetKeyValue("lightcolor", vcol.r.." "..vcol.g.." "..vcol.b.." "..255)
			else
				ent:SetKeyValue("lightcolor", "200 220 255 255")
			end
		else
			ent:SetKeyValue("lightcolor", "200 220 255 255")
		end
		ent:SetParent(self)
		ent:Spawn()
		ent:Input("SpotlightTexture", NULL, NULL, "effects/flashlight001")
	end

	self:CollisionRulesChanged()

	hook.Add("SetupPlayerVisibility", self, self.SetupPlayerVisibility)
end

function ENT:SetObjectHealth(health)
	self:SetDTFloat(0, health)

	if health <= 0 then
		self:Destroy()
	end
end

function ENT:OnTakeDamage(dmginfo)
	--if dmginfo:GetDamageType() ~= DMG_CRUSH and not self._AllowDamage then return end

	local attacker = dmginfo:GetAttacker()
	if self:GetOwner():IsSkillActive(SKILL_OPERATOR) then
		dmginfo:ScaleDamage(0.67)
	end
	if not (attacker:IsValid() and attacker:IsPlayer() and self:GetOwner():IsPlayer() and attacker:Team() == self:GetOwner():Team()) then
		self:TakePhysicsDamage(dmginfo)

		self:SetObjectHealth(self:GetObjectHealth() - dmginfo:GetDamage())

		--self:EmitSound("npc/scanner/scanner_pain"..math.random(2)..".wav", 0.65, math.Rand(120, 130))
		self:EmitSound("npc/manhack/gib.wav")

		local effectdata = EffectData()
			effectdata:SetOrigin(self:NearestPoint(dmginfo:GetDamagePosition()))
			effectdata:SetNormal(VectorRand():GetNormalized())
			effectdata:SetMagnitude(4)
			effectdata:SetScale(1.33)
		util.Effect("sparks", effectdata)
	end

end

function ENT:Use(pl)
	if pl == self:GetOwner() and pl:Alive() and self:GetVelocity():Length() <= self.HoverSpeed and pl:Team() == self:GetOwner():Team() then
		self:OnPackedUp(pl)
	end
end

function ENT:PhysicsCollide(data, phys)
	self.HitData = data
	self:NextThink(CurTime())
end

function ENT:OnPackedUp(pl)
	pl:GiveEmptyWeapon(self.WeaponClass)
	pl:GiveAmmo(1, self.AmmoType)
	
	pl:PushPackedItem(self:GetClass(), self:GetObjectHealth())
	pl:StripWeapon(self.ControllerClass)
	self:Remove()
end

function ENT:PhysicsSimulate(phys, frametime)
	phys:Wake()

	local owner = self:GetOwner()
	if not owner:IsValid() then return SIM_NOTHING end
	local mul = 1
	local manhunt = 1
	if owner:IsSkillActive(SKILL_MANHUNT) then
		manhunt = mul *1.6
	end
	local vel = phys:GetVelocity()
	local movedir = Vector()
	local eyeangles = owner:SyncAngles()
	local aimangles = owner:EyeAngles()
	local CurTime = CurTime()
	if self:BeingControlled() and GAMEMODE:GetWaveActive() then
		if owner:KeyDown(IN_FORWARD) then
			movedir = movedir + aimangles:Forward()
			owner.NextUseManhack = CurTime + 4
		end
		if owner:KeyDown(IN_BACK) then
			movedir = movedir - aimangles:Forward()
			owner.NextUseManhack = CurTime + 4
		end
		if owner:KeyDown(IN_MOVERIGHT) then
			movedir = movedir + aimangles:Right()
			owner.NextUseManhack = CurTime + 4
		end
		if owner:KeyDown(IN_MOVELEFT) then
			movedir = movedir - aimangles:Right()
			owner.NextUseManhack = CurTime + 4
		end
		if owner:KeyDown(IN_BULLRUSH) then
			movedir = movedir + Vector(0, 0, 0.5)
			owner.NextUseManhack = CurTime + 4
		end
		if owner:KeyDown(IN_GRENADE1) then
			movedir = movedir - Vector(0, 0, 0.5)
			owner.NextUseManhack = CurTime + 4
		end
	end

	if movedir == vector_origin then
		vel = vel * (1 - frametime * self.IdleDrag * mul)
	else
		movedir:Normalize()

		vel = (vel + frametime * self.Acceleration * mul * math.Clamp((self:GetObjectHealth() / self:GetMaxObjectHealth() + 1) / 2, 0.5, 1) * movedir)
	end

	if vel:Length() > self.MaxSpeed then
		vel:Normalize()
		vel = vel * self.MaxSpeed
	end

	if movedir == vector_origin and vel:Length() <= self.HoverSpeed then
		local trace = {mask = MASK_HOVER, filter = self}
		trace.start = self:GetPos()
		trace.endpos = trace.start + Vector(0, 0, self.HoverHeight * -2)
		local tr = util.TraceLine(trace)

		local hoverdir = (trace.start - tr.HitPos):GetNormalized()
		local hoverfrac = (0.5 - tr.Fraction) * 2
		vel = vel + frametime * hoverfrac * self.HoverForce * hoverdir
	end

	phys:EnableGravity(false)
	phys:SetAngleDragCoefficient(10000)
	phys:SetVelocityInstantaneous(vel)
	local diff = math.AngleDifference(eyeangles.yaw, phys:GetAngles().yaw)
	local z = math.Clamp(diff, -32, 32) * frametime * 10
	local curz = phys:GetAngleVelocity().z
	z = z - curz * (frametime * math.min(1, math.abs(z - curz) ^ 2 * 0.02))

	phys:AddAngleVelocity(Vector(0, 0, z))

	return SIM_NOTHING
end

function ENT:Destroy()
	if self.Destroyed then return end
	self.Destroyed = true

	self:EmitSound("npc/manhack/gib.wav")

	local effectdata = EffectData()
		effectdata:SetOrigin(self:LocalToWorld(self:OBBCenter()))
	util.Effect("HelicopterMegaBomb", effectdata, true, true)
		effectdata:SetNormal(Vector(0, 0, 1))
		effectdata:SetMagnitude(5)
		effectdata:SetScale(1.5)
	util.Effect("sparks", effectdata)
end

local function RefreshManhackOwners(pl)
	for _, ent in pairs(ents.FindByClass("prop_manhack")) do
		if ent:IsValid() and ent:GetOwner() == pl then
			ent:Destroy()
		end
	end
end

hook.Add("PlayerDisconnected", "Manhack.PlayerDisconnected", RefreshManhackOwners)
hook.Add("PlayerChangedTeam", "Manhack.PlayerChangedTeam", RefreshManhackOwners)

ENT.PhysDamageImmunity = 0
function ENT:Think()
	if self.Destroyed then
		if not self.CreatedDebris then
			self.CreatedDebris = true

			local ent = ents.Create("prop_physics")
			if ent:IsValid() then
				ent:SetPos(self:GetPos())
				ent:SetAngles(self:GetAngles())
				ent:SetModel(self:GetModel())
				ent:Spawn()
				local phys = ent:GetPhysicsObject()
				if phys:IsValid() then
					phys:SetVelocityInstantaneous(self:GetVelocity())
				end

				ent:Fire("break")
				ent:Fire("kill", "", 0.05)
			end
		end

		self:Remove()
		return
	end

	local owner = self:GetOwner()
	if owner:IsValid() then
		self:SetPhysicsAttacker(owner)

		if not owner:Alive() or not (owner:Team() == TEAM_HUMAN or owner:Team() == TEAM_BANDIT) then
			self:Destroy()
			return
		end
	else
		self:Destroy()
		return
	end

	if self:WaterLevel() >= 2 and CurTime() >= self.NextWaterDamage then
		self.NextWaterDamage = CurTime() + 0.2

		self:TakeDamage(10)
	end

	local data = self.HitData
	if data then
		self.HitData = nil
		self:ThreadSafePhysicsCollide(data)
	end
end

function ENT:ThreadSafePhysicsCollide(data)
	local diddamage = false
	local ent = data.HitEntity
	if ent and ent:IsValid() then
		if ent:IsPlayer() and self:GetOwner():IsPlayer() and ent:Team() ~= self:GetOwner():Team() and ent:Alive() and CurTime() >= (self.NextTouch[ent] or 0) then
			diddamage = true

			self.NextTouch[ent] = CurTime() + self.HitCooldown

			local owner = self:GetOwner()
			if not owner:IsValid() then owner = self end

			ent:TakeDamage(self.HitDamage, owner, self)
			self:EmitHitFleshSound()

			local dir = (self:GetPos() - data.HitPos):GetNormalized()

			util.Blood(data.HitPos, math.random(10, 14), dir, 200)

			local phys = self:GetPhysicsObject()
			if phys:IsValid() then
				phys:AddVelocity(dir * self.BounceFleshVelocity)
			end
		else
			local physattacker = ent:GetPhysicsAttacker()
			if physattacker:IsValid() and (physattacker:Team() == TEAM_HUMAN or physattacker:Team() == TEAM_BANDIT) then
				self.PhysDamageImmunity = CurTime() + 0.5
			end
		end
	end

	if not diddamage then
		local dir = (self:GetPos() - data.HitPos):GetNormalized()

		if data.Speed > self.HoverSpeed then
			local phys = self:GetPhysicsObject()
			if phys:IsValid() then
				phys:AddVelocity(dir * self.BounceVelocity)
			end
		end

		if data.DeltaTime > 0.33 and data.Speed > 32 then
			self:EmitHitSound()

			local effectdata = EffectData()
				effectdata:SetOrigin(self:NearestPoint(data.HitPos))
				effectdata:SetNormal(data.HitNormal)
				effectdata:SetMagnitude(2)
				effectdata:SetScale(1)
			util.Effect("sparks", effectdata)
		end
		local mul = 1
		if self:GetOwner():IsSkillActive(SKILL_MANHUNT) then
			mul = mul  *0.5
		end
		if data.Speed >= self.MaxSpeed * self.SelfDamageSpeed and ent and ent:IsWorld() and CurTime() >= self.PhysDamageImmunity then
			self:TakeDamage(math.Clamp((data.Speed * self.SelfDamageMul) * mul, 0, 30 * mul))
		end
	end
end

function ENT:EmitHitFleshSound()
	self:EmitSound("npc/manhack/grind_flesh"..math.random(3)..".wav")
end

function ENT:EmitHitSound()
	self:EmitSound("npc/manhack/grind"..math.random(5)..".wav")
end

function ENT:SetupPlayerVisibility(pl)
	if pl ~= self:GetOwner() then return end

	AddOriginToPVS(self:GetPos())
end

if CLIENT then return end
