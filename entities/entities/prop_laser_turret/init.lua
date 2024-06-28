AddCSLuaFile("cl_init.lua")
AddCSLuaFile("shared.lua")
AddCSLuaFile("cl_animations.lua")


include("shared.lua")

ENT.LastHitSomething = 0
ENT.ConeAdder = 0
ENT.ConeMax = 0.065
ENT.ConeMin = 0.015
ENT.NextAmmoGive = 0

ENT.HeatBuildShort = 0.10
ENT.HeatBuildLong = 0.045
ENT.HeatVentShort = 0.16
ENT.HeatVentLong = 0.13
ENT.HeatDecayShort = 0.1
ENT.HeatDecayLong = 0.01
ENT.HeatInitialLong = 0.05

ENT.WalkSpeed = SPEED_SLOWEST * 0.9
ENT.FireAnimSpeed = 0.24
ENT.FireSoundPitch = 125

function ENT:StopGluonSounds()
end

local function RefreshTurretOwners(pl)
	for _, ent in pairs(ents.FindByClass("prop_laser_turret")) do
		if ent:IsValid() and ent:GetObjectOwner() == pl then
			ent:ClearObjectOwner()
			ent:ClearTarget()
		end
	end
end
hook.Add("PlayerDisconnected", "GunTurret.PlayerDisconnected", RefreshTurretOwners)
hook.Add("PlayerChangedTeam", "GunTurret.PlayerChangedTeam", RefreshTurretOwners)

function ENT:Initialize()
	self:SetModel("models/combine_turrets/floor_turret.mdl")
	self:SetAngles(self:GetAngles())
	self:SetModelScale(1)
	self:PhysicsInit(SOLID_VPHYSICS)

	self:SetUseType(SIMPLE_USE)

	local phys = self:GetPhysicsObject()
	if phys:IsValid() then
		phys:SetMass(50)
		phys:EnableMotion(false)
		phys:Wake()
	end

	self:SetAmmo(0)
	self:SetMaxObjectHealth(460)
	self:SetObjectHealth(self:GetMaxObjectHealth())
	hook.Add("SetupPlayerVisibility", self, self.SetupPlayerVisibility)


	timer.Simple(0, function() self:SetPos(self:GetPos() - Vector(0,0,15)) end)
	local owner = self:GetObjectOwner()
	local timediff = owner.GluonInactiveTime and CurTime() - owner.GluonInactiveTime or 0
	self:SetShortHeat(math.Clamp((owner.ShortGluonHeat or 0) - timediff * self.HeatDecayShort, 0, 1))
	self:SetLongHeat(math.Clamp((owner.LongGluonHeat or 0) - timediff * self.HeatDecayLong, 0, 1))
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

local function BulletCallback2(attacker, tr, dmginfo)
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
function ENT:StartFireSound()
	self:EmitSound("ambient/machines/teleport1.wav", 75, 210)
end
function ENT:SetGunState(state)
	self:SetDTInt(1, state)
end

function ENT:GetGunState(state)
	return self:GetDTInt(1)
end

function ENT:SetAltUsage(usage)
	self:SetDTBool(1, usage)
end

function ENT:GetAltUsage()
	return self:GetDTBool(1)
end

function ENT:SetShortHeat(heat)
	self:SetDTFloat(8, heat)
end

function ENT:GetShortHeat()
	return self:GetDTFloat(8)
end

function ENT:SetLongHeat(heat)
	self:SetDTFloat(9, heat)
end

function ENT:GetLongHeat()
	return self:GetDTFloat(9)
end
function ENT:ManageHeat()
	local owner = self:GetOwner()
	if owner and owner:IsValid() then
		local frametime = FrameTime()
		if self:GetGunState() == 1 then
			self.FiringSound:PlayEx(1, self.FireSoundPitch + CurTime() % 1)
			self:SetShortHeat(math.min(self:GetShortHeat() + frametime * self.HeatBuildShort, 1))
			self:SetLongHeat(math.min(self:GetLongHeat() + frametime * self.HeatBuildLong, 1))

			if CLIENT then owner.GunSway = true end
		elseif self:GetGunState() == 2 then
			self.FiringSound:Stop()
			if CLIENT then
				owner.GunSway = false
				self.VentingSound:PlayEx(1, 55 + CurTime() % 1)
			end

			local frametimeadj = frametime * self:GetReloadSpeedMultiplier()

			self:SetShortHeat(math.max(self:GetShortHeat() - frametimeadj * self.HeatVentShort, 0))
			self:SetLongHeat(math.max(self:GetLongHeat() - frametimeadj * self.HeatVentLong, 0))
			self:SetNextFire(CurTime() + 0.25)

			if self:GetLongHeat() == 0 and self:GetShortHeat() < self.HeatBuildShort then
				self:SetGunState(0)
				self:EmitSound("npc/scanner/combat_scan3.wav", 65, 90)
			end
		else
			owner.GunSway = false
			self:StopGluonSounds()
			self:SetShortHeat(math.max(self:GetShortHeat() - frametime * self.HeatDecayShort, 0))
			self:SetLongHeat(math.max(self:GetLongHeat() - frametime * self.HeatDecayLong, 0))
		end
	else
		self:StopGluonSounds()
	end
