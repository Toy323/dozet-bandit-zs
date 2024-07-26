AddCSLuaFile()


SWEP.HoldType = "melee"
SWEP.ViewModelFOV = 75
SWEP.ViewModelFlip = false
SWEP.ViewModel = "models/weapons/c_crowbar.mdl"
SWEP.WorldModel = "models/weapons/w_crowbar.mdl"
SWEP.ShowViewModel = false
SWEP.ShowWorldModel = false
SWEP.ViewModelBoneMods = {
	["ValveBiped.Bip01_Spine4"] = { scale = Vector(1, 1, 1), pos = Vector(-6.467, -2.515, 2.515), angle = Angle(0, 0, 0) }
}

SWEP.SCKMaterials = {"cs_assault/concretefloor026a",}

SWEP.IronSightsPos = Vector(0.64, 0, 4.76)
SWEP.IronSightsAng = Vector(0, 0, 0)

if CLIENT then
	SWEP.TranslateName = "weapon_murasama_name"
	SWEP.TranslateDesc = "weapon_murasama_desc"
	SWEP.VElements = {
		["hand"] = { type = "Model", model = "models/props_junk/wood_pallet001a_chunka1.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(1.485, 2.614, 2.876), angle = Angle(0, 0, -89.521), size = Vector(0.626, 0.331, 0.256), color = Color(74, 70, 70, 255), surpresslightning = false, material = "cs_assault/concretefloor026a", skin = 0, bodygroup = {} },
		["sword"] = { type = "Model", model = "models/props_junk/vent001_chunk6.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(1.515, 2.458, -26.795), angle = Angle(0, -103.084, 89.944), size = Vector(0.5, 2.743, 0.237), color = Color(255, 0, 0, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} }
	}
	
	SWEP.WElements = {
		["hand"] = { type = "Model", model = "models/props_junk/wood_pallet001a_chunka1.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(3.695, 2.216, 2.505), angle = Angle(0, 0, -89.521), size = Vector(0.5, 0.305, 0.384), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["sword"] = { type = "Model", model = "models/props_junk/vent001_chunk6.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(3.601, 2.219, -22.263), angle = Angle(0, -103.084, 89.944), size = Vector(0.5, 2.743, 0.237), color = Color(255, 0, 0, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} }
	}

      SWEP.ShowViewModel = false
      SWEP.ShowWorldModel = false

end

SWEP.Base = "weapon_zs_basemelee"

SWEP.MeleeDamage = 45
SWEP.MeleeRange = 111
SWEP.MeleeSize = 3
SWEP.MeleeKnockBack = 210

SWEP.WalkSpeed = SPEED_SLOWER


SWEP.SwingTime = 0.10
SWEP.SwingRotation = Angle(0, -20, -40)
SWEP.SwingOffset = Vector(10, 0, 0)
SWEP.SwingHoldType = "melee"

SWEP.HitDecal = "Manhackcut"


function SWEP:PlaySwingSound()
	self:EmitSound("weapons/iceaxe/iceaxe_swing1.wav", 75, math.random(65, 70))
end

function SWEP:PlayHitSound()
	self:EmitSound("weapons/melee/golf club/golf_hit-0"..math.random(4)..".ogg")
end

function SWEP:PlayHitFleshSound()
	self:EmitSound("physics/body/body_medium_break"..math.random(2, 4)..".wav")
end
function SWEP:GetRotateAttack()
	return self:GetDTFloat(12)
end
function SWEP:SetRotateAttack(num)
	self:SetDTFloat(12,num)
end
function SWEP:RotateAttack()

end
function SWEP:Holster()
	return self:GetRotateAttack() < CurTime() 
end
SWEP._SoundNext = 0
function SWEP:HaveAbility()
	if self:GetRotateAttack() + 6 > CurTime() then return end
	self:SetNextSecondaryFire(CurTime() + 6)
	self:SetRotateAttack(CurTime() + 4)
	self._OldD = self.SwingHoldType
	self:SetHoldType("revolver")
	self:SetWeaponSwingHoldType("revolver")
	timer.Simple(4, function(arguments)
		if self:IsValid() then
			self:SetHoldType(self.SwingHoldType)
			self:SetWeaponSwingHoldType( self.SwingHoldType)
		end
	end)
	if CLIENT then return end
	local bruh = self:GetOwner():GiveStatus("murasama_ro")
	bruh:AddTime(4)
end
function SWEP:Think()
	self.BaseClass.Think(self)
	local owner = self:GetOwner()
	if self:GetRotateAttack() > CurTime() then
		owner:SetEyeAngles(Angle(0,CurTime()*610,0))
		if self._SoundNext < CurTime() then
			self._SoundNext = CurTime() + 0.4
			self:EmitSound('physics/metal/sawblade_stick'..math.random(1, 3)..'.wav', nil,math.Rand(65,90))
		end

	end
end
function SWEP:PlayerHitUtil(owner, damage, hitent, dmginfo)
	if SERVER then
		if hitent:WouldDieFrom(damage, dmginfo:GetDamagePosition()) then
            owner:SetHealth(owner:Health()+hitent:Health() * 0.5)	
		else
            owner:SetHealth(owner:Health()+hitent:Health() * 0.05)	
		end
	end
end
if CLIENT then 
	SWEP._CacheW = SWEP.WElements
	function SWEP:DrawWorldModel()
		local owner = self:GetOwner()
		if !owner:IsValid() then return end
		local weles = self.WElements
		if self:GetRotateAttack() > CurTime()  then
			weles["hand"].angle = Angle(0,90,0)
			weles["hand"].pos = Vector(0,0,0)
			weles["sword"].angle = Angle(0,90,0)
			weles["sword"].pos = Vector(30,0,0)
		else
			weles["sword"].angle =  self._CacheW["sword"].angle
			weles["sword"].pos =  self._CacheW["sword"].pos
			weles["hand"].angle =  self._CacheW["hand"].angle
			weles["hand"].pos = self._CacheW["hand"].pos
		end
		self:Anim_DrawWorldModel()
	end
end