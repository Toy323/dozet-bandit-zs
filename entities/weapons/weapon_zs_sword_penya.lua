AddCSLuaFile()

if CLIENT then
	SWEP.TranslateName = "weapon_lampmelee_name"
	SWEP.TranslateDesc = "weapon_lampmelee_desc"

	SWEP.ViewModelFOV = 65
	SWEP.ViewModelFlip = false

	SWEP.ShowViewModel = false
	SWEP.ShowWorldModel = false
	SWEP.VElements = {
		["2"] = { type = "Model", model = "models/hunter/plates/plate075x2.mdl", bone = "v_weapon.knife_Parent", rel = "", pos = Vector(2.5, -10.4, 2.099), angle = Angle(-59.611, -10.52, -1.17), size = Vector(0.07, 0.159, 0.07), color = Color(255, 0, 255, 255), surpresslightning = false, material = "phoenix_storms/top", skin = 0, bodygroup = {} },
		["1"] = { type = "Model", model = "models/hunter/tubes/circle2x2.mdl", bone = "v_weapon.knife_Parent", rel = "", pos = Vector(0.699, -2.981, 2.7), angle = Angle(-99.351, -8.183, 97.013), size = Vector(0.041, 0.041, 0.041), color = Color(0, 63, 0, 255), surpresslightning = false, material = "phoenix_storms/potato", skin = 0, bodygroup = {} },
		["РУКОЯТЬ"] = { type = "Model", model = "models/hunter/tubes/tube2x2x4.mdl", bone = "v_weapon.knife_Parent", rel = "", pos = Vector(0.518, -0.519, 2.596), angle = Angle(12.857, -3.507, -85.325), size = Vector(0.019, 0.019, 0.019), color = Color(255, 255, 255, 255), surpresslightning = false, material = "phoenix_storms/tray", skin = 0, bodygroup = {} }
	}
	SWEP.WElements = {
		["2"] = { type = "Model", model = "models/hunter/plates/plate075x2.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(2.9, 2.599, -23), angle = Angle(0, 0, 87.662), size = Vector(0.07, 0.4, 0.07), color = Color(255, 0, 255, 255), surpresslightning = false, material = "phoenix_storms/top", skin = 0, bodygroup = {} },
		["1"] = { type = "Model", model = "models/hunter/tubes/circle2x2.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(2.558, 1.7, -3.997), angle = Angle(0, 0, 0), size = Vector(0.041, 0.041, 0.041), color = Color(0, 63, 0, 255), surpresslightning = false, material = "phoenix_storms/potato", skin = 0, bodygroup = {} },
		["РУКОЯТЬ"] = { type = "Model", model = "models/hunter/tubes/tube2x2x4.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(2.596, 1.557, -1.201), angle = Angle(0, 0, 0), size = Vector(0.019, 0.019, 0.029), color = Color(255, 255, 255, 255), surpresslightning = false, material = "phoenix_storms/tray", skin = 0, bodygroup = {} }
	}
end

SWEP.Base = "weapon_zs_basemelee"

SWEP.ViewModel = "models/weapons/v_knife_t.mdl"
SWEP.WorldModel = "models/props_interiors/Furniture_Lamp01a.mdl"
SWEP.UseHands = false

SWEP.HoldType = "melee2"

SWEP.DamageType = DMG_CLUB

SWEP.Stamina = 19

SWEP.MeleeDamage = 43
SWEP.MeleeRange = 66
SWEP.MeleeSize = 2

SWEP.Primary.Delay = 0.95

SWEP.WalkSpeed = SPEED_SLOW

SWEP.SwingRotation = Angle(0, -90, -60)
SWEP.SwingOffset = Vector(0, 30, -40)
SWEP.SwingTime = 0.5
SWEP.SwingHoldType = "melee"
SWEP.HitDecal = "Manhackcut"

function SWEP:PlaySwingSound()
	self:EmitSound("weapons/knife/knife_slash"..math.random(2)..".wav")
end

function SWEP:PlayHitSound()
	self:EmitSound("weapons/knife/knife_hitwall1.wav")
end

function SWEP:PlayHitFleshSound()
	self:EmitSound("weapons/knife/knife_hit"..math.random(4)..".wav")
end