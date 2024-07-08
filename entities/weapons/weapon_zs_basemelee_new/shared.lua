if SERVER then
	AddCSLuaFile("shared.lua")
	AddCSLuaFile("cl_init.lua")
	AddCSLuaFile("animations.lua")
end

SWEP.ViewModel = "models/weapons/v_axe/v_axe.mdl"
SWEP.WorldModel = "models/weapons/w_axe.mdl"

SWEP.Primary.ClipSize = -1
SWEP.Primary.DefaultClip = -1
SWEP.Primary.Automatic = true
SWEP.Primary.Ammo = "none"
SWEP.Primary.Delay = 1.2
SWEP.BlockMode = nil
SWEP.Charge = true

SWEP.MeleeDamage = 30
SWEP.MeleeRange = 65
SWEP.MeleeSize = 1.5
SWEP.MeleeKnockBack = 0

SWEP.BlockVsBullet = 0.6
SWEP.BlockVsMelee = 0.3
SWEP.BlockVsDissolve = 0.5

SWEP.SpeedInBlock = 0.45
SWEP.DamageMulBlock = 0.4

SWEP.Stamina = 33


SWEP.Secondary.ClipSize = 1
SWEP.Secondary.DefaultClip = 1
SWEP.Secondary.Ammo = "dummy"
SWEP.Secondary.Automatic = true

SWEP.WalkSpeed = SPEED_FAST

SWEP.IsMelee = true
SWEP.IsFirearm = false
SWEP.CanBlock = true

SWEP.HoldType = "melee"
SWEP.SwingHoldType = "grenade"

SWEP.DamageType = DMG_SLASH

SWEP.BloodDecal = "Blood"
SWEP.HitDecal = "Impact.Concrete"
SWEP.CanBlockDamage = nil

SWEP.HitAnim = ACT_VM_HITCENTER
SWEP.MissAnim = ACT_VM_MISSCENTER

SWEP.SwingTime = 0
SWEP.SwingRotation = Angle(0, 0, 0)
SWEP.SwingOffset = Vector(0, 0, 0)

function SWEP:Initialize()
	self:SetDeploySpeed(1.1)
	self:SetWeaponHoldType(self.HoldType)
	self:SetWeaponSwingHoldType(self.SwingHoldType)

	if CLIENT then
		self:Anim_Initialize()
		if self.TranslateName then
			self.PrintName = translate.Get(self.TranslateName)
		end
	end
end
function SWEP:SetupDataTables()
	self:NetworkVar("Bool", 21, "Block")
	self:NetworkVar("Bool", 22, "ChargeBlock")
	self:NetworkVar("Float", 23, "GetAttackCharge")
	self:NetworkVar("Float", 24, "ParryTime")
end

function SWEP:SetWeaponSwingHoldType(t)
	local old = self.ActivityTranslate
	self:SetWeaponHoldType(t)
	local new = self.ActivityTranslate
	self.ActivityTranslate = old
	self.ActivityTranslateSwing = new
end

function SWEP:Deploy()
	gamemode.Call("WeaponDeployed", self:GetOwner(), self)
	self.IdleAnimation = CurTime() + self:SequenceDuration()

	return true
end

function SWEP:Think()
	if self.IdleAnimation and self.IdleAnimation <= CurTime() then
		self.IdleAnimation = nil
		self:SendWeaponAnim(ACT_VM_IDLE)
	end

	if self:IsSwinging() and self:GetSwingEnd() <= CurTime() then
		self:StopSwinging()
		self:MeleeSwing()
	end
	if self.CanBlock then
		if self:GetChargeBlock() and self:GetOwner():KeyReleased(IN_ATTACK2) then
			self:SetBlock(false)
			self:SetHoldType(self.HoldType)
			self:SetWeaponSwingHoldType(self.SwingHoldType)
			self:SetChargeBlock(false)
			self:SetParryTime(0)  
			self.UsedParry = false
		end
	end
	if self:GetParryTime() > CurTime() and SERVER and !self.UsedParry then
		local owner = self:GetOwner()
		local parry = owner:GiveStatus("parry_state")
		parry:SetTime(0.6+(owner:IsSkillActive(SKILL_PARRY_SLOW) and 0.3 or 0))
		self:SetParryTime(0)
		self.UsedParry = true
	end

	--[[if CLIENT then
		self:Anim_Think()
	end]]
