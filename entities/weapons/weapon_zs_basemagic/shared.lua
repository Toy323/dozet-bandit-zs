if SERVER then
	AddCSLuaFile("shared.lua")
	AddCSLuaFile("animations.lua")
end
SWEP.Base = "weapon_zs_base"
SWEP.Primary.Sound = Sound("ambient/explosions/explode_9.wav")
SWEP.DryFireSound = Sound("Weapon_Pistol.Empty")
SWEP.Primary.Damage = 30
SWEP.Primary.KnockbackScale = 1
SWEP.Primary.NumShots = 1
SWEP.Primary.Delay = 0.15


SWEP.CSMuzzleFlashes = true

SWEP.Primary.Automatic = false
SWEP.Primary.ArmorBleed = 10
SWEP.RequiredClip = 1
SWEP.ArmorRegen = 1

SWEP.Secondary.ClipSize = 1
SWEP.Secondary.DefaultClip = 1
SWEP.Secondary.Automatic = false
SWEP.Secondary.Ammo = "dummy"

SWEP.WalkSpeed = SPEED_NORMAL

SWEP.HoldType = "pistol"
SWEP.IronSightsHoldType = "ar2"

SWEP.IronSightsPos = Vector(0, 0, 0)

SWEP.EmptyWhenPurchased = true
SWEP.AllowQualityWeapons = true


SWEP.ReloadSpeed = 1.0
SWEP.FireAnimSpeed = 1.0

SWEP.IdleActivity = ACT_VM_IDLE

SWEP.Weight = 5


function SWEP:PrimaryAttack()
	local owner = self:GetOwner()
	if not owner:IsValid() then return end

	if not self:CanPrimaryAttack() then return end

	
    if owner:GetBloodArmor() > 0 and self.Primary.ArmorBleed <= owner:GetBloodArmor() then
   		self:SetNextPrimaryFire(CurTime() + self:GetFireDelay())
   		self:EmitFireSound()
		if SERVER then
			owner:SetBloodArmor(math.min(owner:GetBloodArmor() - self.Primary.ArmorBleed))
	   		self:ShootBullets(self.Primary.Damage + (owner:GetBloodArmor() * 2.5), self.Primary.NumShots, self:GetCone())
			self.IdleAnimation = CurTime() + self:SequenceDuration()
		end
	elseif owner:GetBloodArmor() < self.Primary.ArmorBleed then
		self:SetNextPrimaryFire(CurTime() + self:GetFireDelay())

		self:EmitFireSound()
		self:ShootBullets(self.Primary.Damage + (owner:GetBloodArmor() * 2.5), self.Primary.NumShots, self:GetCone())
		self.IdleAnimation = CurTime() + self:SequenceDuration()
		if SERVER then
			owner:TakeDamage(self.Primary.ArmorBleed)
		end
	end
end

function SWEP:SecondaryAttack()
	local owner = self:GetOwner()
	
	if self:GetNextSecondaryFire() <= CurTime() and not self:GetOwner():IsHolding() and self:GetReloadFinish() == 0 then
		if not owner:IsValid() then return end
		if owner:GetBloodArmor() < 100 then
			if SERVER then
				owner:SetBloodArmor(math.min(owner:GetBloodArmor() + self.ArmorRegen))
			end
		end
	end
end

function SWEP:EmitFireSound()
	self:EmitSound(self.Primary.Sound)
end

