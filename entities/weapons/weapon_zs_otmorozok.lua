AddCSLuaFile()

if CLIENT then
	SWEP.TranslateName = "weapon_otmorozok_name"
	SWEP.TranslateDesc = "weapon_otmorozok_desc"
	SWEP.Slot = 0
	SWEP.SlotPos = 0

	SWEP.ViewModelFOV = 70
	SWEP.ViewModelFlip = false
	SWEP.ViewModelBoneMods = {
		["ValveBiped.Bip01_L_UpperArm"] = { scale = Vector(1, 1, 1), pos = Vector(0.862, 3, -16.016), angle = Angle(4.147, -12.147, 0.461) },
		["ValveBiped.Bip01_Spine4"] = { scale = Vector(1, 1, 1), pos = Vector(0, -14.78, 0), angle = Angle(0, 0, 0) }
	}
	
	SWEP.SCKMaterials = {}
	
	
	SWEP.VElements = {
		["Nitrogen"] = { type = "Model", model = "models/props_c17/canister01a.mdl", bone = "ValveBiped.Bip01_L_Hand", rel = "weapon", pos = Vector(12.586, 0.229, -3.307), angle = Angle(84.28, -73.659, -105.395), size = Vector(0.428, 0.485, 0.183), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} },
		["barrel"] = { type = "Model", model = "models/props_phx/misc/iron_beam1.mdl", bone = "ValveBiped.Bip01_L_Hand", rel = "weapon", pos = Vector(19.675, -0.252, 0.016), angle = Angle(-33.642, -89.753, 3.164), size = Vector(0.136, 0.058, 0.039), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} },
		["barrel+"] = { type = "Model", model = "models/props_phx/misc/iron_beam1.mdl", bone = "ValveBiped.Bip01_L_Hand", rel = "barrel", pos = Vector(-0.002, -0.013, 0.121), angle = Angle(-84.674, -134.953, -134.409), size = Vector(0.136, 0.058, 0.039), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} },
		["barrel1"] = { type = "Model", model = "models/props_phx/construct/metal_dome360.mdl", bone = "ValveBiped.Bip01_L_Hand", rel = "barrel", pos = Vector(0.264, 0.572, 0.18), angle = Angle(25.246, -178.91701, 87.207), size = Vector(0.023, 0.023, 0.023), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} },
		["barrel2"] = { type = "Model", model = "models/props_phx/gears/bevel24.mdl", bone = "ValveBiped.Bip01_L_Hand", rel = "barrel", pos = Vector(0.251, -0.391, 0.23), angle = Angle(63.868, -169.19701, 78.778), size = Vector(0.025, 0.025, 0.025), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} },
		["button"] = { type = "Model", model = "models/mechanics/robotics/a1.mdl", bone = "ValveBiped.Bip01_L_Hand", rel = "weapon", pos = Vector(-0.529, -0.074, -1.654), angle = Angle(77.065, -1.438, -88.752), size = Vector(0.073, 0.042, 0.066), color = Color(255, 0, 0, 255), surpresslightning = false, bonemerge = false, material = "models/XQM/Rails/gumball_1", skin = 0, bodygroup = {} },
		["can of nitrogen"] = { type = "Model", model = "models/props_phx/construct/windows/window_angle360.mdl", bone = "ValveBiped.Bip01_L_Hand", rel = "weapon", pos = Vector(14.125, 1.844, 1.91), angle = Angle(59.678, -90.473, 88.583), size = Vector(0.027, 0.027, 0.027), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} },
		["cap"] = { type = "Model", model = "models/props_phx/construct/windows/window_angle360.mdl", bone = "ValveBiped.Bip01_L_Hand", rel = "can of nitrogen", pos = Vector(-0.115, 0.106, 5.65), angle = Angle(-1.045, -102.057, 1.787), size = Vector(0.026, 0.028, 0.05), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} },
		["coil"] = { type = "Model", model = "models/props_c17/utilityconnecter006.mdl", bone = "ValveBiped.Bip01_L_Hand", rel = "weapon", pos = Vector(12.849, 1.086, -1.294), angle = Angle(9.654, 90.848, 0.859), size = Vector(0.354, 0.529, 0.287), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} },
		["coil+"] = { type = "Model", model = "models/props_c17/utilityconnecter006.mdl", bone = "ValveBiped.Bip01_L_Hand", rel = "weapon", pos = Vector(13.044, -1.224, -1.296), angle = Angle(6.954, 93.376, 0.287), size = Vector(0.354, 0.529, 0.287), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} },
		["coil++"] = { type = "Model", model = "models/props_c17/utilityconnecter006.mdl", bone = "ValveBiped.Bip01_L_Hand", rel = "weapon", pos = Vector(5.612, 0.161, -0.968), angle = Angle(9.654, 90.848, 0.859), size = Vector(0.354, 0.529, 0.287), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} },
		["coil+++"] = { type = "Model", model = "models/props_c17/utilityconnecter006.mdl", bone = "ValveBiped.Bip01_L_Hand", rel = "weapon", pos = Vector(5.635, 0.629, -0.491), angle = Angle(9.654, 90.848, 0.859), size = Vector(0.354, 0.529, 0.287), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} },
		["coil++++"] = { type = "Model", model = "models/props_c17/utilityconnecter006.mdl", bone = "ValveBiped.Bip01_L_Hand", rel = "weapon", pos = Vector(5.589, -0.75, -0.571), angle = Angle(9.654, 90.848, 0.859), size = Vector(0.354, 0.529, 0.287), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} },
		["gear1"] = { type = "Model", model = "models/Mechanics/gears/gear12x12_large.mdl", bone = "ValveBiped.Bip01_L_Hand", rel = "barrel", pos = Vector(-3.228, 0.117, -0.164), angle = Angle(3.779, 11.819, -2.036), size = Vector(0.024, 0.025, 0.027), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} },
		["gear1+"] = { type = "Model", model = "models/Mechanics/gears/gear12x12_large.mdl", bone = "ValveBiped.Bip01_L_Hand", rel = "barrel", pos = Vector(-0.364, 0.06, -2.884), angle = Angle(-81.21, -121.821, -115.777), size = Vector(0.024, 0.025, 0.027), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} },
		["gear1++"] = { type = "Model", model = "models/Mechanics/gears/gear12x12_large.mdl", bone = "ValveBiped.Bip01_L_Hand", rel = "barrel", pos = Vector(0.094, -0.148, 3.133), angle = Angle(-81.21, -121.822, -115.777), size = Vector(0.024, 0.025, 0.027), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} },
		["gear1+++"] = { type = "Model", model = "models/Mechanics/gears/gear12x12_large.mdl", bone = "ValveBiped.Bip01_L_Hand", rel = "barrel", pos = Vector(3.019, 0.116, -0.154), angle = Angle(1.039, 10.303, -5.019), size = Vector(0.024, 0.025, 0.027), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} },
		["grip"] = { type = "Model", model = "models/props_phx/construct/metal_plate_curve360x2.mdl", bone = "ValveBiped.Bip01_L_Hand", rel = "weapon", pos = Vector(5.49, -0.496, 0.071), angle = Angle(73.367, 177.213, 85.765), size = Vector(0.014, 0.014, 0.075), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/props/cs_assault/metal_stairs1", skin = 0, bodygroup = {} },
		["grip2"] = { type = "Model", model = "models/props_lab/teleportring.mdl", bone = "ValveBiped.Bip01_L_Hand", rel = "grip", pos = Vector(-0.873, 0.162, 4.024), angle = Angle(1.657, 92.629, 92.345), size = Vector(0.095, 0.098, 0.166), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} },
		["handle"] = { type = "Model", model = "models/Mechanics/gears2/pinion_20t2.mdl", bone = "ValveBiped.Bip01_L_Hand", rel = "screen", pos = Vector(-0.088, 0.071, -0.455), angle = Angle(-43.141, -179.14799, 90.848), size = Vector(0.024, 0.024, 0.024), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} },
		["isolation"] = { type = "Model", model = "models/props_phx/construct/windows/window_curve360x2.mdl", bone = "ValveBiped.Bip01_L_Hand", rel = "can of nitrogen", pos = Vector(-0.014, -0.03, 0.083), angle = Angle(1.871, 27.524, 1.611), size = Vector(0.027, 0.028, 0.059), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} },
		["liquid nitrogen"] = { type = "Model", model = "models/xqm/cylinderx1medium.mdl", bone = "ValveBiped.Bip01_L_Hand", rel = "can of nitrogen", pos = Vector(-0.017, 0.005, 2.808), angle = Angle(-87.359, 25.618, -82.277), size = Vector(0.236, 0.097, 0.098), color = Color(104, 199, 255, 255), surpresslightning = false, bonemerge = false, material = "models/props/cs_office/clouds", skin = 0, bodygroup = {} },
		["liquid nitrogen+"] = { type = "Model", model = "models/xqm/cylinderx1medium.mdl", bone = "ValveBiped.Bip01_L_Hand", rel = "can of nitrogen", pos = Vector(-0.063, 0.001, 2.802), angle = Angle(-88.389, 51.725, 68.872), size = Vector(0.236, 0.097, 0.098), color = Color(83, 186, 246, 255), surpresslightning = false, bonemerge = false, material = "models/props/cs_office/clouds", skin = 0, bodygroup = {} },
		["liquid nitrogen++"] = { type = "Model", model = "models/xqm/cylinderx1medium.mdl", bone = "ValveBiped.Bip01_L_Hand", rel = "can of nitrogen", pos = Vector(-0.063, 0.001, 2.801), angle = Angle(-88.389, 51.725, 30.42), size = Vector(0.236, 0.097, 0.098), color = Color(83, 189, 250, 255), surpresslightning = false, bonemerge = false, material = "models/props/cs_office/clouds", skin = 0, bodygroup = {} },
		["liquid nitrogen+++"] = { type = "Model", model = "models/xqm/cylinderx1medium.mdl", bone = "ValveBiped.Bip01_L_Hand", rel = "can of nitrogen", pos = Vector(-0.063, 0.001, 2.802), angle = Angle(-88.389, 51.725, 69.944), size = Vector(0.236, 0.097, 0.098), color = Color(102, 199, 255, 255), surpresslightning = false, bonemerge = false, material = "models/props/cs_office/clouds", skin = 0, bodygroup = {} },
		["pump"] = { type = "Model", model = "models/props_phx/gears/bevel24.mdl", bone = "ValveBiped.Bip01_L_Hand", rel = "can of nitrogen", pos = Vector(0.082, -0.036, -0.008), angle = Angle(3.029, 51.568, -172.522), size = Vector(0.027, 0.027, 0.027), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} },
		["pump+"] = { type = "Model", model = "models/props_phx/gears/bevel24.mdl", bone = "ValveBiped.Bip01_L_Hand", rel = "tube", pos = Vector(-4.741, 0.556, 2.77), angle = Angle(-0.79, -39.502, -89.198), size = Vector(0.027, 0.027, 0.027), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} },
		["ripper"] = { type = "Model", model = "models/phxtended/bar1x45a.mdl", bone = "ValveBiped.Bip01_L_Hand", rel = "barrel", pos = Vector(-2.543, -7.612, 0.096), angle = Angle(-80.702, -19.606, 163.155), size = Vector(0.088, 0.169, 0.088), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} },
		["ripper+"] = { type = "Model", model = "models/phxtended/bar1x45a.mdl", bone = "ValveBiped.Bip01_L_Hand", rel = "barrel", pos = Vector(0.281, -7.474, -3.163), angle = Angle(0.011, -4.289, 175.71001), size = Vector(0.088, 0.169, 0.088), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} },
		["ripper++"] = { type = "Model", model = "models/phxtended/bar1x45a.mdl", bone = "ValveBiped.Bip01_L_Hand", rel = "barrel", pos = Vector(3.366, -7.666, -0.563), angle = Angle(86.01, 115.623, 59.845), size = Vector(0.088, 0.169, 0.088), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} },
		["ripper+++"] = { type = "Model", model = "models/phxtended/bar1x45a.mdl", bone = "ValveBiped.Bip01_L_Hand", rel = "barrel", pos = Vector(1.134, -7.687, 2.388), angle = Angle(-0.155, 176.464, 3.053), size = Vector(0.088, 0.169, 0.088), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} },
		["screen"] = { type = "Model", model = "models/props_phx/construct/plastic/plastic_panel1x1.mdl", bone = "ValveBiped.Bip01_L_Hand", rel = "weapon", pos = Vector(5.177, -0.012, 1.828), angle = Angle(77.479, -2.249, 3.656), size = Vector(0.034, 0.052, 0.083), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/props/cs_assault/metal_stairs1", skin = 0, bodygroup = {} },
		["screen+"] = { type = "Model", model = "models/props_phx/construct/plastic/plastic_panel1x1.mdl", bone = "ValveBiped.Bip01_L_Hand", rel = "screen", pos = Vector(-0.009, -0.056, 0.311), angle = Angle(0, 0, 0), size = Vector(0.031, 0.046, 0.016), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/props_combine/combine_interface_disp", skin = 0, bodygroup = {} },
		["system"] = { type = "Model", model = "models/props_combine/combine_train02a.mdl", bone = "ValveBiped.Bip01_L_Hand", rel = "weapon", pos = Vector(-11.291, -0.316, -3.196), angle = Angle(-0.909, -90.839, 177.133), size = Vector(0.016, 0.034, 0.033), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} },
		["tube"] = { type = "Model", model = "models/hunter/tubes/tube1x1x2.mdl", bone = "ValveBiped.Bip01_L_Hand", rel = "weapon", pos = Vector(14.32, 1.858, 2.003), angle = Angle(87.278, -49.872, -126.85), size = Vector(0.011, 0.01, 0.019), color = Color(0, 0, 0, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} },
		["tube+"] = { type = "Model", model = "models/hunter/tubes/tube1x1x2.mdl", bone = "ValveBiped.Bip01_L_Hand", rel = "tube", pos = Vector(-3.467, -0.183, 2.623), angle = Angle(-74.992, 147.07401, 151.162), size = Vector(0.011, 0.01, 0.038), color = Color(0, 0, 0, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} },
		["tube++"] = { type = "Model", model = "models/hunter/tubes/tube1x1x2.mdl", bone = "ValveBiped.Bip01_L_Hand", rel = "tube", pos = Vector(-3.371, -0.199, 2.612), angle = Angle(-2.511, -62.791, 83.859), size = Vector(0.011, 0.011, 0.016), color = Color(0, 0, 0, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} },
		["tube1"] = { type = "Model", model = "models/hunter/misc/sphere075x075.mdl", bone = "ValveBiped.Bip01_L_Hand", rel = "tube", pos = Vector(-0.016, 0.008, 1.828), angle = Angle(11.167, -1.371, 86.316), size = Vector(0.015, 0.015, 0.015), color = Color(0, 0, 0, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} },
		["tube1+"] = { type = "Model", model = "models/hunter/misc/sphere075x075.mdl", bone = "ValveBiped.Bip01_L_Hand", rel = "tube", pos = Vector(-3.465, -0.135, 2.629), angle = Angle(11.167, -1.371, 86.316), size = Vector(0.015, 0.015, 0.015), color = Color(0, 0, 0, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} },
		["weapon"] = { type = "Model", model = "models/mechanics/robotics/a3.mdl", bone = "ValveBiped.Bip01_L_Hand", rel = "", pos = Vector(-1.936, 1.343, 5.257), angle = Angle(-6.901, -18.011, -74.456), size = Vector(0.541, 0.235, 0.207), color = Color(36, 36, 36, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} }
	}
	
	SWEP.WElements = {
		["Nitrogen"] = { type = "Model", model = "models/props_c17/canister01a.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "weapon", pos = Vector(12.586, 0.229, -3.307), angle = Angle(84.28, -73.659, -105.395), size = Vector(0.428, 0.485, 0.183), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} },
		["barrel"] = { type = "Model", model = "models/props_phx/misc/iron_beam1.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "weapon", pos = Vector(19.675, -0.252, 0.016), angle = Angle(-33.642, -89.753, 3.164), size = Vector(0.136, 0.058, 0.039), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} },
		["barrel+"] = { type = "Model", model = "models/props_phx/misc/iron_beam1.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "barrel", pos = Vector(-0.002, -0.013, 0.121), angle = Angle(-84.674, -134.953, -134.409), size = Vector(0.136, 0.058, 0.039), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} },
		["barrel1"] = { type = "Model", model = "models/props_phx/construct/metal_dome360.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "barrel", pos = Vector(0.264, 0.572, 0.18), angle = Angle(25.246, -178.91701, 87.207), size = Vector(0.023, 0.023, 0.023), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} },
		["barrel2"] = { type = "Model", model = "models/props_phx/gears/bevel24.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "barrel", pos = Vector(0.251, -0.391, 0.23), angle = Angle(63.868, -169.19701, 78.778), size = Vector(0.025, 0.025, 0.025), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} },
		["button"] = { type = "Model", model = "models/mechanics/robotics/a1.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "weapon", pos = Vector(-0.529, -0.074, -1.654), angle = Angle(77.065, -1.438, -88.752), size = Vector(0.073, 0.042, 0.066), color = Color(255, 0, 0, 255), surpresslightning = false, bonemerge = false, material = "models/XQM/Rails/gumball_1", skin = 0, bodygroup = {} },
		["can of nitrogen"] = { type = "Model", model = "models/props_phx/construct/windows/window_angle360.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "weapon", pos = Vector(14.125, 1.844, 1.91), angle = Angle(59.678, -90.473, 88.583), size = Vector(0.027, 0.027, 0.027), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} },
		["cap"] = { type = "Model", model = "models/props_phx/construct/windows/window_angle360.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "can of nitrogen", pos = Vector(-0.115, 0.106, 5.65), angle = Angle(-1.045, -102.057, 1.787), size = Vector(0.026, 0.028, 0.05), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} },
		["coil"] = { type = "Model", model = "models/props_c17/utilityconnecter006.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "weapon", pos = Vector(12.849, 1.086, -1.294), angle = Angle(9.654, 90.848, 0.859), size = Vector(0.354, 0.529, 0.287), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} },
		["coil+"] = { type = "Model", model = "models/props_c17/utilityconnecter006.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "weapon", pos = Vector(13.044, -1.224, -1.296), angle = Angle(6.954, 93.376, 0.287), size = Vector(0.354, 0.529, 0.287), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} },
		["coil++"] = { type = "Model", model = "models/props_c17/utilityconnecter006.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "weapon", pos = Vector(5.612, 0.161, -0.968), angle = Angle(9.654, 90.848, 0.859), size = Vector(0.354, 0.529, 0.287), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} },
		["coil+++"] = { type = "Model", model = "models/props_c17/utilityconnecter006.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "weapon", pos = Vector(5.635, 0.629, -0.491), angle = Angle(9.654, 90.848, 0.859), size = Vector(0.354, 0.529, 0.287), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} },
		["coil++++"] = { type = "Model", model = "models/props_c17/utilityconnecter006.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "weapon", pos = Vector(5.589, -0.75, -0.571), angle = Angle(9.654, 90.848, 0.859), size = Vector(0.354, 0.529, 0.287), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} },
		["gear1"] = { type = "Model", model = "models/Mechanics/gears/gear12x12_large.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "barrel", pos = Vector(-3.228, 0.117, -0.164), angle = Angle(3.779, 11.819, -2.036), size = Vector(0.024, 0.025, 0.027), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} },
		["gear1+"] = { type = "Model", model = "models/Mechanics/gears/gear12x12_large.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "barrel", pos = Vector(-0.364, 0.06, -2.884), angle = Angle(-81.21, -121.821, -115.777), size = Vector(0.024, 0.025, 0.027), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} },
		["gear1++"] = { type = "Model", model = "models/Mechanics/gears/gear12x12_large.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "barrel", pos = Vector(0.094, -0.148, 3.133), angle = Angle(-81.21, -121.822, -115.777), size = Vector(0.024, 0.025, 0.027), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} },
		["gear1+++"] = { type = "Model", model = "models/Mechanics/gears/gear12x12_large.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "barrel", pos = Vector(3.019, 0.116, -0.154), angle = Angle(1.039, 10.303, -5.019), size = Vector(0.024, 0.025, 0.027), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} },
		["grip"] = { type = "Model", model = "models/props_phx/construct/metal_plate_curve360x2.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "weapon", pos = Vector(5.49, -0.496, 0.071), angle = Angle(102.041, 179.09399, 90.731), size = Vector(0.014, 0.018, 0.1), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/props/cs_assault/metal_stairs1", skin = 0, bodygroup = {} },
		["grip2"] = { type = "Model", model = "models/props_lab/teleportring.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "grip", pos = Vector(-0.637, -0.573, 4.889), angle = Angle(1.657, 92.629, 92.345), size = Vector(0.095, 0.147, 0.166), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} },
		["handle"] = { type = "Model", model = "models/Mechanics/gears2/pinion_20t2.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "screen", pos = Vector(-0.088, 0.071, -0.455), angle = Angle(-43.141, -179.14799, 90.848), size = Vector(0.024, 0.024, 0.024), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} },
		["isolation"] = { type = "Model", model = "models/props_phx/construct/windows/window_curve360x2.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "can of nitrogen", pos = Vector(-0.014, -0.03, 0.083), angle = Angle(1.871, 27.524, 1.611), size = Vector(0.027, 0.028, 0.059), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} },
		["liquid nitrogen"] = { type = "Model", model = "models/xqm/cylinderx1medium.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "can of nitrogen", pos = Vector(-0.017, 0.005, 2.808), angle = Angle(-87.359, 25.618, -82.277), size = Vector(0.236, 0.097, 0.098), color = Color(104, 199, 255, 255), surpresslightning = false, bonemerge = false, material = "models/props/cs_office/clouds", skin = 0, bodygroup = {} },
		["liquid nitrogen+"] = { type = "Model", model = "models/xqm/cylinderx1medium.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "can of nitrogen", pos = Vector(-0.063, 0.001, 2.802), angle = Angle(-88.389, 51.725, 68.872), size = Vector(0.236, 0.097, 0.098), color = Color(83, 186, 246, 255), surpresslightning = false, bonemerge = false, material = "models/props/cs_office/clouds", skin = 0, bodygroup = {} },
		["liquid nitrogen++"] = { type = "Model", model = "models/xqm/cylinderx1medium.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "can of nitrogen", pos = Vector(-0.063, 0.001, 2.801), angle = Angle(-88.389, 51.725, 30.42), size = Vector(0.236, 0.097, 0.098), color = Color(83, 189, 250, 255), surpresslightning = false, bonemerge = false, material = "models/props/cs_office/clouds", skin = 0, bodygroup = {} },
		["liquid nitrogen+++"] = { type = "Model", model = "models/xqm/cylinderx1medium.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "can of nitrogen", pos = Vector(-0.063, 0.001, 2.802), angle = Angle(-88.389, 51.725, 69.944), size = Vector(0.236, 0.097, 0.098), color = Color(102, 199, 255, 255), surpresslightning = false, bonemerge = false, material = "models/props/cs_office/clouds", skin = 0, bodygroup = {} },
		["pump"] = { type = "Model", model = "models/props_phx/gears/bevel24.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "can of nitrogen", pos = Vector(0.082, -0.036, -0.008), angle = Angle(3.029, 51.568, -172.522), size = Vector(0.027, 0.027, 0.027), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} },
		["pump+"] = { type = "Model", model = "models/props_phx/gears/bevel24.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "tube", pos = Vector(-4.741, 0.556, 2.77), angle = Angle(-0.79, -39.502, -89.198), size = Vector(0.027, 0.027, 0.027), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} },
		["ripper"] = { type = "Model", model = "models/phxtended/bar1x45a.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "barrel", pos = Vector(-2.543, -7.612, 0.096), angle = Angle(-80.702, -19.606, 163.155), size = Vector(0.088, 0.169, 0.088), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} },
		["ripper+"] = { type = "Model", model = "models/phxtended/bar1x45a.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "barrel", pos = Vector(0.281, -7.474, -3.163), angle = Angle(0.011, -4.289, 175.71001), size = Vector(0.088, 0.169, 0.088), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} },
		["ripper++"] = { type = "Model", model = "models/phxtended/bar1x45a.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "barrel", pos = Vector(3.366, -7.666, -0.563), angle = Angle(86.01, 115.623, 59.845), size = Vector(0.088, 0.169, 0.088), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} },
		["ripper+++"] = { type = "Model", model = "models/phxtended/bar1x45a.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "barrel", pos = Vector(1.134, -7.687, 2.388), angle = Angle(-0.155, 176.464, 3.053), size = Vector(0.088, 0.169, 0.088), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} },
		["screen"] = { type = "Model", model = "models/props_phx/construct/plastic/plastic_panel1x1.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "weapon", pos = Vector(5.177, -0.012, 1.828), angle = Angle(77.479, -2.249, 3.656), size = Vector(0.034, 0.052, 0.083), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/props/cs_assault/metal_stairs1", skin = 0, bodygroup = {} },
		["screen+"] = { type = "Model", model = "models/props_phx/construct/plastic/plastic_panel1x1.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "screen", pos = Vector(-0.009, -0.056, 0.311), angle = Angle(0, 0, 0), size = Vector(0.031, 0.046, 0.016), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/props_combine/combine_interface_disp", skin = 0, bodygroup = {} },
		["system"] = { type = "Model", model = "models/props_combine/combine_train02a.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "weapon", pos = Vector(-11.291, -0.316, -3.196), angle = Angle(-0.909, -90.839, 177.133), size = Vector(0.016, 0.034, 0.033), color = Color(72, 72, 72, 255), surpresslightning = false, bonemerge = false, material = "models/props/cs_assault/metal_stairs1", skin = 0, bodygroup = {} },
		["tube"] = { type = "Model", model = "models/hunter/tubes/tube1x1x2.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "weapon", pos = Vector(14.32, 1.858, 2.003), angle = Angle(87.278, -49.872, -126.85), size = Vector(0.011, 0.01, 0.019), color = Color(0, 0, 0, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} },
		["tube+"] = { type = "Model", model = "models/hunter/tubes/tube1x1x2.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "tube", pos = Vector(-3.467, -0.183, 2.623), angle = Angle(-74.992, 147.07401, 151.162), size = Vector(0.011, 0.01, 0.038), color = Color(0, 0, 0, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} },
		["tube++"] = { type = "Model", model = "models/hunter/tubes/tube1x1x2.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "tube", pos = Vector(-3.371, -0.199, 2.612), angle = Angle(-2.511, -62.791, 83.859), size = Vector(0.011, 0.011, 0.016), color = Color(0, 0, 0, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} },
		["tube1"] = { type = "Model", model = "models/hunter/misc/sphere075x075.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "tube", pos = Vector(-0.016, 0.008, 1.828), angle = Angle(11.167, -1.371, 86.316), size = Vector(0.015, 0.015, 0.015), color = Color(0, 0, 0, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} },
		["tube1+"] = { type = "Model", model = "models/hunter/misc/sphere075x075.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "tube", pos = Vector(-3.465, -0.135, 2.629), angle = Angle(11.167, -1.371, 86.316), size = Vector(0.015, 0.015, 0.015), color = Color(0, 0, 0, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} },
		["weapon"] = { type = "Model", model = "models/mechanics/robotics/a3.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(3.303, 1.981, -1.628), angle = Angle(-19.445, 11.688, -168.912), size = Vector(0.541, 0.235, 0.207), color = Color(25, 24, 24, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} }
	}

end

SWEP.Base = "weapon_zs_base"

SWEP.HoldType = "physgun"
SWEP.ViewModel = "models/weapons/c_physcannon.mdl"
SWEP.WorldModel = "models/weapons/w_physics.mdl"

SWEP.UseHands = true
SWEP.ShowViewModel = false
SWEP.ShowWorldModel = false

SWEP.ReloadSound = Sound("Weapon_AWP.ClipOut")
SWEP.Primary.Sound = nil
SWEP.Primary.Damage = 4
SWEP.Primary.NumShots = 1
SWEP.Primary.Delay = 0.1
SWEP.Recoil = 0.1
SWEP.DefaultRecoil = 0.89
SWEP.Primary.ClipSize = 20
SWEP.Primary.Automatic = true
SWEP.Primary.Ammo = "ar2"
SWEP.Primary.DefaultClip = 40
SWEP.ReloadSpeed = 12
SWEP.HasNoClip = true
SWEP.Primary.Gesture = ACT_HL2MP_GESTURE_RANGE_ATTACK_CROSSBOW
SWEP.ReloadGesture = ACT_HL2MP_GESTURE_RELOAD_SHOTGUN

SWEP.ConeMax = 0
SWEP.ConeMin = 0

GAMEMODE:SetupAimDefaults(SWEP,SWEP.Primary)


	
SWEP.IronSightsPos = Vector(-12.76, 0, 1.04)
SWEP.IronSightsAng = Vector(0, 0, 0)

SWEP.LastAttack = 0

SWEP.WalkSpeed = SPEED_SLOWER
SWEP.IgnoreDamageScaling = true
SWEP.TracerName = nil
SWEP.NextPuke = 1
SWEP.NextEmit = 0
SWEP.NextAmmoTake = 1
function SWEP:Initialize()
	self.FiringSound = CreateSound(self, "^thrusters/rocket02.wav")
	self.FiringSound:SetSoundLevel(85)
	if CLIENT then self.VentingSound = CreateSound(self, "ambient/levels/labs/teleport_alarm_loop1.wav") end

	self.BaseClass.Initialize(self)
end
local function GlassBreak(self, ent, pos)
	if SERVER or !IsValid(ent) then return end
	if ent:IsValid() then
		ent:EmitSound("physics/glass/glass_sheet_break3.wav")
	end

	local emitter = ParticleEmitter(pos)
	emitter:SetNearClip(8, 16)

	local dir, size, brightness
	local gravity = Vector(0, 0, -400)

	for i=1, 30 do
		dir = VectorRand()
		dir:Normalize()
		size = math.Rand(1, 5)
		brightness = math.Rand(0.8, 1.0)

		local particle = emitter:Add("particles/balloon_bit", pos + dir)
		particle:SetVelocity(dir * math.Rand(48, 90))
		particle:SetDieTime(math.Rand(3, 5))
		particle:SetStartAlpha(255)
		particle:SetEndAlpha(100)
		particle:SetStartSize(size)
		particle:SetEndSize(size / 4)
		particle:SetRoll(math.Rand(0, 360))
		particle:SetRollDelta(math.Rand(-2, 2))
		particle:SetGravity(gravity)
		particle:SetColor(230 * brightness, 240 * brightness, 255 * brightness)
		particle:SetCollide(true)
		particle:SetAngleVelocity(Angle(math.Rand(-160, 160), math.Rand(-160, 160), math.Rand(-160, 160)))
		particle:SetBounce(0.9)
	end

	emitter:Finish() emitter = nil collectgarbage("step", 64)
end
function SWEP:Think()
	if CLIENT then
		local ent = self:GetDTEntity(12)
		if ent:IsValid() then
			GlassBreak(self,ent, ent:GetPos())
			self:SetDTEntity(12,NULL)
		end
		return 
	end
	local pl = self:GetOwner()

	if pl:KeyDown(IN_ATTACK) and self:Ammo1() >= 1 and !pl:GetFocusD() then
		if self.NextEmit < CurTime() then
			self.NextEmit = CurTime() + self.Primary.Delay
			pl.LastRangedAttack = CurTime()
			if pl:WaterLevel() < 2 then
				if self.NextAmmoTake <= CurTime() then
					self:TakeAmmo()
					self.NextAmmoTake = CurTime() + 0.1
				end
				local size = 300
				local dir = pl:GetAimVector()
				local angle = math.cos( math.rad( 25 ) ) -- 30 degrees
				local startPos = pl:EyePos()

				local entities = ents.FindInCone( startPos, dir, size, angle )
				for id, ent in ipairs( entities ) do
					if ent:IsValid() and ent:IsPlayer() and ent:Alive() and ent:Team() ~= pl:Team() and WorldVisible(ent:GetPos(),startPos) then
						ent:TakeDamage(self.Primary.Damage,pl,self)
						ent:AddCold(3)
						local cold = ent:GetCold()
						if cold > ent:GetMaximumCold() then
							ent:Kill()
							ent:EmitSound('physics/glass/glass_bottle_break'..math.random(2)..'.wav',70,100,10,CHAN_WEAPON+20)
							self:SetDTEntity(12,ent)
							timer.Simple(0.1, function() self:SetDTEntity(12,NULL) end)
						elseif ent:GetCold() > ent:GetMaximumCold()*0.2 then
							ent:ResetSpeed()
						end
					end
				end
				pl:GiveStatus('flamefix',self.Primary.Delay)
			end
		end
		self.FiringSound:PlayEx(1, 90 + CurTime() % 1)
	else
		self.FiringSound:Stop()
	end

	self:NextThink(CurTime())
	return true
end

function SWEP:StopGluonSounds()
	self.FiringSound:Stop()
	if CLIENT then self.VentingSound:Stop() end
end
function SWEP:Holster()
	self:StopGluonSounds()
	return self.BaseClass.Holster(self)
end

function SWEP:OnRemove()
	self.BaseClass.OnRemove(self)
	self:StopGluonSounds()
end

function SWEP:CanPrimaryAttack()
	if self:Ammo1() < 1 then
		return false
	end
	return self:GetNextPrimaryFire() <= CurTime()
end
function SWEP:PrimaryAttack()
	if !self:GetOwner():KeyDown(IN_ATTACK) or !self:CanPrimaryAttack() then return end
	if !IsFirstTimePredicted() then
		self:EmitSound("ambient/machines/teleport1.wav", 75, 210)
		self:EmitSound("npc/combine_gunship/ping_patrol.wav", 75, 120, 1, CHAN_AUTO+20)
	end
end
function SWEP:EmitReloadSound()
	if IsFirstTimePredicted() then
		timer.Simple(0.3, function() 
		self:EmitSound("player/footsteps/mud"..math.random(3)..".wav", 70, 22, 0.85, CHAN_WEAPON + 23)	
		timer.Create("dsaadsWaterDripping",0.19,6, function() self:EmitSound("ambient/water/drip"..math.random(4)..".wav", 40, 52, 0.25, CHAN_WEAPON + 22) end)
		end)
	end
end

function SWEP:SecondaryAttack()
	if !self:CanSecondaryAttack() then return end
	local owner = self:GetOwner()
	local aimvec = owner:GetAimVector()
	if SERVER then
		local ent = ents.Create("projectile_sosulka")
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
			owner:SetVelocity(aimvec *-400)
			ent:EmitSound("physics/glass/glass_sheet_break3.wav")
		end
		owner:AddCold(45)
    end
	self:SetNextSecondaryFire(CurTime() + 9)
end
function SWEP:Reload()
end

if SERVER then return end
function SWEP:PreDrawViewModel(vm)
	if self.ShowViewModel == false then
		render.SetBlend(0)
	end
	local owner = self:GetOwner()
	local vel = self.VElements
	for k,v in pairs(vel) do
		if string.sub(k,0,#"liquid nitrogen") == "liquid nitrogen" then
			v.color.b = math.Approach(v.color.b,255+(self:Ammo1() -self.Primary.ClipSize)*9,4)
			v.color.g = math.Approach(v.color.g,255+(self:Ammo1() -self.Primary.ClipSize)*9,4)
		elseif k == "barrel"   then
			local angle = vel[k].angle.x
			if owner:KeyDown(IN_ATTACK) then
				vel[k].angle.x = math.Approach(angle, angle+12, FrameTime()*720)
			else
				vel[k].angle.x = math.Approach(angle, math.ceil(angle/180)*180, FrameTime()*420)
			end
		elseif  string.sub(k,0,#"scre") == "scre" then
			v.color.b = math.Approach(v.color.b,255+(CurTime() -self:GetNextSecondaryFire())*15,12)
			v.color.g = math.Approach(v.color.g,115+(CurTime() -self:GetNextSecondaryFire())*15,12)
		end 
	end
end
--math.Approach()
function SWEP:DrawWorldModel()
	local owner = self:GetOwner()
	for k,v in pairs(self.WElements) do
		if string.sub(k,0,#"liquid nitrogen") == "liquid nitrogen" then
			v.color.b = math.Approach(v.color.b,255+(self:Ammo1()-self.Primary.ClipSize)*9,4)
			v.color.g = math.Approach(v.color.b,255+(self:Ammo1()-self.Primary.ClipSize)*9,4)
		elseif k == "barrel"   then
			local angle = self.WElements[k].angle.x
			if owner:KeyDown(IN_ATTACK) then
				self.WElements[k].angle.x = math.Approach(angle, angle+12, FrameTime()*720)
			else
				self.WElements[k].angle.x = math.Approach(angle, math.ceil(angle/180)*180, FrameTime()*420)
			end
		end
	end
	self.BaseClass.DrawWorldModel(self)
end
