AddCSLuaFile()

if CLIENT then
	SWEP.TranslateName = "weapon_ads_name"
	SWEP.TranslateDesc = "weapon_ads_desc"
	SWEP.Slot = 2
	SWEP.SlotPos = 0

	SWEP.ViewModelFlip = false
	SWEP.ViewModelFOV =90


	SWEP.SCKMaterials = {}
	
	SWEP.HUD3DBone = "v_weapon.famas"
	SWEP.HUD3DPos = Vector(1.75, -4, 15)
	SWEP.HUD3DAng = Angle(0,180,180)
	SWEP.HUD3DScale = 0.026

	SWEP.ViewModelBoneMods = {
		["ValveBiped.Bip01_L_UpperArm"] = { scale = Vector(1, 1, 1), pos = Vector(-0.533, -0.391, -0.12), angle = Angle(0, 0, 0) },
		["ValveBiped.Bip01_R_UpperArm"] = { scale = Vector(1, 1, 1), pos = Vector(-0.235, 0.117, 0.467), angle = Angle(0, 0, 0) },
		["ValveBiped.Bip01_Spine4"] = { scale = Vector(1, 1, 1), pos = Vector(0, -5.796, 0), angle = Angle(0, 0, 0) },
		["v_weapon.famas"] = { scale = Vector(1, 1, 1), pos = Vector(0, -5.21, 0), angle = Angle(0, 0, 0) }
	}
	
	SWEP.SCKMaterials = {}
	
	SWEP.IronSightsPos = Vector(-2, 0, 0.72)
	SWEP.IronSightsAng = Vector(0, 0, 0)
	
	SWEP.VElements = {
		["Grip"] = { type = "Model", model = "models/props_phx/misc/iron_beam1.mdl", bone = "v_weapon.famas", rel = "handle", pos = Vector(-0.28098, 6.39294, -2.00998), angle = Angle(78.04899, -120.17901, -60.473), size = Vector(0.091, 0.221, 0.096), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/props_canal/canal_bridge_railing_01c", skin = 0, bodygroup = {} },
		["barrel"] = { type = "Model", model = "models/mechanics/robotics/a2.mdl", bone = "v_weapon.famas", rel = "handle", pos = Vector(0.00897, 16.25806, 2.04903), angle = Angle(1.932, -89.833, -96.00598), size = Vector(0.12, 0.059, 0.057), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/props_canal/canal_bridge_railing_01c", skin = 0, bodygroup = {} },
		["barrel connector"] = { type = "Model", model = "models/hunter/blocks/cube05x105x05.mdl", bone = "v_weapon.famas", rel = "handle", pos = Vector(0.01501, 16.90515, 1.21698), angle = Angle(1.262, -0.355, -1.971), size = Vector(0.018, 0.051, 0.052), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/props_canal/canal_bridge_railing_01c", skin = 0, bodygroup = {} },
		["bolt"] = { type = "Model", model = "models/mechanics/robotics/a3.mdl", bone = "v_weapon.famas", rel = "handle", pos = Vector(0.05, 8.807, 2.415), angle = Angle(1.744, -90.089, 75.708), size = Vector(0.098, 0.03, 0.03), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/props_pipes/pipeset_metal02", skin = 0, bodygroup = {} },
		["bolt1"] = { type = "Model", model = "models/mechanics/roboticslarge/d1.mdl", bone = "v_weapon.bolt", rel = "", pos = Vector(-0.151, -0.079, -1.363), angle = Angle(-89.972, 2.194, 0), size = Vector(0.014, 0.014, 0.014), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/props_pipes/pipeset_metal02", skin = 0, bodygroup = {} },
		["bolt2"] = { type = "Model", model = "models/mechanics/robotics/a1.mdl", bone = "v_weapon.famas", rel = "handle", pos = Vector(0.05499, 11.79602, 2.33798), angle = Angle(2.082, -89.84303, -91.14399), size = Vector(0.077, 0.066, 0.047), color = Color(72, 72, 72, 255), surpresslightning = false, bonemerge = false, material = "models/props_pipes/pipeset_metal02", skin = 0, bodygroup = {} },
		["bolt3"] = { type = "Model", model = "models/squad/sf_tubes/sf_tube1x180.mdl", bone = "v_weapon.famas", rel = "handle", pos = Vector(0.08795, 12.95807, 2.42099), angle = Angle(-1.706, 97.29099, 0.383), size = Vector(0.006, 0.005, 0.006), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/props_pipes/pipeset_metal02", skin = 0, bodygroup = {} },
		["carryhandle+"] = { type = "Model", model = "models/hunter/blocks/cube075x2x025.mdl", bone = "v_weapon.famas", rel = "handle", pos = Vector(0.01105, 5.35602, 2.76299), angle = Angle(-0.369, -179.83902, -88.25694), size = Vector(0.014, 0.027, 0.022), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/props_canal/canal_bridge_railing_01c", skin = 0, bodygroup = {} },
		["carryhandle++"] = { type = "Model", model = "models/hunter/blocks/cube075x2x025.mdl", bone = "v_weapon.famas", rel = "handle", pos = Vector(0.01901, 8.06702, 3.97696), angle = Angle(-1.248, -179.63499, -178.51001), size = Vector(0.014, 0.057, 0.022), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/props_canal/canal_bridge_railing_01c", skin = 0, bodygroup = {} },
		["carryhandle+++"] = { type = "Model", model = "models/props_phx/construct/metal_wire1x2.mdl", bone = "v_weapon.famas", rel = "handle", pos = Vector(0.04102, 10.61401, 3.47003), angle = Angle(-0.394, -179.838, -88.25704), size = Vector(0.011, 0.024, 0.022), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/props_canal/canal_bridge_railing_01c", skin = 0, bodygroup = {} },
		["carryhandle++++"] = { type = "Model", model = "models/props_phx/construct/metal_wire1x1.mdl", bone = "v_weapon.famas", rel = "handle", pos = Vector(0.052, 10.63501, 2.96698), angle = Angle(-0.339, -179.84, -88.25694), size = Vector(0.011, 0.023, 0.022), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/props_canal/canal_bridge_railing_01c", skin = 0, bodygroup = {} },
		["gbarrel"] = { type = "Model", model = "models/props_phx/gears/bevel24.mdl", bone = "v_weapon.famas", rel = "handle", pos = Vector(0.00793, 18.83911, 0.43098), angle = Angle(81.35398, 40.35801, 49.48197), size = Vector(0.039, 0.039, 0.039), color = Color(0, 0, 0, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} },
		["granade launcher"] = { type = "Model", model = "models/xqm/cylinderx1medium.mdl", bone = "v_weapon.famas", rel = "handle", pos = Vector(-0.03101, 17.10016, 0.34399), angle = Angle(1.78, -89.09398, 93.31197), size = Vector(0.147, 0.079, 0.075), color = Color(109, 109, 109, 255), surpresslightning = false, bonemerge = false, material = "models/props_canal/canal_bridge_railing_01c", skin = 0, bodygroup = {} },
		["handle"] = { type = "Model", model = "models/props_combine/combine_train02a.mdl", bone = "v_weapon.famas", rel = "", pos = Vector(-0.071, 0.101, 5.306), angle = Angle(0.15, 0.184, -88.257), size = Vector(0.016, 0.018, 0.02), color = Color(109, 109, 109, 255), surpresslightning = false, bonemerge = false, material = "models/props_canal/canal_bridge_railing_01c", skin = 0, bodygroup = {} },
		["handle 2"] = { type = "Model", model = "models/phxtended/tri2x1x1solid.mdl", bone = "v_weapon.famas", rel = "handle", pos = Vector(0.27899, 5.33112, 1.49202), angle = Angle(88.31699, 105.00397, -106.26102), size = Vector(0.027, 0.033, 0.011), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/props_canal/canal_bridge_railing_01c", skin = 0, bodygroup = {} },
		["handle1"] = { type = "Model", model = "models/mechanics/robotics/a2.mdl", bone = "v_weapon.famas", rel = "handle", pos = Vector(-0.16489, -5.29297, -0.41801), angle = Angle(87.23898, -30.201, -146.37199), size = Vector(0.112, 0.112, 0.112), color = Color(72, 72, 72, 255), surpresslightning = false, bonemerge = false, material = "models/props_canal/canal_bridge_railing_01c", skin = 0, bodygroup = {} },
		["handle1+"] = { type = "Model", model = "models/mechanics/robotics/a2.mdl", bone = "v_weapon.famas", rel = "handle", pos = Vector(-0.17099, -3.79486, -1.87898), angle = Angle(46.94201, -90.17699, -86.159), size = Vector(0.071, 0.071, 0.071), color = Color(72, 72, 72, 255), surpresslightning = false, bonemerge = false, material = "models/props_canal/canal_bridge_railing_01c", skin = 0, bodygroup = {} },
		["lgrip"] = { type = "Model", model = "models/props_c17/utilityconnecter006c.mdl", bone = "v_weapon.famas", rel = "handle", pos = Vector(-0.02792, 12.90112, 0.34698), angle = Angle(86.45097, 1.84109, -91.79609), size = Vector(0.114, 0.097, 0.115), color = Color(109, 109, 109, 255), surpresslightning = false, bonemerge = false, material = "models/props_canal/canal_bridge_railing_01c", skin = 0, bodygroup = {} },
		["magazine"] = { type = "Model", model = "models/hunter/blocks/cube075x1x025.mdl", bone = "v_weapon.magazine", rel = "", pos = Vector(0.044, -1.033, -0.412), angle = Angle(68.917, -89.636, -90.023), size = Vector(0.081, 0.091, 0.05), color = Color(110, 57, 31, 255), surpresslightning = false, bonemerge = false, material = "models/props_canal/canal_bridge_railing_01c", skin = 0, bodygroup = {} },
		["magazine+"] = { type = "Model", model = "models/hunter/blocks/cube075x1x025.mdl", bone = "v_weapon.magazine", rel = "magazine", pos = Vector(0.961, -3.158, 0.022), angle = Angle(-0.216, -33.744, 0.727), size = Vector(0.081, 0.092, 0.049), color = Color(114, 58, 30, 255), surpresslightning = false, bonemerge = false, material = "models/props_canal/canal_bridge_railing_01c", skin = 0, bodygroup = {} },
		["plank"] = { type = "Model", model = "models/Mechanics/gears2/pinion_40t2.mdl", bone = "v_weapon.famas", rel = "handle", pos = Vector(0.02899, 8.09192, 4.16605), angle = Angle(1.48709, -89.84393, -89.35958), size = Vector(0.043, 0.044, 0.033), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} },
		["red dot"] = { type = "Model", model = "models/Mechanics/gears/gear16x12_small.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "red dot sight", pos = Vector(0.4744, -0.02899, 0.29019), angle = Angle(3.41901, -14.95539, 177.30856), size = Vector(0.01, 0.01, 0.01), color = Color(255, 0, 0, 255), surpresslightning = false, bonemerge = false, material = "models/props/cs_office/clouds", skin = 0, bodygroup = {} },
		["red dot sight"] = { type = "Model", model = "models/hunter/misc/roundthing2.mdl", bone = "v_weapon.famas", rel = "handle", pos = Vector(0.03903, 8.39905, 4.25099), angle = Angle(88.54093, 70.62327, -160.48227), size = Vector(0.007, 0.005, 0.017), color = Color(72, 72, 72, 255), surpresslightning = false, bonemerge = false, material = "models/props_canal/canal_bridge_railing_01c", skin = 0, bodygroup = {} },
		["red dot sight1"] = { type = "Model", model = "models/hunter/tubes/tube1x1x1.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "red dot sight", pos = Vector(0.512, -0.015, 1.089), angle = Angle(-0.277, 0.372, 179.914), size = Vector(0.018, 0.018, 0.03), color = Color(72, 72, 72, 255), surpresslightning = false, bonemerge = false, material = "models/props_canal/canal_bridge_railing_01c", skin = 0, bodygroup = {} },
		["red dot+"] = { type = "Model", model = "models/Mechanics/gears/gear16x12_small.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "red dot sight", pos = Vector(0.4744, -0.02899, 0.29019), angle = Angle(1.38919, 17.15314, 179.94507), size = Vector(0.01, 0.01, 0.01), color = Color(255, 0, 0, 255), surpresslightning = false, bonemerge = false, material = "models/props/cs_office/clouds", skin = 0, bodygroup = {} },
		["red dot++"] = { type = "Model", model = "models/Mechanics/gears/gear16x12_small.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "red dot sight", pos = Vector(0.4744, -0.02899, 0.29019), angle = Angle(1.39294, -17.35034, -179.1911), size = Vector(0.01, 0.01, 0.01), color = Color(255, 0, 0, 255), surpresslightning = false, bonemerge = false, material = "models/props/cs_office/clouds", skin = 0, bodygroup = {} },
		["red dot+++"] = { type = "Model", model = "models/Mechanics/gears/gear16x12_small.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "red dot sight", pos = Vector(0.4744, -0.02899, 0.29019), angle = Angle(1.1268, 38.98291, 179.4599), size = Vector(0.01, 0.01, 0.01), color = Color(255, 0, 0, 255), surpresslightning = false, bonemerge = false, material = "models/props/cs_office/clouds", skin = 0, bodygroup = {} },
		["red dot++++"] = { type = "Model", model = "models/Mechanics/gears/gear16x12_small.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "red dot sight", pos = Vector(0.4744, -0.02899, 0.29019), angle = Angle(1.39776, -16.69014, -179.20718), size = Vector(0.01, 0.01, 0.01), color = Color(255, 0, 0, 255), surpresslightning = false, bonemerge = false, material = "models/props/cs_office/clouds", skin = 0, bodygroup = {} },
		["red dot+++++"] = { type = "Model", model = "models/Mechanics/gears/gear16x12_small.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "red dot sight", pos = Vector(0.4744, -0.02899, 0.29019), angle = Angle(1.3195, 24.7129, 179.76613), size = Vector(0.01, 0.01, 0.01), color = Color(255, 0, 0, 255), surpresslightning = false, bonemerge = false, material = "models/props/cs_office/clouds", skin = 0, bodygroup = {} },
		["red dot++++++"] = { type = "Model", model = "models/Mechanics/gears/gear16x12_small.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "red dot sight", pos = Vector(0.4744, -0.02899, 0.29019), angle = Angle(0.57444, -67.12364, -178.27843), size = Vector(0.01, 0.01, 0.01), color = Color(255, 0, 0, 255), surpresslightning = false, bonemerge = false, material = "models/props/cs_office/clouds", skin = 0, bodygroup = {} },
		["red dot+++++++"] = { type = "Model", model = "models/Mechanics/gears/gear16x12_small.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "red dot sight", pos = Vector(0.4744, -0.02899, 0.29019), angle = Angle(0.66025, -63.39637, -178.31865), size = Vector(0.01, 0.01, 0.01), color = Color(255, 0, 0, 255), surpresslightning = false, bonemerge = false, material = "models/props/cs_office/clouds", skin = 0, bodygroup = {} },
		["regulator"] = { type = "Model", model = "models/Mechanics/gears2/gear_24t3.mdl", bone = "v_weapon.famas", rel = "red dot sight", pos = Vector(1.03351, 0.0014, 0.38062), angle = Angle(-10.13672, -90.23307, -89.64693), size = Vector(0.01, 0.01, 0.01), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} },
		["sight"] = { type = "Model", model = "models/phxtended/tri2x1x1.mdl", bone = "v_weapon.famas", rel = "handle", pos = Vector(-0.22095, 15.14716, 2.15399), angle = Angle(-1.756, 89.792, 88.30499), size = Vector(0.017, 0.013, 0.009), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/props_canal/canal_bridge_railing_01c", skin = 0, bodygroup = {} },
		["sight2"] = { type = "Model", model = "models/mechanics/articulating/arm_base_b.mdl", bone = "v_weapon.famas", rel = "handle", pos = Vector(-0.24591, 15.00116, 3.40201), angle = Angle(-1.021, -178.73801, 0.696), size = Vector(0.013, 0.011, 0.01), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/props_canal/canal_bridge_railing_01c", skin = 0, bodygroup = {} },
		["sight3"] = { type = "Model", model = "models/hunter/blocks/cube05x05x05.mdl", bone = "v_weapon.famas", rel = "handle", pos = Vector(-0.03397, 14.97211, 3.149), angle = Angle(88.26999, 143.86897, 36.29), size = Vector(0.022, 0.013, 0.019), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/props_canal/canal_bridge_railing_01c", skin = 0, bodygroup = {} },
		["trigger"] = { type = "Model", model = "models/props_phx/construct/metal_wire1x2b.mdl", bone = "v_weapon.famas", rel = "handle", pos = Vector(-0.01096, 7.2691, -0.68799), angle = Angle(82.58793, 145.11102, 35.12499), size = Vector(0.048, 0.048, 0.048), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/props_canal/canal_bridge_railing_01c", skin = 0, bodygroup = {} },
		["trigger1"] = { type = "Model", model = "models/mechanics/robotics/claw2.mdl", bone = "v_weapon.trigger", rel = "handle", pos = Vector(-0.02295, 8.45514, -0.46701), angle = Angle(0.641, -91.15598, 93.48099), size = Vector(0.017, 0.017, 0.017), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/props_canal/canal_bridge_railing_01c", skin = 0, bodygroup = {} },
		["triggerg"] = { type = "Model", model = "models/mechanics/robotics/claw.mdl", bone = "v_weapon.famas", rel = "handle", pos = Vector(0.13202, 10.09705, -0.65698), angle = Angle(-1.402, 81.369, 81.25703), size = Vector(0.025, 0.031, 0.023), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/props_canal/canal_bridge_railing_01c", skin = 0, bodygroup = {} },
		["weapon base"] = { type = "Model", model = "models/hunter/blocks/cube075x2x075.mdl", bone = "v_weapon.famas", rel = "handle", pos = Vector(-0.18701, 9.3941, 1.42502), angle = Angle(88.56097, 73.88795, 106.23301), size = Vector(0.068, 0.123, 0.028), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/props_canal/canal_bridge_railing_01c", skin = 0, bodygroup = {} }
	}
	
	SWEP.WElements = {
		["Grip"] = { type = "Model", model = "models/props_phx/misc/iron_beam1.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "handle", pos = Vector(-0.281, 6.393, -2.01), angle = Angle(78.049, -120.179, -60.473), size = Vector(0.091, 0.221, 0.096), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/props_canal/canal_bridge_railing_01c", skin = 0, bodygroup = {} },
		["barrel"] = { type = "Model", model = "models/mechanics/robotics/a2.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "handle", pos = Vector(0.009, 16.258, 2.049), angle = Angle(1.932, -89.833, -96.006), size = Vector(0.12, 0.059, 0.057), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/props_canal/canal_bridge_railing_01c", skin = 0, bodygroup = {} },
		["barrel connector"] = { type = "Model", model = "models/hunter/blocks/cube05x105x05.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "handle", pos = Vector(0.015, 16.905, 1.217), angle = Angle(1.262, -0.355, -1.971), size = Vector(0.018, 0.051, 0.052), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/props_canal/canal_bridge_railing_01c", skin = 0, bodygroup = {} },
		["bolt"] = { type = "Model", model = "models/mechanics/robotics/a3.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "handle", pos = Vector(0.05, 8.807, 2.415), angle = Angle(1.744, -90.089, 75.708), size = Vector(0.098, 0.03, 0.03), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/props_pipes/pipeset_metal02", skin = 0, bodygroup = {} },
		["bolt1"] = { type = "Model", model = "models/mechanics/roboticslarge/d1.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "handle", pos = Vector(0.026, 9.841, 2.669), angle = Angle(-1.742, 90.122, 87.994), size = Vector(0.014, 0.014, 0.014), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/props_pipes/pipeset_metal02", skin = 0, bodygroup = {} },
		["bolt2"] = { type = "Model", model = "models/mechanics/robotics/a1.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "handle", pos = Vector(0.055, 11.796, 2.338), angle = Angle(2.082, -89.843, -91.144), size = Vector(0.077, 0.066, 0.047), color = Color(72, 72, 72, 255), surpresslightning = false, bonemerge = false, material = "models/props_pipes/pipeset_metal02", skin = 0, bodygroup = {} },
		["bolt3"] = { type = "Model", model = "models/squad/sf_tubes/sf_tube1x180.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "handle", pos = Vector(0.088, 12.958, 2.421), angle = Angle(-1.706, 97.291, 0.383), size = Vector(0.006, 0.005, 0.006), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/props_pipes/pipeset_metal02", skin = 0, bodygroup = {} },
		["carryhandle+"] = { type = "Model", model = "models/hunter/blocks/cube075x2x025.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "handle", pos = Vector(0.011, 5.356, 2.763), angle = Angle(-0.369, -179.839, -88.257), size = Vector(0.014, 0.027, 0.022), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/props_canal/canal_bridge_railing_01c", skin = 0, bodygroup = {} },
		["carryhandle++"] = { type = "Model", model = "models/hunter/blocks/cube075x2x025.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "handle", pos = Vector(0.019, 8.067, 3.977), angle = Angle(-1.248, -179.63499, -178.50999), size = Vector(0.014, 0.057, 0.022), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/props_canal/canal_bridge_railing_01c", skin = 0, bodygroup = {} },
		["carryhandle+++"] = { type = "Model", model = "models/props_phx/construct/metal_wire1x2.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "handle", pos = Vector(0.041, 10.614, 3.47), angle = Angle(-0.394, -179.838, -88.257), size = Vector(0.011, 0.024, 0.022), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/props_canal/canal_bridge_railing_01c", skin = 0, bodygroup = {} },
		["carryhandle++++"] = { type = "Model", model = "models/props_phx/construct/metal_wire1x1.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "handle", pos = Vector(0.052, 10.635, 2.967), angle = Angle(-0.339, -179.84, -88.257), size = Vector(0.011, 0.023, 0.022), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/props_canal/canal_bridge_railing_01c", skin = 0, bodygroup = {} },
		["gbarrel"] = { type = "Model", model = "models/props_phx/gears/bevel24.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "handle", pos = Vector(0.008, 18.839, 0.431), angle = Angle(81.354, 40.358, 49.482), size = Vector(0.039, 0.039, 0.039), color = Color(0, 0, 0, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} },
		["granade launcher"] = { type = "Model", model = "models/xqm/cylinderx1medium.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "handle", pos = Vector(-0.031, 17.1, 0.344), angle = Angle(1.78, -89.094, 93.312), size = Vector(0.147, 0.079, 0.075), color = Color(109, 109, 109, 255), surpresslightning = false, bonemerge = false, material = "models/props_canal/canal_bridge_railing_01c", skin = 0, bodygroup = {} },
		["handle"] = { type = "Model", model = "models/props_combine/combine_train02a.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(-2.189, 0.268, -1.724), angle = Angle(1.332, -91.898, 177.108), size = Vector(0.016, 0.018, 0.02), color = Color(109, 109, 109, 255), surpresslightning = false, bonemerge = false, material = "models/props_canal/canal_bridge_railing_01c", skin = 0, bodygroup = {} },
		["handle 2"] = { type = "Model", model = "models/phxtended/tri2x1x1solid.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "handle", pos = Vector(0.279, 5.331, 1.492), angle = Angle(88.317, 105.004, -106.261), size = Vector(0.027, 0.033, 0.011), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/props_canal/canal_bridge_railing_01c", skin = 0, bodygroup = {} },
		["handle1"] = { type = "Model", model = "models/mechanics/robotics/a2.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "handle", pos = Vector(-0.165, -5.293, -0.418), angle = Angle(87.239, -30.201, -146.37199), size = Vector(0.112, 0.112, 0.112), color = Color(72, 72, 72, 255), surpresslightning = false, bonemerge = false, material = "models/props_canal/canal_bridge_railing_01c", skin = 0, bodygroup = {} },
		["handle1+"] = { type = "Model", model = "models/mechanics/robotics/a2.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "handle", pos = Vector(-0.171, -3.795, -1.879), angle = Angle(46.942, -90.177, -86.159), size = Vector(0.071, 0.071, 0.071), color = Color(72, 72, 72, 255), surpresslightning = false, bonemerge = false, material = "models/props_canal/canal_bridge_railing_01c", skin = 0, bodygroup = {} },
		["lgrip"] = { type = "Model", model = "models/props_c17/utilityconnecter006c.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "handle", pos = Vector(-0.028, 12.901, 0.347), angle = Angle(86.451, 1.841, -91.796), size = Vector(0.114, 0.097, 0.115), color = Color(109, 109, 109, 255), surpresslightning = false, bonemerge = false, material = "models/props_canal/canal_bridge_railing_01c", skin = 0, bodygroup = {} },
		["magazine"] = { type = "Model", model = "models/hunter/blocks/cube075x1x025.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "handle", pos = Vector(0.179, 0.743, -3.023), angle = Angle(-19.34, -89.783, -89.837), size = Vector(0.081, 0.091, 0.05), color = Color(110, 57, 31, 255), surpresslightning = false, bonemerge = false, material = "models/props_canal/canal_bridge_railing_01c", skin = 0, bodygroup = {} },
		["magazine+"] = { type = "Model", model = "models/hunter/blocks/cube075x1x025.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "magazine", pos = Vector(0.961, -3.158, 0.022), angle = Angle(-0.216, -33.744, 0.727), size = Vector(0.081, 0.092, 0.049), color = Color(114, 58, 30, 255), surpresslightning = false, bonemerge = false, material = "models/props_canal/canal_bridge_railing_01c", skin = 0, bodygroup = {} },
		["plank"] = { type = "Model", model = "models/Mechanics/gears2/pinion_40t2.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "handle", pos = Vector(0.029, 8.092, 4.166), angle = Angle(1.487, -89.844, -89.36), size = Vector(0.043, 0.044, 0.033), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} },
		["red dot"] = { type = "Model", model = "models/Mechanics/gears/gear16x12_small.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "red dot sight", pos = Vector(0.474, -0.029, 0.29), angle = Angle(3.419, -14.955, 177.30901), size = Vector(0.01, 0.01, 0.01), color = Color(255, 0, 0, 255), surpresslightning = false, bonemerge = false, material = "models/props/cs_office/clouds", skin = 0, bodygroup = {} },
		["red dot sight"] = { type = "Model", model = "models/hunter/misc/roundthing2.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "handle", pos = Vector(0.039, 8.399, 4.251), angle = Angle(88.541, 70.623, -160.48199), size = Vector(0.007, 0.005, 0.017), color = Color(72, 72, 72, 255), surpresslightning = false, bonemerge = false, material = "models/props_canal/canal_bridge_railing_01c", skin = 0, bodygroup = {} },
		["red dot sight1"] = { type = "Model", model = "models/hunter/tubes/tube1x1x1.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "red dot sight", pos = Vector(0.512, -0.015, 1.089), angle = Angle(-0.277, 0.372, 179.914), size = Vector(0.018, 0.018, 0.03), color = Color(72, 72, 72, 255), surpresslightning = false, bonemerge = false, material = "models/props_canal/canal_bridge_railing_01c", skin = 0, bodygroup = {} },
		["red dot+"] = { type = "Model", model = "models/Mechanics/gears/gear16x12_small.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "red dot sight", pos = Vector(0.474, -0.029, 0.29), angle = Angle(1.389, 17.153, 179.94501), size = Vector(0.01, 0.01, 0.01), color = Color(255, 0, 0, 255), surpresslightning = false, bonemerge = false, material = "models/props/cs_office/clouds", skin = 0, bodygroup = {} },
		["red dot++"] = { type = "Model", model = "models/Mechanics/gears/gear16x12_small.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "red dot sight", pos = Vector(0.474, -0.029, 0.29), angle = Angle(1.393, -17.35, -179.19099), size = Vector(0.01, 0.01, 0.01), color = Color(255, 0, 0, 255), surpresslightning = false, bonemerge = false, material = "models/props/cs_office/clouds", skin = 0, bodygroup = {} },
		["red dot+++"] = { type = "Model", model = "models/Mechanics/gears/gear16x12_small.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "red dot sight", pos = Vector(0.474, -0.029, 0.29), angle = Angle(1.127, 38.983, 179.46001), size = Vector(0.01, 0.01, 0.01), color = Color(255, 0, 0, 255), surpresslightning = false, bonemerge = false, material = "models/props/cs_office/clouds", skin = 0, bodygroup = {} },
		["red dot++++"] = { type = "Model", model = "models/Mechanics/gears/gear16x12_small.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "red dot sight", pos = Vector(0.474, -0.029, 0.29), angle = Angle(1.398, -16.69, -179.207), size = Vector(0.01, 0.01, 0.01), color = Color(255, 0, 0, 255), surpresslightning = false, bonemerge = false, material = "models/props/cs_office/clouds", skin = 0, bodygroup = {} },
		["red dot+++++"] = { type = "Model", model = "models/Mechanics/gears/gear16x12_small.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "red dot sight", pos = Vector(0.474, -0.029, 0.29), angle = Angle(1.32, 24.713, 179.76601), size = Vector(0.01, 0.01, 0.01), color = Color(255, 0, 0, 255), surpresslightning = false, bonemerge = false, material = "models/props/cs_office/clouds", skin = 0, bodygroup = {} },
		["red dot++++++"] = { type = "Model", model = "models/Mechanics/gears/gear16x12_small.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "red dot sight", pos = Vector(0.474, -0.029, 0.29), angle = Angle(0.574, -67.124, -178.278), size = Vector(0.01, 0.01, 0.01), color = Color(255, 0, 0, 255), surpresslightning = false, bonemerge = false, material = "models/props/cs_office/clouds", skin = 0, bodygroup = {} },
		["red dot+++++++"] = { type = "Model", model = "models/Mechanics/gears/gear16x12_small.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "red dot sight", pos = Vector(0.474, -0.029, 0.29), angle = Angle(0.66, -63.396, -178.319), size = Vector(0.01, 0.01, 0.01), color = Color(255, 0, 0, 255), surpresslightning = false, bonemerge = false, material = "models/props/cs_office/clouds", skin = 0, bodygroup = {} },
		["regulator"] = { type = "Model", model = "models/Mechanics/gears2/gear_24t3.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "red dot sight", pos = Vector(1.034, 0.001, 0.381), angle = Angle(-10.137, -90.233, -89.647), size = Vector(0.01, 0.01, 0.01), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} },
		["sight"] = { type = "Model", model = "models/phxtended/tri2x1x1.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "handle", pos = Vector(-0.221, 15.147, 2.154), angle = Angle(-1.756, 89.792, 88.305), size = Vector(0.017, 0.013, 0.009), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/props_canal/canal_bridge_railing_01c", skin = 0, bodygroup = {} },
		["sight2"] = { type = "Model", model = "models/mechanics/articulating/arm_base_b.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "handle", pos = Vector(-0.246, 15.001, 3.402), angle = Angle(-1.021, -178.73801, 0.696), size = Vector(0.013, 0.011, 0.01), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/props_canal/canal_bridge_railing_01c", skin = 0, bodygroup = {} },
		["sight3"] = { type = "Model", model = "models/hunter/blocks/cube05x05x05.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "handle", pos = Vector(-0.034, 14.972, 3.149), angle = Angle(88.27, 143.869, 36.29), size = Vector(0.022, 0.013, 0.019), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/props_canal/canal_bridge_railing_01c", skin = 0, bodygroup = {} },
		["trigger"] = { type = "Model", model = "models/props_phx/construct/metal_wire1x2b.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "handle", pos = Vector(-0.011, 7.269, -0.688), angle = Angle(82.588, 145.11099, 35.125), size = Vector(0.048, 0.048, 0.048), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/props_canal/canal_bridge_railing_01c", skin = 0, bodygroup = {} },
		["trigger1"] = { type = "Model", model = "models/mechanics/robotics/claw2.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "handle", pos = Vector(-0.023, 8.455, -0.467), angle = Angle(0.641, -91.156, 93.481), size = Vector(0.017, 0.017, 0.017), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/props_canal/canal_bridge_railing_01c", skin = 0, bodygroup = {} },
		["triggerg"] = { type = "Model", model = "models/mechanics/robotics/claw.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "handle", pos = Vector(0.132, 10.097, -0.657), angle = Angle(-1.402, 81.369, 81.257), size = Vector(0.025, 0.031, 0.023), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/props_canal/canal_bridge_railing_01c", skin = 0, bodygroup = {} },
		["weapon base"] = { type = "Model", model = "models/hunter/blocks/cube075x2x075.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "handle", pos = Vector(-0.187, 9.394, 1.425), angle = Angle(88.561, 73.888, 106.233), size = Vector(0.068, 0.123, 0.028), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/props_canal/canal_bridge_railing_01c", skin = 0, bodygroup = {} }
	}
end

SWEP.Base = "weapon_zs_base"

SWEP.HoldType = "shotgun"
SWEP.IronSightsHoldType = "smg"
SWEP.ViewModel = "models/weapons/cstrike/c_rif_famas.mdl"
SWEP.WorldModel = "models/weapons/w_rif_famas.mdl"
SWEP.ShowViewModel = false
SWEP.ShowWorldModel = false
SWEP.UseHands = true

SWEP.Primary.Sound = Sound("Weapon_m4a1.Single")
SWEP.Primary.Damage = 19
SWEP.Primary.NumShots = 1
SWEP.Primary.Delay = 0.11

SWEP.Primary.ClipSize = 30
SWEP.Primary.Automatic = true
SWEP.Primary.Ammo = "smg1"
GAMEMODE:SetupDefaultClip(SWEP.Primary)

SWEP.Primary.Gesture = ACT_HL2MP_GESTURE_RANGE_ATTACK_SHOTGUN
SWEP.ReloadGesture = ACT_HL2MP_GESTURE_RELOAD_SMG1

SWEP.ConeMax = 0.09
SWEP.ConeMin = 0.01
SWEP.MovingConeOffset = -0.01

GAMEMODE:SetupAimDefaults(SWEP,SWEP.Primary)

SWEP.Recoil = 0.3
SWEP.WalkSpeed = SPEED_SLOW

SWEP.IronSightsAng = Vector(0.8, 0, 0)
SWEP.IronSightsPos = Vector(-5.33, 7, 1.8)
SWEP.Ticked = 0
function SWEP:SetupDataTables()
	self:NetworkVar( "Float" , 9 , "Damages" )
	if self.BaseClass.SetupDataTables then
		self.BaseClass.SetupDataTables(self)
	end
end
function SWEP:Initialize()
	self:SetDamages(0)
	self.BaseClass.Initialize(self)
end
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
function  SWEP:ShootBullets(dmg,nmd,col)
	if self:GetMagazine() ~= 1 then
		local owner = self:GetOwner()
		local aimvec = owner:GetAimVector()
		self:SendWeaponAnimation()
		owner:DoAttackEvent()
		if SERVER then
			local ent = ents.Create("projectile_bleedbolt")
			if ent:IsValid() then
				ent:SetPos(owner:GetShootPos())
				ent:SetAngles(aimvec:Angle())
				ent:SetOwner(owner)
				ent:Spawn()
				ent.Damage = self.Primary.Damage
				local phys = ent:GetPhysicsObject()
				if phys:IsValid() then
					phys:Wake()
					phys:SetVelocity(aimvec *2300)
				end
				--ent:SetVelocity(aimvec *2200)
			end
		end
		return
	end
	self.BaseClass.ShootBullets(self,dmg,nmd,col)
end
function SWEP:Reload()
	if self:GetOwner():IsHolding() then return end
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
local math_random = math.random
function SWEP:SecondaryAttack()
	if self:GetDamages() >= 250 then
		self:SetNextPrimaryFire(CurTime()+1)
		local owner = self:GetOwner()
		self:SendWeaponAnimation()
		owner:DoAttackEvent()
		local aimvec = owner:GetAimVector()
		self:EmitSound("weapons/grenade_launcher1.wav", 70, math_random(140,150), 60, CHAN_WEAPON)
		if SERVER then
			local ent = ents.Create('projectile_mp1_grenade')
			if ent:IsValid() then
				ent:SetPos(owner:GetShootPos())
				ent:SetAngles(aimvec:Angle())
				ent:SetOwner(owner)
				ent:Spawn()
				ent.Damage = self.Primary.Damage*3
				local phys = ent:GetPhysicsObject()
				if phys:IsValid() then
					phys:Wake()
					phys:SetVelocity(aimvec *2300)
				end
			end
		end
		self:SetDamages(self:GetDamages()-250)
	end
end
SWEP.NextMagazCheck = 0
function SWEP:Think()
	local curtime = CurTime()
	if self.BaseClass.Think then
		self.BaseClass.Think(self)
	end

	local owner = self:GetOwner()
	if owner:KeyDown(IN_RELOAD) and self.NextMagazCheck < curtime then
		local mag = self:GetMagazineChange()
		self:SetMagazineChange(mag+0.01)
		if mag == 1 then
			self:SetMagazine(self:GetMagazine()%2+1)
			if self:GetMagazine() == 1 then
				self.Primary.Delay = 0.09
			else
				self.Primary.Delay = 0.11
			end
			self:SetDTBool(12,false)
			if SERVER then
				owner:GiveAmmo(self:Clip1() or 0,self.Primary.Ammo)
			end
			
			self:SetClip1(0)
			self.NextMagazCheck = curtime + 2
			self:Reload()
		end
	else
		self:SetMagazineChange(self:GetMagazineChange()-0.05)
	end
end
function SWEP.BulletCallback(attacker, tr, dmginfo)
	if CLIENT or !tr.Entity or !tr.Entity:IsPlayer() then return end
	local self = attacker:GetActiveWeapon()
	self:SetDamages(math.min(501,dmginfo:GetDamage()*3+self:GetDamages()))
end
if CLIENT then
	local colBG = Color(16, 16, 16, 90)
local colRed = Color(220, 0, 0, 230)
local colYellow = Color(220, 220, 0, 230)
local colWhite = Color(220, 220, 220, 230)
	local function drawers(self,clip, spare, maxclip, wid, hei, x, y, requiredclip, noclip, onlyclip,lowthreshold, is3d, pos, ang, hud3dscale)
				cam.Start3D2D(pos, ang, (hud3dscale and hud3dscale or 0.01) / 2)
				draw.RoundedBoxEx(16, x, y, wid, hei, colBG, true, false, true, false)
				local font = "ZS3D2DFont"
				local grenades = math.Round(self:GetDamages()/250,3)*100
				draw.SimpleTextBlurry(grenades.."%",font, x + wid * 0.5, y + hei * 0.5, grenades < 100 and colRed or colWhite, TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
				cam.End3D2D()
	end
	local function drawers2(self,clip, spare, maxclip, wid, hei, x, y, requiredclip, noclip, onlyclip,lowthreshold, is3d, pos, ang, hud3dscale)
		cam.Start3D2D(pos, ang, (hud3dscale and hud3dscale or 0.01) / 2)
		draw.RoundedBoxEx(16, x, y, wid*1.6, hei, colBG, true, false, true, false)
		local font = "ZS3D2DFontSmall"
		draw.SimpleTextBlurry(self:GetMagazine() == 1 and "ОБЫЧНЫЙ" or "ПОДВОДНЫЙ",font, x + wid * 0.75, y + hei * 0.5, colWhite, TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
		cam.End3D2D()
end
	function SWEP:Draw3DHUD(vm, pos, ang)
		local wid, hei = 180, 200
		local x, y = wid * -0.6, hei * -0.5
		local clip = self:Clip1()
		local spare = self:Ammo1()
		local maxclip = self.Primary.ClipSize
		draw.DrawAmmoHud(clip,spare,maxclip,wid,hei,x,y,self.RequiredClip,self.HasNoClip,self.ShowOnlyClip,self.LowAmmoThreshold,true,pos,ang,self.HUD3DScale)
		y = y + 220
		drawers(self,clip,spare,maxclip,wid,hei,x,y,self.RequiredClip,self.HasNoClip,self.ShowOnlyClip,self.LowAmmoThreshold,true,pos,ang,self.HUD3DScale)
		y = y - 440
		drawers2(self,clip,spare,maxclip,wid,hei,x,y,self.RequiredClip,self.HasNoClip,self.ShowOnlyClip,self.LowAmmoThreshold,true,pos,ang,self.HUD3DScale)
	end
	
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
	function SWEP:DrawHUD()
		if self.BaseClass.DrawHUD then
			self.BaseClass.DrawHUD(self)
		end
		local x, y = ScrW()/2, ScrH()/2
		color = Color(72,255,0)
		DrawHollowCircle(x, y, 50*self:GetMagazineChange(), 50*self:GetMagazineChange(), 0, 360, color)
	end
end