end
ENT.LastCharge = 0
local function DoRicochet(attacker, hitpos, hitnormal, normal, damage, call)
	attacker:FireBullets({Num = 1, Src = hitpos, Dir =  2 * hitnormal * hitnormal:Dot(normal * -1) + normal, Spread = Vector(0, 0, 0), Tracer = 1, TracerName = 'tracer_interception', Force = 1, Damage = damage, Callback = call})
end
local function DoTrace(attacker, hitpos, hitnormal, normal, damage, call, ent)
	attacker:FireBullets({Num = 1, Src = hitpos, Dir = normal, Spread = Vector(0, 0, 0), Tracer = 1, TracerName = 'tracer_interception', Force = 1, Damage = damage, Callback = call,IgnoreEntity = ent})
end
function  ENT.BulletCallback(attacker, tr, dmginfo)
	local ent = tr.Entity 
	local hitpos, hitnormal, normal, dmg= tr.HitPos, tr.HitNormal, tr.Normal, dmginfo:GetDamage()
	local inf = dmginfo:GetInflictor()
	if inf and !inf.AntiCrash  then
		inf.AntiCrash = 0
	end
	if inf.AntiCrash > 15 then
		return
	end
	if ent and ent:IsValid() and ent:GetClass() == 'prop_ffemitterfield' and inf.Traced then
		timer.Simple(0, function() 
			DoRicochet(attacker, hitpos, hitnormal, normal, dmg,inf.BulletCallback) 
		end)
		inf.AntiCrash = inf.AntiCrash + 1
	elseif ent and ent:IsValid() then
		inf.AntiCrash = inf.AntiCrash + 1
		if !inf.Traced then
			inf.Traced = true
			if  ent:GetClass() == 'prop_ffemitterfield' then
				dmg = dmg*0.7
			end
		end
		timer.Simple(0, function() 
			DoTrace(attacker, hitpos, hitnormal, normal, dmg, inf.BulletCallback, ent) 
		end)
	end
	BulletCallback2(attacker, tr, dmginfo)
end
ENT.AntiCrash = 0
function ENT:FireTurret(src, dir)
	if self:GetNextFire() <= CurTime() then
		local curammo = self:GetAmmo()
		if curammo > 0 then
			self:UpdateCone()
			local owner  = self:GetObjectOwner()
			local upgrade = self:GetUpgrade()
			self:SetNextFire(CurTime() + 0.07)
			self.LastCharge = CurTime() + 2
			self:SetAmmo(curammo - (1 + upgrade*1.5))
			self:StartBulletKnockback()
			self:PlayShootSound()
			self.Traced = false
			self:FireBullets({Num = 1, Src = src, Dir = dir, Spread = Vector(0, 0, 0), Tracer = 1,TracerName = 'tracer_interception', Force = 1, Damage = self.BaseDamageST +upgrade*3, Callback = self.BulletCallback, IgnoreEntity = owner or nil})
			self.AntiCrash = 0
			self:DoBulletKnockback(0.01)
			self:EndBulletKnockback()
			if self:GetGunState() ~= 1 then
				if IsFirstTimePredicted() then
					self:StartFireSound()
				end
		
				-- We prevent a bit of tapping fire by doing this.
				self:SetLongHeat(math.min(self:GetLongHeat() + self.HeatInitialLong, 1))
				self:SetGunState(1)
			end
		else
			self:SetNextFire(CurTime() + 2)
			self:EmitSound("npc/turret_floor/die.wav")
		end
	end
end
function ENT:Think()
	if self.Destroyed then
		self:Remove()
		return
	end
	self:CalculatePoseAngles()

	local owner = self:GetObjectOwner()
	if self.LastCharge < CurTime() then
		self:SetAmmo(self:GetAmmo()+1)
		self.LastCharge = CurTime() + 0.1
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

	local overheat = self:GetShortHeat() + self:GetLongHeat() >= 1
	if self:GetGunState() == 1 and CurTime() >= self:GetNextFire() + 0.1 or overheat then
		self:SetGunState(overheat and 2 or 0)
		self:SetNextFire(CurTime() + 0.15)

	end

	self:ManageHeat()

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

	pl:PushPackedItem('prop_gunturret', self:GetObjectHealth(), self:GetAmmo(), self:GetUpgrade(), "laser")

	self:Remove()
end

function ENT:OnTakeDamage(dmginfo)
	self:TakePhysicsDamage(dmginfo)

	local attacker = dmginfo:GetAttacker()
	if not (attacker:IsValid() and attacker:IsPlayer() and self:GetObjectOwner():IsPlayer() and attacker:Team() == self:GetObjectOwner():Team()) then
		self:ResetLastBarricadeAttacker(attacker, dmginfo)
		self:SetObjectHealth(self:GetObjectHealth() - dmginfo:GetDamage())
	end
end
