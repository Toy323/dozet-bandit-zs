AddCSLuaFile()

if CLIENT then
	SWEP.TranslateName = "weapon_abakan_name"
	SWEP.TranslateDesc = "weapon_abakan_desc"
	SWEP.Slot = 2
	SWEP.SlotPos = 0

	SWEP.ViewModelFlip = false
	SWEP.ViewModelFOV = 60

	SWEP.HUD3DBone = "v_weapon.AK47_Parent"
	SWEP.HUD3DPos = Vector(-1.75, -3.5, -1)
	SWEP.HUD3DAng = Angle(0, 0, 0)
	SWEP.HUD3DScale = 0.025
	
SWEP.VElements = {
	["e1"] = { type = "Model", model = "models/props_phx/misc/iron_beam1.mdl", bone = "v_weapon.AK47_Parent", rel = "", pos = Vector(0, -0.32, 0.626), angle = Angle(15, -90, 0), size = Vector(0.101, 0.11, 0.193), color = Color(40, 40, 40, 255), surpresslightning = false, material = "phoenix_storms/mat/mat_phx_metallic", skin = 0, bodygroup = {} },
	["e1+"] = { type = "Model", model = "models/props_phx/misc/iron_beam1.mdl", bone = "v_weapon.AK47_Parent", rel = "e1", pos = Vector(-1.827, 0, 0.867), angle = Angle(75, 0, 0), size = Vector(0.065, 0.11, 0.193), color = Color(40, 40, 40, 255), surpresslightning = false, material = "phoenix_storms/mat/mat_phx_metallic", skin = 0, bodygroup = {} },
	["e1++"] = { type = "Model", model = "models/props_combine/combine_train02a.mdl", bone = "v_weapon.AK47_Parent", rel = "e1", pos = Vector(-6.352, 0, -6.828), angle = Angle(0, 90, -75), size = Vector(0.018, 0.033, 0.011), color = Color(150, 161, 208, 255), surpresslightning = false, material = "models/weapons/v_grenade/grenade body", skin = 0, bodygroup = {} },
	["e1+++"] = { type = "Model", model = "models/hunter/blocks/cube1x4x1.mdl", bone = "v_weapon.AK47_Parent", rel = "e1", pos = Vector(-5.373, 0, -6.916), angle = Angle(-15, 0, -90), size = Vector(0.024, 0.105, 0.031), color = Color(150, 161, 208, 255), surpresslightning = false, material = "models/weapons/v_grenade/grenade body", skin = 0, bodygroup = {} },
	["e1++++"] = { type = "Model", model = "models/mechanics/solid_steel/sheetmetal_box_4.mdl", bone = "v_weapon.AK47_Parent", rel = "e1", pos = Vector(-2.695, 0.001, -1.596), angle = Angle(75, 0, 90), size = Vector(0.045, 0.045, 0.047), color = Color(40, 40, 40, 255), surpresslightning = false, material = "phoenix_storms/mat/mat_phx_metallic", skin = 0, bodygroup = {} },
	["e1+++++"] = { type = "Model", model = "models/hunter/tubes/circle4x4d.mdl", bone = "v_weapon.AK47_Parent", rel = "e1", pos = Vector(-3.818, 0.001, -2.39), angle = Angle(75, 0, 90), size = Vector(0.008, 0.018, 0.485), color = Color(40, 40, 40, 255), surpresslightning = false, material = "phoenix_storms/mat/mat_phx_metallic", skin = 0, bodygroup = {} },
	["e1++++++"] = { type = "Model", model = "models/props_vents/vent_medium_grill001.mdl", bone = "v_weapon.AK47_Clip", rel = "", pos = Vector(0, 4.768, 0.179), angle = Angle(0, -180, 0), size = Vector(0.065, 0.655, 0.35), color = Color(70, 70, 70, 255), surpresslightning = false, material = "phoenix_storms/gear_top", skin = 0, bodygroup = {} },
	["e1+++++++"] = { type = "Model", model = "models/Mechanics/gears2/pinion_20t3.mdl", bone = "v_weapon.AK47_Parent", rel = "e1", pos = Vector(-4.795, 0, -12.408), angle = Angle(-75, -180, 90), size = Vector(0.09, 0.064, 0.028), color = Color(112, 112, 112, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["e1++++++++"] = { type = "Model", model = "models/Mechanics/gears2/pinion_20t3.mdl", bone = "v_weapon.AK47_Parent", rel = "e1", pos = Vector(-8.082, 1.126, -17.742), angle = Angle(-75, -180, -180), size = Vector(0.058, 0.064, 0.028), color = Color(112, 112, 112, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["e1+++++++++"] = { type = "Model", model = "models/Mechanics/gears2/pinion_20t3.mdl", bone = "v_weapon.AK47_Parent", rel = "e1", pos = Vector(-8.083, -1.125, -17.743), angle = Angle(-75, 180, 0), size = Vector(0.058, 0.064, 0.028), color = Color(112, 112, 112, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["e1++++++++++"] = { type = "Model", model = "models/props/de_piranesi/pi_merlon.mdl", bone = "v_weapon.AK47_Parent", rel = "e1", pos = Vector(-8.19, 0.001, -20.228), angle = Angle(15, -180, 0), size = Vector(0.07, 0.044, 0.4), color = Color(150, 161, 208, 255), surpresslightning = false, material = "models/weapons/v_grenade/grenade body", skin = 0, bodygroup = {} },
	["e1+++++++++++"] = { type = "Model", model = "models/xqm/podremake.mdl", bone = "v_weapon.AK47_Parent", rel = "e1++++++++", pos = Vector(0, 0.316, 0), angle = Angle(0, 90, -90), size = Vector(0.01, 0.01, 0.01), color = Color(50, 50, 50, 255), surpresslightning = false, material = "phoenix_storms/concrete3", skin = 0, bodygroup = {} },
	["e1++++++++++++"] = { type = "Model", model = "models/xqm/podremake.mdl", bone = "v_weapon.AK47_Parent", rel = "e1+++++++++", pos = Vector(0, 0.316, 0), angle = Angle(0, -90, 90), size = Vector(0.01, 0.01, 0.01), color = Color(50, 50, 50, 255), surpresslightning = false, material = "phoenix_storms/concrete3", skin = 0, bodygroup = {} },
	["e1+++++++++++++"] = { type = "Model", model = "models/hunter/tubes/circle2x2.mdl", bone = "v_weapon.AK47_Parent", rel = "e1++++++++", pos = Vector(55.582, 0.316, 0), angle = Angle(0, 90, -90), size = Vector(0.003, 0.003, 37.009), color = Color(255, 0, 0, 255), surpresslightning = true, material = "models/weapons/w_smg1/smg_crosshair", skin = 0, bodygroup = {} },
	["e1++++++++++++++"] = { type = "Model", model = "models/hunter/tubes/circle2x2.mdl", bone = "v_weapon.AK47_Parent", rel = "e1+++++++++", pos = Vector(55.582, 0.316, 0), angle = Angle(0, -90, 90), size = Vector(0.003, 0.003, 37.009), color = Color(255, 0, 0, 255), surpresslightning = true, material = "models/weapons/w_smg1/smg_crosshair", skin = 0, bodygroup = {} },
	["e1+++++++++++++++"] = { type = "Model", model = "models/hunter/triangles/trapezium3x3x1c.mdl", bone = "v_weapon.AK47_Parent", rel = "e1", pos = Vector(-9.205, 0.005, -18.632), angle = Angle(-75, 180, 0), size = Vector(0.027, 0.044, 0.012), color = Color(150, 161, 208, 255), surpresslightning = false, material = "models/weapons/v_grenade/grenade body", skin = 0, bodygroup = {} },
	["e1++++++++++++++++"] = { type = "Model", model = "models/hunter/tubes/tube1x1x2.mdl", bone = "v_weapon.AK47_Parent", rel = "e1", pos = Vector(-8.999, 0.005, -19.93), angle = Angle(-15, 0, 180), size = Vector(0.014, 0.014, 0.05), color = Color(175, 181, 208, 255), surpresslightning = false, material = "models/weapons/v_grenade/grenade body", skin = 0, bodygroup = {} },
	["e1+++++++++++++++++"] = { type = "Model", model = "models/props_c17/utilityconnecter003.mdl", bone = "v_weapon.AK47_Parent", rel = "e1", pos = Vector(-8.516, 0.005, -21.514), angle = Angle(0, 90, -75), size = Vector(0.24, 0.215, 0.317), color = Color(150, 161, 208, 255), surpresslightning = false, material = "models/weapons/v_grenade/grenade body", skin = 0, bodygroup = {} },
	["e1++++++++++++++++++"] = { type = "Model", model = "models/props_c17/gravestone_cross001a.mdl", bone = "v_weapon.AK47_Parent", rel = "e1", pos = Vector(-11.1, 0.005, -22.645), angle = Angle(-75, 180, 0), size = Vector(0.028, 0.013, 0.015), color = Color(150, 168, 208, 255), surpresslightning = false, material = "models/weapons/v_grenade/grenade body", skin = 0, bodygroup = {} },
	["e1+++++++++++++++++++"] = { type = "Model", model = "models/mechanics/robotics/a1.mdl", bone = "v_weapon.AK47_Parent", rel = "e1", pos = Vector(-10.207, 0.005, -24.448), angle = Angle(-75, 180, 0), size = Vector(0.046, 0.082, 0.082), color = Color(60, 60, 60, 255), surpresslightning = false, material = "phoenix_storms/concrete3", skin = 0, bodygroup = {} },
	["e1++++++++++++++++++++"] = { type = "Model", model = "models/props_debris/concrete_cynderblock001.mdl", bone = "v_weapon.AK47_Parent", rel = "e1", pos = Vector(-10.489, 0.005, -25.503), angle = Angle(-75, -180, 90), size = Vector(0.068, 0.124, 0.12), color = Color(60, 60, 60, 255), surpresslightning = false, material = "phoenix_storms/concrete3", skin = 0, bodygroup = {} },
	["e1+++++++++++++++++++++"] = { type = "Model", model = "models/props_debris/concrete_cynderblock001.mdl", bone = "v_weapon.AK47_Parent", rel = "e1", pos = Vector(-10.629, 0.005, -26.023), angle = Angle(-75, -180, 90), size = Vector(0.068, 0.124, 0.12), color = Color(60, 60, 60, 255), surpresslightning = false, material = "phoenix_storms/concrete3", skin = 0, bodygroup = {} },
	["e1++++++++++++++++++++++"] = { type = "Model", model = "models/items/combine_rifle_ammo01.mdl", bone = "v_weapon.AK47_Parent", rel = "e1", pos = Vector(-10.728, 0.005, -26.391), angle = Angle(0, -90, 165), size = Vector(0.142, 0.142, 0.142), color = Color(60, 60, 60, 255), surpresslightning = false, material = "phoenix_storms/concrete3", skin = 0, bodygroup = {} },
	["e1+++++++++++++++++++++++"] = { type = "Model", model = "models/phxtended/tri2x1.mdl", bone = "v_weapon.AK47_Parent", rel = "e1", pos = Vector(0.058, 0.405, 14.908), angle = Angle(-15, 0, -90), size = Vector(0.142, 0.142, 0.142), color = Color(150, 168, 208, 255), surpresslightning = false, material = "models/weapons/v_grenade/grenade body", skin = 0, bodygroup = {} },
	["e1++++++++++++++++++++++++"] = { type = "Model", model = "models/props_combine/plazafallingmonitor.mdl", bone = "v_weapon.AK47_Parent", rel = "e1", pos = Vector(-5.222, 0.952, -1.177), angle = Angle(-4.972, 118.619, -161.28), size = Vector(0.021, 0.021, 0.021), color = Color(121, 121, 121, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["e1+++++++++++++++++++++++++"] = { type = "Model", model = "models/Mechanics/gears2/pinion_20t3.mdl", bone = "v_weapon.AK47_Parent", rel = "e1", pos = Vector(-6.203, 0.005, -0.914), angle = Angle(-75, 180, -90), size = Vector(0.089, 0.068, 0.036), color = Color(112, 112, 112, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["e1++++++++++++++++++++++++++"] = { type = "Model", model = "models/hunter/blocks/cube1x1x1.mdl", bone = "v_weapon.AK47_Parent", rel = "e1", pos = Vector(-6.285, 0.005, -0.892), angle = Angle(-75, 180, -90), size = Vector(0.046, 0.007, 0.028), color = Color(80, 80, 80, 255), surpresslightning = false, material = "phoenix_storms/concrete3", skin = 0, bodygroup = {} },
	["e1+++++++++++++++++++++++++++"] = { type = "Model", model = "models/hunter/blocks/cube1x1x1.mdl", bone = "v_weapon.AK47_Parent", rel = "e1", pos = Vector(-6.777, 0.005, -0.76), angle = Angle(-75, 180, -90), size = Vector(0.023, 0.015, 0.022), color = Color(80, 80, 80, 255), surpresslightning = false, material = "phoenix_storms/concrete3", skin = 0, bodygroup = {} },
	["e1++++++++++++++++++++++++++++"] = { type = "Model", model = "models/hunter/tubes/tube1x1x1.mdl", bone = "v_weapon.AK47_Parent", rel = "e1", pos = Vector(-7.135, 0.005, 1.406), angle = Angle(0, 90, -165), size = Vector(0.023, 0.023, 0.069), color = Color(80, 80, 80, 255), surpresslightning = false, material = "phoenix_storms/gear", skin = 0, bodygroup = {} },
	["e1+++++++++++++++++++++++++++++"] = { type = "Model", model = "models/hunter/tubes/tube4x4x2to2x2.mdl", bone = "v_weapon.AK47_Parent", rel = "e1", pos = Vector(-8.039, 0.005, -1.949), angle = Angle(0, -90, -15), size = Vector(0.009, 0.009, 0.016), color = Color(80, 80, 80, 255), surpresslightning = false, material = "phoenix_storms/gear", skin = 0, bodygroup = {} },
	["e1++++++++++++++++++++++++++++++"] = { type = "Model", model = "models/hunter/tubes/tube1x1x1.mdl", bone = "v_weapon.AK47_Parent", rel = "e1", pos = Vector(-8.674, 0.005, -4.325), angle = Angle(0, -90, -15), size = Vector(0.036, 0.036, 0.036), color = Color(80, 80, 80, 255), surpresslightning = false, material = "phoenix_storms/gear", skin = 0, bodygroup = {} },
	["e1+++++++++++++++++++++++++++++++"] = { type = "Model", model = "models/hunter/plates/platehole1x2.mdl", bone = "v_weapon.AK47_Parent", rel = "e1", pos = Vector(-7.672, 0.005, -0.525), angle = Angle(15, -180, 180), size = Vector(0.012, 0.011, 0.371), color = Color(80, 80, 80, 255), surpresslightning = false, material = "phoenix_storms/gear", skin = 0, bodygroup = {} },
	["e1++++++++++++++++++++++++++++++++"] = { type = "Model", model = "models/xeon133/offroad/off-road-80.mdl", bone = "v_weapon.AK47_Parent", rel = "e1", pos = Vector(-8.28, 0.005, -0.42), angle = Angle(15, 180, 180), size = Vector(0.01, 0.01, 0.01), color = Color(72, 72, 72, 255), surpresslightning = false, material = "phoenix_storms/concrete3", skin = 0, bodygroup = {} },
	["e1+++++++++++++++++++++++++++++++++"] = { type = "Model", model = "models/xeon133/offroad/off-road-80.mdl", bone = "v_weapon.AK47_Parent", rel = "e1", pos = Vector(-7.584, -0.606, -0.607), angle = Angle(0, 90, -165), size = Vector(0.01, 0.01, 0.01), color = Color(72, 72, 72, 255), surpresslightning = false, material = "phoenix_storms/concrete3", skin = 0, bodygroup = {} },
	["e1++++++++++++++++++++++++++++++++++"] = { type = "Model", model = "models/hunter/tubes/tube1x1x1.mdl", bone = "v_weapon.AK47_Parent", rel = "e1", pos = Vector(-7.135, 0.005, 1.406), angle = Angle(0, 90, -165), size = Vector(0.02, 0.02, 0.069), color = Color(80, 80, 80, 255), surpresslightning = false, material = "phoenix_storms/concrete3", skin = 0, bodygroup = {} },
	["e1+++++++++++++++++++++++++++++++++++"] = { type = "Model", model = "models/gibs/manhack_gib06.mdl", bone = "v_weapon.AK47_Trigger", rel = "", pos = Vector(0, 0.504, 0.014), angle = Angle(53.74371, -83.16193, 95.56072), size = Vector(0.187, 0.187, 0.187), color = Color(70, 70, 70, 255), surpresslightning = false, material = "phoenix_storms/gear_top", skin = 0, bodygroup = {} }
}

SWEP.WElements = {
	["e1"] = { type = "Model", model = "models/props_phx/misc/iron_beam1.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(4.213, 0.838, -0.404), angle = Angle(99.264, -0.079, 0), size = Vector(0.101, 0.11, 0.193), color = Color(40, 40, 40, 255), surpresslightning = false, material = "phoenix_storms/mat/mat_phx_metallic", skin = 0, bodygroup = {} },
	["e1+"] = { type = "Model", model = "models/props_phx/misc/iron_beam1.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "e1", pos = Vector(-1.827, -6e-05, 0.86699), angle = Angle(75, 0, 1e-05), size = Vector(0.065, 0.11, 0.193), color = Color(40, 40, 40, 255), surpresslightning = false, material = "phoenix_storms/mat/mat_phx_metallic", skin = 0, bodygroup = {} },
	["e1++"] = { type = "Model", model = "models/props_combine/combine_train02a.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "e1", pos = Vector(-6.35202, -6e-05, -6.82799), angle = Angle(0, 90, -75), size = Vector(0.018, 0.033, 0.011), color = Color(150, 161, 208, 255), surpresslightning = false, material = "models/weapons/v_grenade/grenade body", skin = 0, bodygroup = {} },
	["e1+++"] = { type = "Model", model = "models/hunter/blocks/cube1x4x1.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "e1", pos = Vector(-5.37302, 0, -6.91603), angle = Angle(-15.00001, 0, -89.99999), size = Vector(0.024, 0.105, 0.031), color = Color(150, 161, 208, 255), surpresslightning = false, material = "models/weapons/v_grenade/grenade body", skin = 0, bodygroup = {} },
	["e1++++"] = { type = "Model", model = "models/mechanics/solid_steel/sheetmetal_box_4.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "e1", pos = Vector(-2.69498, 0.00098, -1.59599), angle = Angle(75, 0, 90), size = Vector(0.045, 0.045, 0.047), color = Color(40, 40, 40, 255), surpresslightning = false, material = "phoenix_storms/mat/mat_phx_metallic", skin = 0, bodygroup = {} },
	["e1+++++"] = { type = "Model", model = "models/hunter/tubes/circle4x4d.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "e1", pos = Vector(-3.81796, 0.00092, -2.39001), angle = Angle(75, 0, 90), size = Vector(0.008, 0.018, 0.485), color = Color(40, 40, 40, 255), surpresslightning = false, material = "phoenix_storms/mat/mat_phx_metallic", skin = 0, bodygroup = {} },
	["e1++++++"] = { type = "Model", model = "models/props_vents/vent_medium_grill001.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "e1", pos = Vector(0.635, 0, -6.609), angle = Angle(0, -90, -15), size = Vector(0.065, 0.655, 0.35), color = Color(70, 70, 70, 255), surpresslightning = false, material = "phoenix_storms/gear_top", skin = 0, bodygroup = {} },
	["e1+++++++"] = { type = "Model", model = "models/Mechanics/gears2/pinion_20t3.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "e1", pos = Vector(-4.79501, -6e-05, -12.40794), angle = Angle(-75.00001, 180, 90), size = Vector(0.09, 0.064, 0.028), color = Color(112, 112, 112, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["e1++++++++"] = { type = "Model", model = "models/Mechanics/gears2/pinion_20t3.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "e1", pos = Vector(-8.08203, 1.12592, -17.74197), angle = Angle(-75.00001, 180, 180), size = Vector(0.058, 0.064, 0.028), color = Color(112, 112, 112, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["e1+++++++++"] = { type = "Model", model = "models/Mechanics/gears2/pinion_20t3.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "e1", pos = Vector(-8.08301, -1.12506, -17.74298), angle = Angle(-75, 180, -1e-05), size = Vector(0.058, 0.064, 0.028), color = Color(112, 112, 112, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["e1++++++++++"] = { type = "Model", model = "models/props/de_piranesi/pi_merlon.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "e1", pos = Vector(-8.19, 0.00098, -20.22806), angle = Angle(15, 180, 0), size = Vector(0.07, 0.044, 0.4), color = Color(150, 161, 208, 255), surpresslightning = false, material = "models/weapons/v_grenade/grenade body", skin = 0, bodygroup = {} },
	["e1+++++++++++"] = { type = "Model", model = "models/xqm/podremake.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "e1++++++++", pos = Vector(0, 0.316, 0), angle = Angle(0, 90, -90), size = Vector(0.01, 0.01, 0.01), color = Color(50, 50, 50, 255), surpresslightning = false, material = "phoenix_storms/concrete3", skin = 0, bodygroup = {} },
	["e1++++++++++++"] = { type = "Model", model = "models/xqm/podremake.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "e1+++++++++", pos = Vector(0, 0.316, 0), angle = Angle(0, -90, 90), size = Vector(0.01, 0.01, 0.01), color = Color(50, 50, 50, 255), surpresslightning = false, material = "phoenix_storms/concrete3", skin = 0, bodygroup = {} },
	["e1+++++++++++++"] = { type = "Model", model = "models/hunter/tubes/circle2x2.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "e1++++++++", pos = Vector(55.582, 0.316, 0), angle = Angle(0, 90, -90), size = Vector(0.003, 0.003, 37.009), color = Color(255, 0, 0, 255), surpresslightning = true, material = "models/weapons/w_smg1/smg_crosshair", skin = 0, bodygroup = {} },
	["e1++++++++++++++"] = { type = "Model", model = "models/hunter/tubes/circle2x2.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "e1+++++++++", pos = Vector(55.582, 0.316, 0), angle = Angle(0, -90, 90), size = Vector(0.003, 0.003, 37.009), color = Color(255, 0, 0, 255), surpresslightning = true, material = "models/weapons/w_smg1/smg_crosshair", skin = 0, bodygroup = {} },
	["e1+++++++++++++++"] = { type = "Model", model = "models/hunter/triangles/trapezium3x3x1c.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "e1", pos = Vector(-9.20502, 0.005, -18.63202), angle = Angle(-75, 180, -1e-05), size = Vector(0.027, 0.044, 0.012), color = Color(150, 161, 208, 255), surpresslightning = false, material = "models/weapons/v_grenade/grenade body", skin = 0, bodygroup = {} },
	["e1++++++++++++++++"] = { type = "Model", model = "models/hunter/tubes/tube1x1x2.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "e1", pos = Vector(-8.99902, 0.00494, -19.92996), angle = Angle(-15, 1e-05, -180), size = Vector(0.014, 0.014, 0.05), color = Color(175, 181, 208, 255), surpresslightning = false, material = "models/weapons/v_grenade/grenade body", skin = 0, bodygroup = {} },
	["e1+++++++++++++++++"] = { type = "Model", model = "models/props_c17/utilityconnecter003.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "e1", pos = Vector(-8.51602, 0.00494, -21.51404), angle = Angle(0, 90, -75), size = Vector(0.24, 0.215, 0.317), color = Color(150, 161, 208, 255), surpresslightning = false, material = "models/weapons/v_grenade/grenade body", skin = 0, bodygroup = {} },
	["e1++++++++++++++++++"] = { type = "Model", model = "models/props_c17/gravestone_cross001a.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "e1", pos = Vector(-11.10004, 0.005, -22.64496), angle = Angle(-75, 180, -1e-05), size = Vector(0.028, 0.013, 0.015), color = Color(150, 168, 208, 255), surpresslightning = false, material = "models/weapons/v_grenade/grenade body", skin = 0, bodygroup = {} },
	["e1+++++++++++++++++++"] = { type = "Model", model = "models/mechanics/robotics/a1.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "e1", pos = Vector(-10.207, 0.00494, -24.44797), angle = Angle(-75, 180, -1e-05), size = Vector(0.046, 0.082, 0.082), color = Color(60, 60, 60, 255), surpresslightning = false, material = "phoenix_storms/concrete3", skin = 0, bodygroup = {} },
	["e1++++++++++++++++++++"] = { type = "Model", model = "models/props_debris/concrete_cynderblock001.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "e1", pos = Vector(-10.48898, 0.00494, -25.50299), angle = Angle(-75.00001, 180, 90), size = Vector(0.068, 0.124, 0.12), color = Color(60, 60, 60, 255), surpresslightning = false, material = "phoenix_storms/concrete3", skin = 0, bodygroup = {} },
	["e1+++++++++++++++++++++"] = { type = "Model", model = "models/props_debris/concrete_cynderblock001.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "e1", pos = Vector(-10.629, 0.00494, -26.02298), angle = Angle(-75.00001, 180, 90), size = Vector(0.068, 0.124, 0.12), color = Color(60, 60, 60, 255), surpresslightning = false, material = "phoenix_storms/concrete3", skin = 0, bodygroup = {} },
	["e1++++++++++++++++++++++"] = { type = "Model", model = "models/items/combine_rifle_ammo01.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "e1", pos = Vector(-10.728, 0.00494, -26.39093), angle = Angle(0, -89.99999, 164.99998), size = Vector(0.142, 0.142, 0.142), color = Color(60, 60, 60, 255), surpresslightning = false, material = "phoenix_storms/concrete3", skin = 0, bodygroup = {} },
	["e1+++++++++++++++++++++++"] = { type = "Model", model = "models/phxtended/tri2x1.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "e1", pos = Vector(0.05798, 0.40497, 14.90805), angle = Angle(-15.00001, 0, -89.99999), size = Vector(0.142, 0.142, 0.142), color = Color(150, 168, 208, 255), surpresslightning = false, material = "models/weapons/v_grenade/grenade body", skin = 0, bodygroup = {} },
	["e1++++++++++++++++++++++++"] = { type = "Model", model = "models/props_combine/plazafallingmonitor.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "e1", pos = Vector(-5.22198, 0.95197, -1.17703), angle = Angle(-4.972, 118.61901, -161.28), size = Vector(0.021, 0.021, 0.021), color = Color(121, 121, 121, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["e1+++++++++++++++++++++++++"] = { type = "Model", model = "models/Mechanics/gears2/pinion_20t3.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "e1", pos = Vector(-6.203, 0.005, -0.91397), angle = Angle(-75, 179.99997, -90.00003), size = Vector(0.089, 0.068, 0.036), color = Color(112, 112, 112, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["e1++++++++++++++++++++++++++"] = { type = "Model", model = "models/hunter/blocks/cube1x1x1.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "e1", pos = Vector(-6.285, 0.00494, -0.89198), angle = Angle(-75, 179.99997, -90.00003), size = Vector(0.046, 0.007, 0.028), color = Color(80, 80, 80, 255), surpresslightning = false, material = "phoenix_storms/concrete3", skin = 0, bodygroup = {} },
	["e1+++++++++++++++++++++++++++"] = { type = "Model", model = "models/hunter/blocks/cube1x1x1.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "e1", pos = Vector(-6.77701, 0.00494, -0.75993), angle = Angle(-75, 179.99997, -90.00003), size = Vector(0.023, 0.015, 0.022), color = Color(80, 80, 80, 255), surpresslightning = false, material = "phoenix_storms/concrete3", skin = 0, bodygroup = {} },
	["e1++++++++++++++++++++++++++++"] = { type = "Model", model = "models/hunter/tubes/tube1x1x1.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "e1", pos = Vector(-7.13501, 0.005, 1.40602), angle = Angle(0, 90, -165), size = Vector(0.023, 0.023, 0.069), color = Color(80, 80, 80, 255), surpresslightning = false, material = "phoenix_storms/gear", skin = 0, bodygroup = {} },
	["e1+++++++++++++++++++++++++++++"] = { type = "Model", model = "models/hunter/tubes/tube4x4x2to2x2.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "e1", pos = Vector(-8.03903, 0.00494, -1.94902), angle = Angle(0, -90, -15.00001), size = Vector(0.009, 0.009, 0.016), color = Color(80, 80, 80, 255), surpresslightning = false, material = "phoenix_storms/gear", skin = 0, bodygroup = {} },
	["e1++++++++++++++++++++++++++++++"] = { type = "Model", model = "models/hunter/tubes/tube1x1x1.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "e1", pos = Vector(-8.67401, 0.00494, -4.32498), angle = Angle(0, -90, -15.00001), size = Vector(0.036, 0.036, 0.036), color = Color(80, 80, 80, 255), surpresslightning = false, material = "phoenix_storms/gear", skin = 0, bodygroup = {} },
	["e1+++++++++++++++++++++++++++++++"] = { type = "Model", model = "models/hunter/plates/platehole1x2.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "e1", pos = Vector(-7.672, 0.00494, -0.52502), angle = Angle(15, 180, -179.99998), size = Vector(0.012, 0.011, 0.371), color = Color(80, 80, 80, 255), surpresslightning = false, material = "phoenix_storms/gear", skin = 0, bodygroup = {} },
	["e1++++++++++++++++++++++++++++++++"] = { type = "Model", model = "models/xeon133/offroad/off-road-80.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "e1", pos = Vector(-8.28003, 0.00507, -0.41998), angle = Angle(15, -180, -179.99998), size = Vector(0.01, 0.01, 0.01), color = Color(72, 72, 72, 255), surpresslightning = false, material = "phoenix_storms/concrete3", skin = 0, bodygroup = {} },
	["e1+++++++++++++++++++++++++++++++++"] = { type = "Model", model = "models/xeon133/offroad/off-road-80.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "e1", pos = Vector(-7.58401, -0.60602, -0.60706), angle = Angle(0, 90, -165), size = Vector(0.01, 0.01, 0.01), color = Color(72, 72, 72, 255), surpresslightning = false, material = "phoenix_storms/concrete3", skin = 0, bodygroup = {} },
	["e1++++++++++++++++++++++++++++++++++"] = { type = "Model", model = "models/hunter/tubes/tube1x1x1.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "e1", pos = Vector(-7.13501, 0.005, 1.40602), angle = Angle(0, 90, -165), size = Vector(0.02, 0.02, 0.069), color = Color(80, 80, 80, 255), surpresslightning = false, material = "phoenix_storms/concrete3", skin = 0, bodygroup = {} }
}
end

SWEP.Base = "weapon_zs_base"

SWEP.HoldType = "ar2"

SWEP.ViewModel = "models/weapons/cstrike/c_rif_ak47.mdl"
SWEP.WorldModel = "models/hunter/plates/plate.mdl"
SWEP.UseHands = true
SWEP.ShowViewModel = false
SWEP.ShowWorldModel = true
SWEP.Primary.Sound = Sound("Weapon_UMP45.Single")
SWEP.Primary.Damage = 12
SWEP.Primary.NumShots = 1
SWEP.Primary.Delay = 0.067

SWEP.Primary.ClipSize = 30
SWEP.Primary.Automatic = true
SWEP.Primary.Ammo = "smg1"
GAMEMODE:SetupDefaultClip(SWEP.Primary)

SWEP.Primary.Gesture = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2
SWEP.ReloadGesture = ACT_HL2MP_GESTURE_RELOAD_AR2

SWEP.ConeMax = 0.095
SWEP.ConeMin = 0.0155
GAMEMODE:SetupAimDefaults(SWEP,SWEP.Primary)
SWEP.Recoil = 0.333
SWEP.NextMagazCheck = 0
SWEP.NextShoot = 0
SWEP.WalkSpeed = SPEED_FAST
SWEP.ZoomedH = 0
SWEP.IronSightsPos = Vector(-6.501, 4.568, 4.45)
SWEP.IronSightsAng = Vector(-3.626, -0, -0)
function SWEP:GetMagazineChange()
	return self:GetDTFloat(22)
end
function SWEP:SetMagazineChange(number)
	return self:SetDTFloat(22,math.Clamp(number,0,1))
end
function SWEP:GetMagazine()
	return self:GetDTInt(22)
end
function SWEP:SetMagazine(number)
	return self:SetDTInt(22,number)
end
function SWEP:SetupDataTables()
	self:NetworkVar( "Int" , 10 , "RemainingShots" )
	self:NetworkVar( "Float" , 9 , "NextFireXD" )
	if self.BaseClass.SetupDataTables then
		self.BaseClass.SetupDataTables(self)
	end--ds`
end
function SWEP:Initialize()
	self:SetRemainingShots(0)
	self:SetNextFireXD(0)
	self.BaseClass.Initialize(self)
end

function SWEP:Reload()
	if self:GetOwner():IsHolding() then return end

	-- Custom reload function that does not use c++ hardcoded DefaultReload, Taken from newer version ZS.
	if self:CanReload() then	
		if self:GetIronsights() then
			self:SetIronsights(false)
		end
		self:SetReloadStart(CurTime())

		self:SendReloadAnimation()
		self:ProcessReloadEndTime()
		self:GetOwner():DoReloadEvent()
		self.IdleAnimation = CurTime() + self:SequenceDuration()
		self:SetNextReload(self.IdleAnimation)
		self:EmitReloadSound()
		self:SetDTBool(12,false)
	end
end
function SWEP:PrimaryAttack()
	if not self:CanPrimaryAttack() or self.NextShoot > CurTime()  then  return end
	self:SendWeaponAnimation()
	self:SetNextPrimaryFire(CurTime() + self.Primary.Delay)
	self.IdleAnimation = CurTime() + self:SequenceDuration()
	self.NextShoot = CurTime() + (self.AddTime or 0.4)
	self:SetNextShot(CurTime())
	self:SetShotsLeft(5)

	self.IdleAnimation = CurTime() + self:SequenceDuration()
end
function SWEP:SetNextShot(nextshot)
	self:SetDTFloat(5, nextshot)
end

function SWEP:GetNextShot()
	return self:GetDTFloat(5)
end

function SWEP:SetShotsLeft(shotsleft)
	self:SetDTInt(1, shotsleft)
end

function SWEP:GetShotsLeft()
	return self:GetDTInt(1)
end

function SWEP:Think()
	local curtime = CurTime()
	local firedelay = math.min((self.Primary.Delay)/self.Primary.NumShots,0.1)
		local shotsleft = self:GetShotsLeft()
		if shotsleft > 0 and curtime >= self:GetNextShot() then
			self:SetShotsLeft(shotsleft - 1)
			self:SetNextShot(curtime + math.min(self.Primary.Delay,0.1))

			if self:Clip1() > 0 then
				self:EmitFireSound()
				self:TakeAmmo()
				self:ShootBullets(self.Primary.Damage, self.Primary.NumShots, self:GetCone())

				self.IdleAnimation = CurTime() + self:SequenceDuration()
			else
				self:SetShotsLeft(0)
			end
		end
	if self.BaseClass.Think then
		self.BaseClass.Think(self)
	end

	local owner = self:GetOwner()
	if owner:KeyDown(IN_ZOOM) and self.ZoomedH < CurTime() then
		if !self.BruhichCounter then
			self.AddTime = 0.01
		else
			self.AddTime = 0.4
		end
		self.ZoomedH = CurTime() + 6
		self.BruhichCounter = !self.BruhichCounter
	end
	if owner:KeyDown(IN_RELOAD) and self.NextMagazCheck < curtime then
		local mag = self:GetMagazineChange()
		self:SetMagazineChange(mag+0.01)
		if mag == 1 then
			self:SetMagazine(self:GetMagazine()%3+1)
			if self:GetMagazine()%3 == 0 then
				self.RequiredClip = 1
				self.Primary.ClipSize = 30
				self.Recoil =  0.333
			else
				self.RequiredClip = 2
				self.Primary.ClipSize = 60
				self.Recoil =  0.333
				if self:GetMagazine()%3 == 2 then
					self.Recoil = self.Recoil * 1.15
				end
			end
			self:SetDTBool(12,false)
			if SERVER then
				owner:GiveAmmo(self:Clip1() or 0,self.Primary.Ammo)
			end
			self:SetClip1(0)
			self.NextMagazCheck = curtime + 3
			self:Reload()
		end
	else
		self:SetMagazineChange(self:GetMagazineChange()-0.05)
	end
end
function SWEP.BulletCallback(attacker, tr, dmginfo)
	local ent = tr.Entity
	if SERVER then
		local wep = attacker:GetActiveWeapon()
		if ent and ent:IsValid() and ent:IsPlayer() then
			if wep:GetMagazine()%3 == 1 then
				ent:AddBodyArmor(-dmginfo:GetDamage()*0.5)
			elseif wep:GetMagazine()%3 == 2 then
				local arm = ent:GetBodyArmor() > 0
				if ent:GetBodyArmor() and arm and attacker:Team() ~= ent:Team() then
					local ratio = 0.4
					if not (ent:WasHitInHead()) then
						ratio = ratio * 0.3
						dmginfo:ScaleDamage(0.5)
					end
					ent:AddBodyArmor(dmginfo:GetDamage()*-ratio)
				end
				if arm then return end
				local bleed = ent:GetStatus("bleed")
				if bleed and bleed:IsValid() then
					bleed:AddDamage(7)
					bleed.Damager = attacker
				else
					local stat = ent:GiveStatus("bleed")
					if stat and stat:IsValid() then
						stat:SetDamage(7)
						stat.Damager = attacker
					end
				end
			end
		end
	end
	
end

if CLIENT then
	local rad,cos,sin,abs = math.rad, math.cos, math.sin, math.abs
    function DrawHollowCircle(x, y, inRadius, exRadius, startAng, endAng, color)
        startAng = (startAng > endAng and endAng) or startAng
        
        for i = startAng, endAng do
           	surface.SetDrawColor(color)
            surface.DrawTexturedRectRotated(x + (cos(rad(i))*(abs(exRadius-inRadius))), y + -(sin(rad(i))*(abs(exRadius-inRadius))), exRadius, 3, i)
        end
    end
	local texGradDown = surface.GetTextureID("VGUI/gradient_down")
	local colWhite = Color(220, 220, 220, 230)
	local colGreen = Color(72,255,0)
	function SWEP:DrawHUD()
		if self.BaseClass.DrawHUD then
			self.BaseClass.DrawHUD(self)
		end
		local x, y = ScrW()/2, ScrH()/2
		DrawHollowCircle(x, y, 50*self:GetMagazineChange(), 50*self:GetMagazineChange(), 0, 360, colGreen)
	end
	function SWEP:Draw3DHUD(vm, pos, ang)
		if self.BaseClass.Draw3DHUD then
			self.BaseClass.Draw3DHUD(self,vm, pos, ang)
		end
		cam.Start3D2D(pos, ang, (hud3dscale and hud3dscale or 0.01) / 2)
		local wid, hei = 432, 432
		local x, y =  994, -986
		draw.RoundedBoxEx(32, x,y,wid,hei, Color(124,124,124,100), true, false, true, false)
		draw.SimpleTextBlurry(self:GetMagazine()%3 == 0 and "Обычныe" or self:GetMagazine()%3 == 1 and "Бронeбойныe" or "Экспансивныe","ZS3D2DFont", x + wid * 0.5, y + hei * 0.5, colWhite, TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
		cam.End3D2D()
	end
end
