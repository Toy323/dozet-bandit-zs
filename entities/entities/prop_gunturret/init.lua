AddCSLuaFile("cl_init.lua")
AddCSLuaFile("shared.lua")

include("shared.lua")

ENT.LastHitSomething = 0
ENT.ConeAdder = 0
ENT.ConeMax = 0.065
ENT.ConeMin = 0.015
ENT.NextAmmoGive = 0

local function RefreshTurretOwners(pl)
	for _, ent in pairs(ents.FindByClass("prop_gunturret")) do
		if ent:IsValid() and ent:GetObjectOwner() == pl then
			ent:ClearObjectOwner()
			ent:ClearTarget()
		end
	end
end
hook.Add("PlayerDisconnected", "GunTurret.PlayerDisconnected", RefreshTurretOwners)
hook.Add("PlayerChangedTeam", "GunTurret.PlayerChangedTeam", RefreshTurretOwners)

function ENT:Initialize()
	self:SetModel("models/Combine_turrets/Floor_turret.mdl")
	self:PhysicsInit(SOLID_VPHYSICS)

	self:SetUseType(SIMPLE_USE)

	local phys = self:GetPhysicsObject()
	if phys:IsValid() then
		phys:SetMass(50)
		phys:EnableMotion(false)
		phys:Wake()
	end

	self:SetAmmo(self.DefaultAmmo)
	self:SetMaxObjectHealth(300)
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

function ENT:FireTurret(src, dir)
	if self:GetNextFire() <= CurTime() then
		local curammo = self:GetAmmo()
		if curammo > 0 then
			self:UpdateCone()
			local owner  = self:GetObjectOwner()
			self:SetNextFire(CurTime() + (owner:IsSkillActive(SKILL_TURRET_BUFF) and 0.06 or 0.12))
			self:SetAmmo(curammo - 1)
			self:StartBulletKnockback()
			self:PlayShootSound()
			local upgrade = self:GetUpgrade() 
			if upgrade > 0 then
				local chance = 100 - upgrade
				if math.random(chance) <= 5 then
					local ent = ents.Create('projectile_mp1_grenade')
					if ent:IsValid() then
						ent:SetPos(self:GetPos()+Vector(0,0,50)+dir)
						ent:SetAngles(dir:Angle())
						ent:SetOwner(owner)
						ent:Spawn()
						ent.Damage = 14
						local phys = ent:GetPhysicsObject()
						if phys:IsValid() then
							phys:Wake()
							phys:SetVelocity(dir *2300)
						end
					end
					return
				end
			end
			local da = owner:IsSkillActive(SKILL_TURRET_MAN)
			local numbers = da and (12 - upgrade) or 1
			self:FireBullets({Num = 1, Src = src, Dir = dir, Spread = Vector(self:GetCone() * numbers, self:GetCone()*numbers, 0), Tracer = 1, Force = 1, Damage = (self.BaseDamageST +upgrade)  * (da and 2 or 1), Callback = BulletCallback, IgnoreEntity = owner or nil})
			self:DoBulletKnockback(0.01)
			self:EndBulletKnockback()
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
	if self.NextAmmoGive < CurTime() and self:GetAmmo() < 300 then
		self.NextAmmoGive = CurTime() + 0.5
		self:SetAmmo(self:GetAmmo()+1)
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
		return
	end
	if self:GetUpgrade() == self.MaxUpgrades and activator == self:GetObjectOwner() then
		net.Start('zs_bounty_open')
		net.WriteTable({{'Мортира',"Кидает снаряды в врагов.Поджигает при попадании.\nЭффективно на среднем расстоянии.\nНа больших картах самый сок!","mortar"},
		{'Плазменная туррель',"Наносит невероятно сильный урон в секунду.\nЭффективно в близком расстоянии.\nПробивается сквозь защиту врага.\nВысокая трата патрон!!!","laser"}
	})
		net.WriteEntity(self)
		net.Send(activator)
	end
end

function ENT:AltUse(activator, tr)
	self:PackUp(activator)
end

function ENT:OnPackedUp(pl)
	pl:GiveEmptyWeapon("weapon_zs_gunturret")
	pl:GiveAmmo(1, "thumper")

	pl:PushPackedItem(self:GetClass(), self:GetObjectHealth(), self:GetAmmo(), self:GetUpgrade())

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
ENT.UpgradesUp = {["mortar"] = "prop_mortar",["laser"] = "prop_laser_turret"}
net.Receive("zs_bounty_add", function(length,pl)
	local who = net.ReadString()
	local ent2 = net.ReadEntity()
	if IsValid(ent2) and ent2.GetUpgrade and ent2:GetUpgrade() == ent2.MaxUpgrades and ent2.UpgradesUp[who]  and pl == ent2:GetObjectOwner() then
		local ent = ents.Create(ent2.UpgradesUp[who])
		if ent:IsValid() then
			ent:SetPos(ent2:GetPos() + Vector(0,0,19))
			ent:SetAngles(ent2:GetAngles())
			ent:Spawn()
	
			ent:SetObjectOwner(ent2:GetObjectOwner())
	
			ent:EmitSound("npc/dog/dog_servo12.wav")
	
			ent:GhostAllPlayersInMe(5)
		end
				
		ent2:Remove()
	end
end)