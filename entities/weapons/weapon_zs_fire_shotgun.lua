AddCSLuaFile()

if CLIENT then
	SWEP.TranslateName = "weapon_f_gun_name"
	SWEP.TranslateDesc = "weapon_f_gun_desc"
	SWEP.Slot = 3
	SWEP.SlotPos = 0

	SWEP.HUD3DBone = "v_weapon.aug_Parent"
	SWEP.HUD3DPos = Vector(0, -7, 3)
	SWEP.HUD3DScale = 0.025
	SWEP.HUD3DAng = Angle(0, 0, 0)
	
	SWEP.ViewModelFlip = false
	SWEP.ViewModelBoneMods = {
		["ValveBiped.Bip01_Spine4"] = { scale = Vector(1, 1, 1), pos = Vector(0, -0.209, 0), angle = Angle(0, 0, 0) },
		["v_weapon.aug_Parent"] = { scale = Vector(1, 1, 1), pos = Vector(-0.055, -0.119, 0), angle = Angle(-0.674, 10.233, 0) }
	}

	SWEP.VElements = {
		["12gauge"] = { type = "Model", model = "models/props_borealis/bluebarrel001.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "mag", pos = Vector(-0.314, -4.106, 0.016), angle = Angle(-4.543, -89.228, 90.34), size = Vector(-0.053, -0.046, -0.053), color = Color(125, 25, 25, 255), surpresslightning = false, bonemerge = false, material = "phoenix_storms/mat/mat_phx_metallic2", skin = 0, bodygroup = {} },
		["12gauge1"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "v_weapon.aug_Clip", rel = "12gauge", pos = Vector(-0.256, 0.016, -0.974), angle = Angle(-0.459, 95.257, 180), size = Vector(0.042, 0.035, 0.018), color = Color(165, 123, 5, 255), surpresslightning = false, bonemerge = false, material = "phoenix_storms/mat/mat_phx_metallic2", skin = 0, bodygroup = {} },
		["barrel"] = { type = "Model", model = "models/hunter/tubes/tube1x1x1.mdl", bone = "v_weapon.aug_Parent", rel = "base", pos = Vector(0.302, -3.602, -28.551), angle = Angle(-0.359, 93.538, 179.953), size = Vector(0.019, 0.018, 0.045), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/props_canal/metalwall005b", skin = 0, bodygroup = {} },
		["base"] = { type = "Model", model = "models/props_phx/misc/iron_beam1.mdl", bone = "v_weapon.aug_Parent", rel = "", pos = Vector(1.114, 0.029, 10.389), angle = Angle(-3.24, -3.563, 0.187), size = Vector(0.052, 0.573, 0.429), color = Color(127, 111, 63, 255), surpresslightning = false, bonemerge = false, material = "models/props_canal/metalwall005b", skin = 0, bodygroup = {} },
		["base1"] = { type = "Model", model = "models/props_phx/misc/iron_beam1.mdl", bone = "v_weapon.aug_Parent", rel = "base", pos = Vector(0.156, -4.984, -12.358), angle = Angle(-89.213, -68.548, 17.77), size = Vector(0.698, 0.311, 0.342), color = Color(127, 111, 63, 255), surpresslightning = false, bonemerge = false, material = "models/props_canal/metalwall005b", skin = 0, bodygroup = {} },
		["base2"] = { type = "Model", model = "models/props_phx/misc/iron_beam1.mdl", bone = "v_weapon.aug_Parent", rel = "base", pos = Vector(0.669, -1.721, -2.598), angle = Angle(-88.948, -95.13, 83.978), size = Vector(-0.176, 0.329, 0.185), color = Color(127, 111, 63, 255), surpresslightning = false, bonemerge = false, material = "models/props_canal/metalwall005b", skin = 0, bodygroup = {} },
		["mag"] = { type = "Model", model = "models/hunter/blocks/cube1x2x05.mdl", bone = "v_weapon.aug_Clip", rel = "", pos = Vector(-0.355, 4.431, -0.182), angle = Angle(85.226, -49.471, 43.866), size = Vector(0.08, 0.092, 0.074), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/gibs/metalgibs/metal_gibs", skin = 0, bodygroup = {} },
		["plank"] = { type = "Model", model = "models/Mechanics/gears2/pinion_40t3.mdl", bone = "v_weapon.aug_Parent", rel = "base", pos = Vector(0.082, -5.127, -12.306), angle = Angle(-90.636, -10.265, 165.07001), size = Vector(-0.135, 0.057, 0.064), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} },
		["sight"] = { type = "Model", model = "models/mechanics/articulating/arm_base_b.mdl", bone = "v_weapon.aug_Parent", rel = "base", pos = Vector(0.899, -4.808, -27.223), angle = Angle(1.173, 3.569, -90.522), size = Vector(0.041, 0.026, 0.02), color = Color(127, 111, 63, 255), surpresslightning = false, bonemerge = false, material = "models/props_canal/metalwall005b", skin = 0, bodygroup = {} },
		["sight1"] = { type = "Model", model = "models/phxtended/tri2x2.mdl", bone = "v_weapon.aug_Parent", rel = "sight", pos = Vector(-0.608, 0.336, 0.008), angle = Angle(89.367, 84.705, -84.114), size = Vector(0.008, 0.007, 0.012), color = Color(127, 111, 63, 255), surpresslightning = false, bonemerge = false, material = "models/props_canal/metalwall005b", skin = 0, bodygroup = {} },
		["sight2"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "v_weapon.aug_Parent", rel = "sight", pos = Vector(-0.652, 0.321, 0.755), angle = Angle(88.352, -127.496, 129.243), size = Vector(-0.005, 0.008, 0.007), color = Color(33, 255, 0, 255), surpresslightning = false, bonemerge = false, material = "phoenix_storms/Fender_white", skin = 0, bodygroup = {} }
	}

	SWEP.WElements = {
		["barrel"] = { type = "Model", model = "models/hunter/tubes/tube1x1x1.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "base", pos = Vector(0.302, -3.602, -28.551), angle = Angle(-0.359, 93.538, 179.953), size = Vector(0.019, 0.018, 0.045), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/props_canal/metalwall005b", skin = 0, bodygroup = {} },
		["base"] = { type = "Model", model = "models/props_phx/misc/iron_beam1.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(-3.971, 0.053, 2.068), angle = Angle(-8.728, 90.297, -77.613), size = Vector(0.052, 0.573, 0.429), color = Color(127, 111, 63, 255), surpresslightning = false, bonemerge = false, material = "models/props_canal/metalwall005b", skin = 0, bodygroup = {} },
		["base1"] = { type = "Model", model = "models/props_phx/misc/iron_beam1.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "base", pos = Vector(0.156, -4.984, -12.358), angle = Angle(-89.213, -68.548, 17.77), size = Vector(0.698, 0.311, 0.342), color = Color(127, 111, 63, 255), surpresslightning = false, bonemerge = false, material = "models/props_canal/metalwall005b", skin = 0, bodygroup = {} },
		["base2"] = { type = "Model", model = "models/props_phx/misc/iron_beam1.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "base", pos = Vector(0.669, -1.721, -2.598), angle = Angle(-88.948, -95.13, 83.978), size = Vector(-0.176, 0.329, 0.185), color = Color(127, 111, 63, 255), surpresslightning = false, bonemerge = false, material = "models/props_canal/metalwall005b", skin = 0, bodygroup = {} },
		["plank"] = { type = "Model", model = "models/Mechanics/gears2/pinion_40t3.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "base", pos = Vector(0.082, -5.127, -12.306), angle = Angle(-90.8, -11.333, 165.25101), size = Vector(-0.135, 0.057, 0.064), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} },
		["sight"] = { type = "Model", model = "models/mechanics/articulating/arm_base_b.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "base", pos = Vector(0.899, -4.808, -27.223), angle = Angle(1.173, 3.569, -90.522), size = Vector(0.041, 0.026, 0.02), color = Color(127, 111, 63, 255), surpresslightning = false, bonemerge = false, material = "models/props_canal/metalwall005b", skin = 0, bodygroup = {} },
		["sight1"] = { type = "Model", model = "models/phxtended/tri2x2.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "sight", pos = Vector(-0.608, 0.336, 0.008), angle = Angle(89.367, 84.705, -84.114), size = Vector(0.008, 0.007, 0.012), color = Color(127, 111, 63, 255), surpresslightning = false, bonemerge = false, material = "models/props_canal/metalwall005b", skin = 0, bodygroup = {} },
		["sight2"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "sight", pos = Vector(-0.652, 0.321, 0.755), angle = Angle(88.352, -127.496, 129.243), size = Vector(-0.005, 0.008, 0.007), color = Color(33, 255, 0, 255), surpresslightning = false, bonemerge = false, material = "phoenix_storms/Fender_white", skin = 0, bodygroup = {} }
	}
	
end

SWEP.Base = "weapon_zs_base"

SWEP.HoldType = "smg"
SWEP.ViewModel = "models/weapons/cstrike/c_rif_aug.mdl"
SWEP.WorldModel = "models/weapons/w_rif_aug.mdl"
SWEP.UseHands = true
SWEP.ShowViewModel = true
SWEP.ShowWorldModel = true
SWEP.CSMuzzleFlashes = false

SWEP.ReloadDelay = 0.35

SWEP.Primary.Sound = Sound("weapons/shotgun/shotgun_dbl_fire.wav")
SWEP.Primary.Recoil = 5
SWEP.Primary.Damage = 5
SWEP.Primary.NumShots = 7
SWEP.Primary.Delay = 0.28

SWEP.Primary.ClipSize = 10
SWEP.Primary.Automatic = false
SWEP.Primary.Ammo = "buckshot"
SWEP.Primary.DefaultClip = 20

SWEP.ConeMax = 0.16
SWEP.ConeMin = 0.09
SWEP.Recoil = 3.2
SWEP.WalkSpeed = SPEED_SLOWEST
SWEP.MovingConeOffset = 0.08
GAMEMODE:SetupAimDefaults(SWEP,SWEP.Primary)
function SWEP.BulletCallback(attacker, tr, dmginfo)
	local ent = tr.Entity
	if SERVER then
		local wep = attacker:GetActiveWeapon()
		if ent:IsValid() and ent:IsPlayer()  then
				local burned = ent:GiveStatus('burn')
				burned:AddTime(0.4)
				burned.Damager = attacker
				burned.Damage = 4
		end
	end
end