end
function SWEP:Move(mv)
	if self:GetBlock() and mv:KeyDown(IN_ATTACK2) and not self:GetOwner():GetBarricadeGhosting() then
		local owner3 = self:GetOwner():IsSkillActive(SKILL_TANKIST)
		mv:SetMaxSpeed(self.WalkSpeed*(self.SpeedInBlock or 0.45)*(owner3 and 0.5 or 1))
		mv:SetMaxClientSpeed(self.WalkSpeed*(self.SpeedInBlock or 0.45)*(owner3 and 0.5 or 1))	
		mv:SetSideSpeed(mv:GetSideSpeed()*(self.SpeedInBlock or 0.45)*(owner3 and 0.5 or 1))
	end
end
function SWEP:ProcessDamage(dmginfo)
	local attacker, inflictor = dmginfo:GetAttacker(), dmginfo:GetInflictor()
	local owner = self:GetOwner()
	local attackweapon = (attacker:IsPlayer() and attacker:GetActiveWeapon() or nil)
	if attacker:IsPlayer() then
		if attacker:GetStamina() <= 45 then
			dmginfo:ScaleDamage(attacker:GetStamina()/100)
		end
		if self:GetBlock() and not (inflictor and inflictor.IgnoreDamageScaling or attackweapon and attackweapon.IgnoreDamageScaling) then
			local owner3 = owner:IsSkillActive(SKILL_TANKIST)
			if dmginfo:IsDamageType(DMG_BULLET)  then
				dmginfo:ScaleDamage(self.BlockVsBullet*(owner3 and 0 or 1))
			end
			if dmginfo:IsDamageType(DMG_CRUSH) or dmginfo:IsDamageType(DMG_SLASH) then
				dmginfo:ScaleDamage(self.BlockVsMelee*(owner3 and 0 or 1))
			end
			if dmginfo:IsDamageType(DMG_DISSOLVE) then
				attacker:TakeDamage(dmginfo:GetDamage() * self.BlockVsDissolve)
				dmginfo:ScaleDamage(self.BlockVsDissolve*(owner3 and 0 or 1))
			end
			local center = owner:LocalToWorld(owner:OBBCenter())
			local hitpos = owner:NearestPoint(dmginfo:GetDamagePosition())
			local effectdata = EffectData()
				effectdata:SetOrigin(center)
				effectdata:SetStart(owner:WorldToLocal(hitpos))
				effectdata:SetAngles((center - hitpos):Angle())
				effectdata:SetEntity(owner)
			util.Effect("shadedeflect", effectdata, true, true)
		end
		if self.CanBlockDamage and math.random(4) == 2 then
			dmginfo:ScaleDamage(0)
		end
	end
end

function SWEP:SecondaryAttack()
	if self.CanBlock then
		if self:GetNextSecondaryFire() <= CurTime() and not self:GetOwner():IsHolding() then
			self:SetBlock(true)
			self:SetHoldType("revolver")
			self:SetWeaponSwingHoldType("revolver")
			self:SetChargeBlock(true) 
			local owner = self:GetOwner()
			if owner:IsSkillActive(SKILL_PARRY_SLOW) then
				self:SetNextSecondaryFire(CurTime()+0.7)
			end
			if owner:KeyDown(IN_RELOAD) then return end
			self:SetParryTime(CurTime()+0.1)
		end
	end
end


function SWEP:Reload()
	return false
end

function SWEP:CanPrimaryAttack()
	if self:GetOwner():IsHolding() or self:GetOwner():GetBarricadeGhosting() then return false end
	return self:GetNextPrimaryFire() <= CurTime() and not self:IsSwinging()
end

function SWEP:PlaySwingSound()
	self:EmitSound("weapons/iceaxe/iceaxe_swing1.wav")
end

function SWEP:PlayStartSwingSound()
end

function SWEP:PlayHitSound()
	self:EmitSound("weapons/melee/golf club/golf_hit-0"..math.random(4)..".ogg")
end

function SWEP:PlayHitFleshSound()
	self:EmitSound("physics/body/body_medium_break"..math.random(2, 4)..".wav")
end

function SWEP:PrimaryAttack()
	if not self:CanPrimaryAttack() then return end
	self:SetNextPrimaryFire(CurTime() + (self.Primary.Delay / (self:GetOwner():IsSkillActive(SKILL_S_ANUBIS) and (GAMEMODE:GetWave() * (self:GetOwner():IsSkillActive(SKILL_S_ANUBIS_B1) and 0 or 0.04) + 0.6) or 1)) / (math.max(0.25,(math.min(self:GetOwner():GetStamina()+25,100))/100)))

	if self.SwingTime == 0  then
		self:MeleeSwing()
	else
		self:StartSwinging()
	end
