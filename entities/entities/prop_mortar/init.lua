AddCSLuaFile("cl_init.lua")
AddCSLuaFile("shared.lua")
AddCSLuaFile("cl_animations.lua")


include("shared.lua")

ENT.LastHitSomething = 0
ENT.ConeAdder = 0
ENT.ConeMax = 0.065
ENT.ConeMin = 0.015
ENT.NextAmmoGive = 0

local function RefreshTurretOwners(pl)
	for _, ent in pairs(ents.FindByClass("prop_mortar")) do
		if ent:IsValid() and ent:GetObjectOwner() == pl then
			ent:ClearObjectOwner()
			ent:ClearTarget()
		end
	end
end
hook.Add("PlayerDisconnected", "GunTurret.PlayerDisconnected", RefreshTurretOwners)
hook.Add("PlayerChangedTeam", "GunTurret.PlayerChangedTeam", RefreshTurretOwners)

function ENT:Initialize()
	self:SetModel("models/weapons/w_pistol.mdl")
	self:SetAngles(self:GetAngles()+Angle(5,0,9))
	self:SetModelScale(5)
	self:PhysicsInit(SOLID_VPHYSICS)

	self:SetUseType(SIMPLE_USE)

	local phys = self:GetPhysicsObject()
	if phys:IsValid() then
		phys:SetMass(50)
		phys:EnableMotion(false)
		phys:Wake()
	end

	self:SetAmmo(self.DefaultAmmo)
	self:SetMaxObjectHealth(110)
	self:SetObjectHealth(self:GetMaxObjectHealth())
	hook.Add("SetupPlayerVisibility", self, self.SetupPlayerVisibility)
end

function ENT:SetObjectHealth(health)
	self:SetDTFloat(3, health)
	if health <= 0 and not self.Destroyed then
		self.Destroyed = true

		local pos = self:LocalToWorld(self:OBBCenter())

		local effectdata = EffectData()
			effectdata:SetOrigin(pos)
		util.Effect("Explosion", effectdata, true, true)
	end
end

local tempknockback
function ENT:StartBulletKnockback()
	tempknockback = {}
end

function ENT:EndBulletKnockback()
	tempknockback = nil
end

function ENT:DoBulletKnockback(scale)
	for ent, prevvel in pairs(tempknockback) do
		local curvel = ent:GetVelocity()
		ent:SetVelocity(curvel * -1 + (curvel - prevvel) * scale + prevvel)
	end
end

local function BulletCallback(attacker, tr, dmginfo)
	local ent = tr.Entity
	if ent:IsValid() then
		if ent:IsPlayer() then
			if attacker:GetObjectOwner():IsPlayer() and ent:Team() ~= attacker:GetObjectOwner():Team() and tempknockback and ent:GetBloodArmor() <= 5 then
				if attacker:GetTarget() == ent then
					attacker.LastHitSomething = CurTime()
				end
				tempknockback[ent] = ent:GetVelocity()
			end
		else
			local phys = ent:GetPhysicsObject()
			if ent:GetMoveType() == MOVETYPE_VPHYSICS and phys:IsValid() and phys:IsMoveable() then
				ent:SetPhysicsAttacker(attacker)
			end
		end

		dmginfo:SetAttacker(attacker:GetObjectOwner())
		dmginfo:SetInflictor(attacker)
	end
end

function ENT:PlayShootSound()
	-- Handled by the looping sound.
end

function ENT:GetCone()
	return math.Clamp(self.ConeMax + self.ConeAdder,self.ConeMin,self.ConeMax)
end
 
function ENT:UpdateCone()
	self.AimStartTime = CurTime()
	hook.Add("Think", self, function(s)
		s.ConeAdder = (math.Clamp(s.ConeAdder-0.02 * FrameTime(), s.ConeMin-s.ConeMax,0 ))
		 if (s.AimStartTime + 0.04 <= CurTime()) then
			s.CollapseStartTime = CurTime()
			hook.Add("Think", s, function(_)
				if (_.CollapseStartTime + 0.03 > CurTime()) then
					return
				end
				_.ConeAdder = (math.Clamp(_.ConeAdder + 0.25 * FrameTime(), s.ConeMin-s.ConeMax,0))
				if (_.ConeAdder >= 0) then
					hook.Remove("Think", _)
				end
			end)
		end
	end)
end
local function getvel( dist, ang, mass )
	ang = math.rad(ang)
    local g = dist^1.02
	--print(g)
	g = g < 400 and 600 or g
    return (( dist * g )^0.5) / math.abs( math.sin( 2 * ang ) )
