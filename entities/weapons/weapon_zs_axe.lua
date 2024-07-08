AddCSLuaFile()

if CLIENT then
	SWEP.TranslateName = "weapon_axe_name"
	SWEP.TranslateDesc = "weapon_axe_desc"
	SWEP.ViewModelFOV = 55
	SWEP.ViewModelFlip = false

	SWEP.ShowViewModel = false
	SWEP.ShowWorldModel = false
	SWEP.VElements = {
		["base"] = { type = "Model", model = "models/props/cs_militia/axe.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(3, 1.299, -4), angle = Angle(0, 0, 90), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} }
	}
	SWEP.WElements = {
		["base"] = { type = "Model", model = "models/props/cs_militia/axe.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(3, 1.399, -4), angle = Angle(0, 0, 90), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} }
	}
end

SWEP.MeleeDamage = 80
SWEP.MeleeRange = 55
SWEP.MeleeSize = 1.5
SWEP.MeleeKnockBack = 32
if USE_NEW_MELEE_BASE then
	SWEP.Base = "weapon_zs_basemelee_new"	
	
	SWEP.MeleeDamage = 17
	SWEP.Attacks_Per_Swung = 5
	SWEP.OverPosition =  {12,1,21}
	SWEP.Additionalism =  {-3,-1.8,-8}
else
	SWEP.Base = "weapon_zs_basemelee"
end

SWEP.ViewModel = "models/weapons/c_stunstick.mdl"
SWEP.WorldModel = "models/props/cs_militia/axe.mdl"
SWEP.UseHands = true

SWEP.HoldType = "melee2"

SWEP.Stamina = 33

SWEP.Primary.Delay = 1.25
SWEP.WalkSpeed = SPEED_FAST

SWEP.SwingTime = 0.6
SWEP.SwingRotation = Angle(0, -20, -40)
SWEP.SwingOffset = Vector(10, 0, 0)
SWEP.SwingHoldType = "melee"

SWEP.HitDecal = "Manhackcut"

function SWEP:PlaySwingSound()
	self:EmitSound("weapons/iceaxe/iceaxe_swing1.wav", 75, math.random(65, 70))
end

function SWEP:PlayHitSound()
	self:EmitSound("weapons/melee/golfclub/golf_hit-0"..math.random(4)..".ogg")
end

function SWEP:PlayHitFleshSound()
	self:EmitSound("physics/body/body_medium_break"..math.random(2, 4)..".wav")
end