end

function SWEP:Holster()
	if CurTime() >= self:GetSwingEnd() then
		if CLIENT then
			self:Anim_Holster()
		end
		self:SetBlock(false)
		return true
	end
	return false
end

function SWEP:StartSwinging()
	if self.StartSwingAnimation then
		self:SendWeaponAnim(self.StartSwingAnimation)
		self.IdleAnimation = CurTime() + self:SequenceDuration()
	end
	self:PlayStartSwingSound()
	self:SetSwingEnd(CurTime() + self.SwingTime)
end
function SWEP:DoMeleeAttackAnim()
	self:GetOwner():DoAttackEvent()
end
SWEP.Attacks_Per_Swung = 1
local function BaseSwungEffect(self, tr, owner)
	if not tr.Hit then
		if self.MissAnim then
			self:SendWeaponAnim(self.MissAnim)
		end
		if tr.Entity and tr.Entity:IsValid() then
			if !WorldVisible(tr.Entity:GetPos(), owner:EyePos()) then
				return true
			end

		end
		self.IdleAnimation = CurTime() + self:SequenceDuration()
		self:PlaySwingSound()

		if owner.MeleePowerAttackMul and owner.MeleePowerAttackMul > 1 then
			self:SetPowerCombo(0)
		end

		if self.PostOnMeleeMiss then self:PostOnMeleeMiss(tr) end

		return true
	end
end
local function BaseSwung(self, tr, owner)
	local damagemultiplier = 1 
	owner.MissTimes = 0
	 
	local hitent = tr.Entity
	local hitflesh = tr.MatType == MAT_FLESH or tr.MatType == MAT_BLOODYFLESH or tr.MatType == MAT_ANTLION or tr.MatType == MAT_ALIENFLESH

	if self.HitAnim then
		self:SendWeaponAnim(self.HitAnim)
	end
	self.IdleAnimation = CurTime() + self:SequenceDuration()

	if hitflesh then
		util.Decal(self.BloodDecal, tr.HitPos + tr.HitNormal, tr.HitPos - tr.HitNormal)
		self:PlayHitFleshSound()

		if not self.NoHitSoundFlesh then
			self:PlayHitSound()
		end
	else
		--util.Decal(self.HitDecal, tr.HitPos + tr.HitNormal, tr.HitPos - tr.HitNormal)
		self:PlayHitSound()
	end

	if self.OnMeleeHit and self:OnMeleeHit(hitent, hitflesh, tr) then
		return
	end


	self:MeleeHitEntity(tr, hitent, damagemultiplier)

	if self.PostOnMeleeHit then self:PostOnMeleeHit(hitent, hitflesh, tr) end
end
SWEP.OverPosition =  {0,0,11}
SWEP.Additionalism =  {0,-0.8,-11}

local function doemit( self, pos )
	if SERVER or !pos then return end
    local dsh = 2
    local emitter = ParticleEmitter( pos )
    emitter:SetNearClip(24, 32)
    local particle = emitter:Add("effects/blood2", pos )
    if particle then
        particle:SetDieTime(1)
        particle:SetStartSize( math.Rand( 1, 2 ) + ( dsh * 1.5 ) )
        particle:SetEndSize(0)
        particle:SetColor( math.random( 255 ), 140, 255 )
        particle:SetStartAlpha( 255 )
        particle:SetEndAlpha( 50 )
        particle:SetRoll( math.random( 0, 360 ) )
        particle:SetGravity( Vector( 0, 0, 0 ) )
    end