end
function ENT:FireTurret(src, dir)
	if self:GetNextFire() <= CurTime() then
		local curammo = self:GetAmmo()
		if curammo > 0 then
			self:UpdateCone()
			local owner  = self:GetObjectOwner()
			self:SetNextFire(CurTime() + 2)
			self:SetAmmo(curammo - 1)
			self:StartBulletKnockback()
			self:PlayShootSound()
			local ent = ents.Create('projectile_mortir')
			local pos = owner:GetEyeTrace().HitPos 
			local dir = pos - self:GetPos()
			if ent:IsValid() then
				ent:SetPos(self:GetPos())
				ent:SetAngles(dir:Angle())
				ent:SetOwner(owner)
				ent:Spawn()
				ent.Damage = self.BaseDamageST + 12 * self:GetUpgrade()
				local phys = ent:GetPhysicsObject()
				if phys:IsValid() then
					local dira = dir:Angle()
					dira.p = 0
					local dist = self:GetPos():Distance(pos)
					local angle = dist < 1080 and 55 or 45
					--print(dist)
					phys:Wake()
					phys:ApplyForceCenter((dira + Angle(-angle,0,0)):Forward()* getvel(dist, angle ) )
				end
				ent.ShieldFree = true
			end
		else
			self:SetNextFire(CurTime() + 2)
			self:EmitSound("npc/turret_floor/die.wav")
		end
	end
end
ENT.NextShield = 0
function ENT:Think()
	if self.Destroyed then
		self:Remove()
		return
	end
	self:CalculatePoseAngles()

	local owner = self:GetObjectOwner()
	if self.NextShield < CurTime() then
		self:SetAmmo(self:GetAmmo()+1)
		self.NextShield = CurTime() + 4.5
	end
	if owner:IsValid() and self:GetAmmo() > 0 and self:GetMaterial() == "" and GAMEMODE:GetWaveActive() then
		if self:GetManualControl() then
			if owner:KeyDown(IN_ATTACK) then
				if not self:IsFiring() then self:SetFiring(true) end
				self:FireTurret(self:ShootPos(), self:GetGunAngles():Forward())
			elseif self:IsFiring() then
				self:SetFiring(false)
			end

			local target = self:GetTarget()
			if target:IsValid() then self:ClearTarget() end
		else
			if self:IsFiring() then self:SetFiring(false) end
			local target = self:GetTarget()
			if target:IsValid() and (target:IsPlayer() and !target:GetFocusD() or !target:IsPlayer()) then
				if self:IsValidTarget(target) and CurTime() < self.LastHitSomething + 0.5 then
					local shootpos = self:ShootPos()
					self:FireTurret(shootpos, (self:GetTargetPos(target) - shootpos):GetNormalized())
				else
					self:ClearTarget()
					self:EmitSound("npc/turret_floor/deploy.wav")
				end
			else
				local target = self:SearchForTarget()
				if target then
					self:SetTarget(target)
					self:SetTargetReceived(CurTime())
					self:EmitSound("npc/turret_floor/active.wav")
				end
			end
		end
	elseif self:IsFiring() then
		self:SetFiring(false)
	end
	if self.NextShield < CurTime() then
		self.NextShield = CurTime() + 0.1
		self:SetShieldDamage(math.Clamp(self:GetShieldDamage()+0.25,0,self.MaxShieldCapacity))
	end

	self:NextThink(CurTime())
	return true
end

function ENT:SetupPlayerVisibility(pl)
	if pl ~= self:GetObjectOwner() then return end

	AddOriginToPVS(self:GetPos())
	AddOriginToPVS(self:GetPos() + pl:GetAimVector() * 1024)
end


function ENT:Use(activator, caller)
	if self.Removing or not activator:IsPlayer() or self:GetMaterial() ~= "" then return end

	if !self:GetObjectOwner():IsValid() then
		self:SetObjectOwner(activator)
		if not activator:HasWeapon("weapon_zs_gunturretcontrol") then
			activator:Give("weapon_zs_gunturretcontrol")
		end
	end
end

function ENT:AltUse(activator, tr)
	self:PackUp(activator)
end

function ENT:OnPackedUp(pl)
	pl:GiveEmptyWeapon("weapon_zs_gunturret")
	pl:GiveAmmo(1, "thumper")

	pl:PushPackedItem('prop_gunturret', self:GetObjectHealth(), self:GetAmmo(), self:GetUpgrade(), "mortar")

	self:Remove()
end

function ENT:OnTakeDamage(dmginfo)
	self:TakePhysicsDamage(dmginfo)

	local attacker = dmginfo:GetAttacker()
	if not (attacker:IsValid() and attacker:IsPlayer() and self:GetObjectOwner():IsPlayer() and attacker:Team() == self:GetObjectOwner():Team()) then
		self:SetShieldDamage(math.Clamp(self:GetShieldDamage()-dmginfo:GetDamage(),0,self.MaxShieldCapacity))
		dmginfo:ScaleDamage(self:GetUpgrade() == self.MaxUpgrades and self:GetShieldDamage() > 50 and 0.25 or 1)
		self:ResetLastBarricadeAttacker(attacker, dmginfo)
		self:SetObjectHealth(self:GetObjectHealth() - dmginfo:GetDamage())
	end
end
