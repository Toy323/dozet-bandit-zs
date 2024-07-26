AddCSLuaFile()

if CLIENT then
	SWEP.TranslateName = "weapon_axed_name"
	SWEP.TranslateDesc = "weapon_axed_desc"
	SWEP.ViewModelFOV = 55
	SWEP.ViewModelFlip = false

	SWEP.ShowViewModel = false
	SWEP.ShowWorldModel = false
	SWEP.ViewModelBoneMods = {}
	
	SWEP.SCKMaterials = {}
	
	SWEP.IronSightsPos = Vector(-0.96, 0, 0.32)
	SWEP.IronSightsAng = Vector(0, 0, 0)
	
	SWEP.VElements = {
		["blade"] = { type = "Model", model = "models/hunter/tubes/circle4x4d.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "handle", pos = Vector(-7.454, -0.59, -0.912), angle = Angle(36.55, -149.728, 48.106), size = Vector(0.053, 0.053, 0.053), color = Color(255, 255, 255, 255), surpresslightning = true, bonemerge = false, material = "models/gibs/metalgibs/metal_gibs", skin = 0, bodygroup = {} },
		["ghard"] = { type = "Model", model = "models/props_phx/construct/metal_plate_curve360x2.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "handle", pos = Vector(-8.145, 0.023, 0.011), angle = Angle(-80.069, 112.659, 111.171), size = Vector(0.015, 0.015, 0.015), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/gibs/metalgibs/metal_gibs", skin = 0, bodygroup = {} },
		["handle"] = { type = "Model", model = "models/mechanics/robotics/a3.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(2.918, 1.418, -5.034), angle = Angle(87.866, -28.588, 0), size = Vector(0.253, 0.112, 0.104), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/props/CS_militia/roofbeams03", skin = 0, bodygroup = {} },
		["holder"] = { type = "Model", model = "models/hunter/blocks/cube075x075x025.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "handle", pos = Vector(-7.47974, -0.58032, -0.95386), angle = Angle(2.08742, -179.28226, -124.07674), size = Vector(0.033, 0.041, 0.02), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/gibs/metalgibs/metal_gibs", skin = 0, bodygroup = {} }
	}
	
	SWEP.WElements = {
		["blade"] = { type = "Model", model = "models/hunter/tubes/circle4x4d.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "handle", pos = Vector(-7.454, -0.59, -0.912), angle = Angle(36.55, -149.728, 48.106), size = Vector(0.053, 0.053, 0.053), color = Color(255, 255, 255, 255), surpresslightning = true, bonemerge = false, material = "models/gibs/metalgibs/metal_gibs", skin = 0, bodygroup = {} },
		["ghard"] = { type = "Model", model = "models/props_phx/construct/metal_plate_curve360x2.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "handle", pos = Vector(-8.145, 0.023, 0.011), angle = Angle(-80.069, 109.416, 111.171), size = Vector(0.015, 0.015, 0.015), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/gibs/metalgibs/metal_gibs", skin = 0, bodygroup = {} },
		["handle"] = { type = "Model", model = "models/mechanics/robotics/a3.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(2.918, 1.418, -5.034), angle = Angle(87.866, -28.588, 0), size = Vector(0.253, 0.112, 0.104), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/props/CS_militia/roofbeams03", skin = 0, bodygroup = {} },
		["holder"] = { type = "Model", model = "models/hunter/blocks/cube075x075x025.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "handle", pos = Vector(-7.48, -0.58, -0.954), angle = Angle(2.087, -179.282, -124.077), size = Vector(0.033, 0.041, 0.02), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/gibs/metalgibs/metal_gibs", skin = 0, bodygroup = {} }
	}
end
	SWEP.ViewModel = "models/weapons/c_stunstick.mdl"
	SWEP.WorldModel = "models/weapons/w_stunbaton.mdl"

SWEP.MeleeDamage = 60
SWEP.MeleeRange = 44	
SWEP.MeleeSize = 1.5
SWEP.MeleeKnockBack = 32
if USE_NEW_MELEE_BASE then
	SWEP.Base = "weapon_zs_basemelee_new"	
	
	SWEP.MeleeDamage = 22
	SWEP.Attacks_Per_Swung = 3
	SWEP.OverPosition =  {12,1,12}
	SWEP.Additionalism =  {0,0,-12}
else
	SWEP.Base = "weapon_zs_basemelee"
end

SWEP.UseHands = true

SWEP.HoldType = "melee2"

SWEP.Stamina = 22

SWEP.Primary.Delay = 0.8
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