end
function SWEP:MeleeSwing()
	local owner = self:GetOwner()
	if !self.NoUseStamina then
		local formula = -(self.Stamina or 10)*((self:GetBlock() and 2 or 1)*(owner:GetVelocity():LengthSqr() <= 15600 and 0.65 or 1))
		timer.Simple(0, function() owner:AddStamina(formula) end)
	end

	local aps = self.Attacks_Per_Swung or 0

	--if SERVER and aps > 0  then owner:StartDamageNumberSession() end

	local distance = (self.MeleeRange * (owner.MeleeRangeMul or 1))/(aps+1)

	self.SwingingTrue = false
	owner:ResetSpeed()
	self:DoMeleeAttackAnim()
	local vec = owner:GetAimVector():Angle()

	local up, right, forward = vec:Up(),vec:Right(),vec:Forward()--owner:GetUp(),owner:GetRight(),owner:GetForward()

	local newpos = self.LastHitPos or owner:GetShootPos()
	local ovious = self.OverPosition or vector_base
	local additional = self.Additionalism or vector_base
	local rotate = right*ovious[1]+forward*ovious[2]+up*ovious[3]
	local addling = right*additional[1]+forward*additional[2]+up*additional[3]
	for i=0,aps do
		rotate = rotate + addling
		local tr = owner:CompensatedMeleeTrace(distance, self.MeleeSize, (owner:GetShootPos()+right*distance*-(i-1) + (forward*distance*((i > math.Round(aps/2) and (-i+aps/1.5)+i/2 or i)))+forward*distance*(aps/2))+rotate, right)
		--print(tr.HitPos)
		self.LastHitPos = tr.HitPos
		newpos = tr.HitPos
		
		doemit(self, self.LastHitPos)
		if BaseSwungEffect(self, tr, owner) then continue  end
		
		BaseSwung(self, tr, owner)
	end
	local tr2 = owner:CompensatedMeleeTrace(distance*(aps+1), self.MeleeSize)
	doemit(self, tr2.HitPos)
	self.LastHitPos = nil
	if !BaseSwungEffect(self, tr2, owner) then 	BaseSwung(self, tr2, owner)  end

end

function SWEP:MeleeHitEntity(tr, hitent, damagemultiplier)
	if not IsFirstTimePredicted() then return end
	if self.MeleeFlagged then self.IsMelee = true end
	
	local owner = self:GetOwner()
	local damage = (self:GetBlock() and self.MeleeDamage * 0.4 or self.MeleeDamage) * damagemultiplier
	local dmginfo = DamageInfo()
	dmginfo:SetDamagePosition(tr.HitPos)
	dmginfo:SetAttacker(owner)
	dmginfo:SetInflictor(self)
	dmginfo:SetDamageType(self.DamageType)
	dmginfo:SetDamage(damage)
	dmginfo:SetDamageForce(math.min(self.MeleeDamage, 50) * 50 * owner:GetAimVector())
	if !self.NoUseStamina then
		timer.Simple(0, function() owner:AddStamina(-(self.Stamina or 20) * 0.3) end)
	end

	local vel
	if hitent:IsPlayer() then
		self:PlayerHitUtil(owner, damage, hitent, dmginfo)
		if SERVER then
			if tr.HitGroup == HITGROUP_HEAD then
				hitent:SetWasHitInHead()
			end
			if hitent:WouldDieFrom(damage, tr.HitPos) then
				dmginfo:SetDamageForce(math.min(self.MeleeDamage, 50) * 400 * owner:GetAimVector())
			end
			if owner:IsSkillActive(SKILL_RAGDOG) and owner:GetStamina() >= 60 then
				if hitent:GetActiveWeapon().IsMelee and hitent:GetActiveWeapon():GetBlock() and math.random(0,100) <= 35 then
					owner:GiveStatus("knockdown",3)
				end
				if math.random(0,100) <= 20 then
					hitent:GiveStatus("knockdown",2)
				end
			end
		end
		vel = hitent:GetVelocity()
	end
	self:PostHitUtil(owner, hitent, dmginfo, tr, vel)
end

function SWEP:PostHitUtil(owner, hitent, dmginfo, tr, vel)
	hitent:DispatchTraceAttack(dmginfo, tr, owner:GetAimVector())
	if vel then
		hitent:SetLocalVelocity(vel)
	end

	-- Perform our own knockback vs. players
	if hitent:IsPlayer() then
		local knockback = self.MeleeKnockBack
		if knockback > 0 or owner:IsSkillActive(SKILL_WHEE_WHEE) then
			hitent:ThrowFromPositionSetZ(tr.StartPos, knockback + (owner:IsSkillActive(SKILL_WHEE_WHEE) and 900 or 1), nil, true)
		end
	end

	local effectdata = EffectData()
	effectdata:SetOrigin(tr.HitPos)
	effectdata:SetStart(tr.StartPos)
	effectdata:SetNormal(tr.HitNormal)
	util.Effect("RagdollImpact", effectdata)
	if not tr.HitSky then
		effectdata:SetSurfaceProp(tr.SurfaceProps)
		effectdata:SetDamageType(self.FakeDamageType and self.FakeDamageType or self.DamageType)
		effectdata:SetHitBox(tr.HitBox)
		effectdata:SetEntity(hitent)
		util.Effect("Impact", effectdata)
	end
	if self.MeleeFlagged then self.IsMelee = nil end
end

function SWEP:PlayerHitUtil(owner, damage, hitent, dmginfo)
	hitent:MeleeViewPunch(damage*0.1)
end

function SWEP:StopSwinging()
	self:SetSwingEnd(0)
end

function SWEP:IsSwinging()
	return self:GetSwingEnd() > 0
end

function SWEP:SetSwingEnd(swingend)
	self:SetDTFloat(0, swingend)
end

function SWEP:GetSwingEnd()
	return self:GetDTFloat(0)
end

local ActIndex = {
	[ "pistol" ] 		= ACT_HL2MP_IDLE_PISTOL,
	[ "smg" ] 			= ACT_HL2MP_IDLE_SMG1,
	[ "grenade" ] 		= ACT_HL2MP_IDLE_GRENADE,
	[ "ar2" ] 			= ACT_HL2MP_IDLE_AR2,
	[ "shotgun" ] 		= ACT_HL2MP_IDLE_SHOTGUN,
	[ "rpg" ]	 		= ACT_HL2MP_IDLE_RPG,
	[ "physgun" ] 		= ACT_HL2MP_IDLE_PHYSGUN,
	[ "crossbow" ] 		= ACT_HL2MP_IDLE_CROSSBOW,
	[ "melee" ] 		= ACT_HL2MP_IDLE_MELEE,
	[ "slam" ] 			= ACT_HL2MP_IDLE_SLAM,
	[ "normal" ]		= ACT_HL2MP_IDLE,
	[ "fist" ]			= ACT_HL2MP_IDLE_FIST,
	[ "melee2" ]		= ACT_HL2MP_IDLE_MELEE2,
	[ "passive" ]		= ACT_HL2MP_IDLE_PASSIVE,
	[ "knife" ]			= ACT_HL2MP_IDLE_KNIFE,
	[ "duel" ]      	= ACT_HL2MP_IDLE_DUEL,
	[ "revolver" ]		= ACT_HL2MP_IDLE_REVOLVER,
	[ "camera" ]		= ACT_HL2MP_IDLE_CAMERA
}

function SWEP:SetWeaponHoldType( t )

	t = string.lower( t )
	local index = ActIndex[ t ]
	
	if ( index == nil ) then
		Msg( "SWEP:SetWeaponHoldType - ActIndex[ \""..t.."\" ] isn't set! (defaulting to normal)\n" )
		t = "normal"
		index = ActIndex[ t ]
	end

	self.ActivityTranslate = {}
	self.ActivityTranslate [ ACT_MP_STAND_IDLE ] 				= index
	self.ActivityTranslate [ ACT_MP_WALK ] 						= index+1
	self.ActivityTranslate [ ACT_MP_RUN ] 						= index+2
	self.ActivityTranslate [ ACT_MP_CROUCH_IDLE ] 				= index+3
	self.ActivityTranslate [ ACT_MP_CROUCHWALK ] 				= index+4
	self.ActivityTranslate [ ACT_MP_ATTACK_STAND_PRIMARYFIRE ] 	= index+5
	self.ActivityTranslate [ ACT_MP_ATTACK_CROUCH_PRIMARYFIRE ] = index+5
	self.ActivityTranslate [ ACT_MP_RELOAD_STAND ]		 		= index+6
	self.ActivityTranslate [ ACT_MP_RELOAD_CROUCH ]		 		= index+6
	self.ActivityTranslate [ ACT_MP_JUMP ] 						= index+7
	self.ActivityTranslate [ ACT_RANGE_ATTACK1 ] 				= index+8
	self.ActivityTranslate [ ACT_MP_SWIM_IDLE ] 				= index+8
	self.ActivityTranslate [ ACT_MP_SWIM ] 						= index+9
	
	-- "normal" jump animation doesn't exist
	if t == "normal" then
		self.ActivityTranslate [ ACT_MP_JUMP ] = ACT_HL2MP_JUMP_SLAM
	end
	
	-- these two aren't defined in ACTs for whatever reason
	if t == "knife" or t == "melee2" then
		self.ActivityTranslate [ ACT_MP_CROUCH_IDLE ] = nil
	end
end

SWEP:SetWeaponHoldType("melee")

function SWEP:TranslateActivity( act )
	if self:GetSwingEnd() ~= 0 and self.ActivityTranslateSwing[act] then
		return self.ActivityTranslateSwing[act] or -1
	end

	return self.ActivityTranslate and self.ActivityTranslate[act] or -1
end
