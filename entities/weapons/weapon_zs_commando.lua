AddCSLuaFile()

if CLIENT then
	SWEP.TranslateName = "weapon_gigalaunch_name"
	SWEP.TranslateDesc = "weapon_gigalaunch_desc"
	SWEP.Slot = 3
	SWEP.SlotPos = 0
	SWEP.ViewModelFOV = 50
	SWEP.ViewModelFlip = false

	SWEP.ViewModelFOV = 70
	SWEP.ViewModelFlip = false


	SWEP.HUD3DBone = "base"
	SWEP.HUD3DPos = Vector(0.5, -3.5, 22)
	SWEP.HUD3DAng = Angle(180, 0, 0)
	SWEP.HUD3DScale = 0.035


		
		SWEP.VElements = {
			["barrel"] = { type = "Model", model = "models/props_phx/gears/bevel90_24.mdl", bone = "ValveBiped.Bip01_L_Hand", rel = "base", pos = Vector(17.52434, 1.16043, 4.54112), angle = Angle(-85.3428, 79.87274, 81.33068), size = Vector(0.068, 0.068, 0.068), color = Color(0, 0, 0, 255), surpresslightning = false, bonemerge = false, material = "models/props_canal/canal_bridge_railing_01c", skin = 0, bodygroup = {} },
			["barrel+"] = { type = "Model", model = "models/props_phx/gears/bevel90_24.mdl", bone = "ValveBiped.Bip01_L_Hand", rel = "base", pos = Vector(17.50791, -1.20078, 4.52481), angle = Angle(-85.3428, 79.87274, 81.33068), size = Vector(0.068, 0.068, 0.068), color = Color(0, 0, 0, 255), surpresslightning = false, bonemerge = false, material = "models/props_canal/canal_bridge_railing_01c", skin = 0, bodygroup = {} },
			["barrel++"] = { type = "Model", model = "models/props_phx/gears/bevel90_24.mdl", bone = "ValveBiped.Bip01_L_Hand", rel = "base", pos = Vector(17.49757, 1.14938, 2.18313), angle = Angle(-85.3428, 79.87274, 81.33068), size = Vector(0.068, 0.068, 0.068), color = Color(0, 0, 0, 255), surpresslightning = false, bonemerge = false, material = "models/props_canal/canal_bridge_railing_01c", skin = 0, bodygroup = {} },
			["barrel+++"] = { type = "Model", model = "models/props_phx/gears/bevel90_24.mdl", bone = "ValveBiped.Bip01_L_Hand", rel = "base", pos = Vector(17.53196, -1.17407, 2.21043), angle = Angle(-85.3428, 79.87274, 81.33068), size = Vector(0.068, 0.068, 0.068), color = Color(0, 0, 0, 255), surpresslightning = false, bonemerge = false, material = "models/props_canal/canal_bridge_railing_01c", skin = 0, bodygroup = {} },
			["base"] = { type = "Model", model = "models/props_phx/misc/iron_beam1.mdl", bone = "ValveBiped.Bip01_L_Hand", rel = "", pos = Vector(-1.714, 1.175, 2.478), angle = Angle(-0.651, 1.425, -4.589), size = Vector(0.746, 0.669, 0.669), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/props_canal/canal_bridge_railing_01c", skin = 0, bodygroup = {} },
			["can connector"] = { type = "Model", model = "models/hunter/blocks/cube025x075x025.mdl", bone = "ValveBiped.Bip01_L_Hand", rel = "base", pos = Vector(13.85618, -0.3389, -0.36263), angle = Angle(0.56482, 89.99315, 0.13993), size = Vector(0.059, 0.059, 0.059), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/props_canal/canal_bridge_railing_01c", skin = 0, bodygroup = {} },
			["can connector+"] = { type = "Model", model = "models/hunter/blocks/cube025x075x025.mdl", bone = "ValveBiped.Bip01_L_Hand", rel = "base", pos = Vector(-16.7029, -0.31293, -0.45316), angle = Angle(0.56482, 89.99315, 0.13993), size = Vector(0.059, 0.202, 0.056), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/props_canal/canal_bridge_railing_01c", skin = 0, bodygroup = {} },
			["can1"] = { type = "Model", model = "models/props_phx/misc/iron_beam1.mdl", bone = "ValveBiped.Bip01_L_Hand", rel = "base", pos = Vector(16.34682, -0.09406, -4.64989), angle = Angle(0.528, -1.66769, 0.33376), size = Vector(0.025, 0.5, 0.5), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/props_canal/canal_bridge_railing_01c", skin = 0, bodygroup = {} },
			["can1+"] = { type = "Model", model = "models/props_phx/misc/iron_beam1.mdl", bone = "ValveBiped.Bip01_L_Hand", rel = "base", pos = Vector(-12.46476, -0.00211, -4.58733), angle = Angle(0.528, -1.66769, 0.33376), size = Vector(0.025, 0.5, 0.5), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/props_canal/canal_bridge_railing_01c", skin = 0, bodygroup = {} },
			["dot"] = { type = "Model", model = "models/hunter/plates/plate1x1.mdl", bone = "ValveBiped.Bip01_L_Hand", rel = "base", pos = Vector(3.90522, -5.46439, 4.98289), angle = Angle(-80.64752, 149.3002, 150.4016), size = Vector(0.03, 0.03, 0.03), color = Color(235, 9, 9, 0), surpresslightning = false, bonemerge = false, material = "models/weapons/v_smg1/texture5", skin = 0, bodygroup = {} },
			["dot+"] = { type = "Model", model = "models/hunter/plates/plate1x1.mdl", bone = "ValveBiped.Bip01_L_Hand", rel = "base", pos = Vector(3.90526, -5.46436, 4.98288), angle = Angle(-80.64752, 149.30023, 150.40164), size = Vector(0.03, 0.03, 0.03), color = Color(235, 9, 9, 0), surpresslightning = false, bonemerge = false, material = "models/weapons/v_smg1/texture5", skin = 0, bodygroup = {} },
			["dot++"] = { type = "Model", model = "models/hunter/plates/plate1x1.mdl", bone = "ValveBiped.Bip01_L_Hand", rel = "base", pos = Vector(3.90528, -5.46432, 4.98286), angle = Angle(-80.64754, 149.30025, 150.40166), size = Vector(0.03, 0.03, 0.03), color = Color(235, 9, 9, 0), surpresslightning = false, bonemerge = false, material = "models/weapons/v_smg1/texture5", skin = 0, bodygroup = {} },
			["dot+++"] = { type = "Model", model = "models/hunter/plates/plate1x1.mdl", bone = "ValveBiped.Bip01_L_Hand", rel = "base", pos = Vector(3.90531, -5.46432, 4.98286), angle = Angle(-80.64757, 149.30025, 150.40166), size = Vector(0.03, 0.03, 0.03), color = Color(235, 9, 9, 0), surpresslightning = false, bonemerge = false, material = "models/weapons/v_smg1/texture5", skin = 0, bodygroup = {} },
			["dot++++"] = { type = "Model", model = "models/hunter/plates/plate1x1.mdl", bone = "ValveBiped.Bip01_L_Hand", rel = "base", pos = Vector(3.90534, -5.46432, 4.98285), angle = Angle(-80.6476, 149.30026, 150.40167), size = Vector(0.03, 0.03, 0.03), color = Color(235, 9, 9, 0), surpresslightning = false, bonemerge = false, material = "models/weapons/v_smg1/texture5", skin = 0, bodygroup = {} },
			["dot+++++"] = { type = "Model", model = "models/hunter/plates/plate1x1.mdl", bone = "ValveBiped.Bip01_L_Hand", rel = "base", pos = Vector(3.90536, -5.46429, 4.98284), angle = Angle(-80.64762, 149.30026, 150.40164), size = Vector(0.03, 0.03, 0.03), color = Color(235, 9, 9, 0), surpresslightning = false, bonemerge = false, material = "models/weapons/v_smg1/texture5", skin = 0, bodygroup = {} },
			["grip"] = { type = "Model", model = "models/props_phx/misc/iron_beam1.mdl", bone = "ValveBiped.Bip01_L_Hand", rel = "base", pos = Vector(5.87664, 0.12323, -1.88526), angle = Angle(82.19009, -32.70225, 32.68275), size = Vector(0.098, 0.163, 0.185), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/props_canal/canal_bridge_railing_01c", skin = 0, bodygroup = {} },
			["rocket mag+"] = { type = "Model", model = "models/mechanics/robotics/a1.mdl", bone = "ValveBiped.Bip01_L_Hand", rel = "base", pos = Vector(-23.49877, -1.27402, 4.47171), angle = Angle(0.53468, -1.47259, 4.60397), size = Vector(0.607, 0.201, 0.202), color = Color(118, 167, 128, 255), surpresslightning = false, bonemerge = false, material = "models/props_canal/canal_bridge_railing_01c", skin = 0, bodygroup = {} },
			["rocket mag++"] = { type = "Model", model = "models/mechanics/robotics/a1.mdl", bone = "ValveBiped.Bip01_L_Hand", rel = "base", pos = Vector(-23.45409, -1.27295, 1.93181), angle = Angle(0.53468, -1.47259, 4.60397), size = Vector(0.607, 0.201, 0.202), color = Color(123, 163, 132, 255), surpresslightning = false, bonemerge = false, material = "models/props_canal/canal_bridge_railing_01c", skin = 0, bodygroup = {} },
			["rocket mag+++"] = { type = "Model", model = "models/mechanics/robotics/a1.mdl", bone = "ValveBiped.Bip01_L_Hand", rel = "base", pos = Vector(-23.57038, 1.14929, 4.40378), angle = Angle(0.53469, -1.47259, 4.60397), size = Vector(0.607, 0.201, 0.202), color = Color(124, 167, 134, 255), surpresslightning = false, bonemerge = false, material = "models/props_canal/canal_bridge_railing_01c", skin = 0, bodygroup = {} },
			["rocket mag++++"] = { type = "Model", model = "models/mechanics/robotics/a1.mdl", bone = "ValveBiped.Bip01_L_Hand", rel = "base", pos = Vector(-23.54054, 1.2153, 1.98679), angle = Angle(0.50586, -1.83045, 24.45309), size = Vector(0.607, 0.201, 0.202), color = Color(128, 165, 136, 255), surpresslightning = false, bonemerge = false, material = "models/props_canal/canal_bridge_railing_01c", skin = 0, bodygroup = {} },
			["sight"] = { type = "Model", model = "models/phxtended/tri2x1x1.mdl", bone = "ValveBiped.Bip01_L_Hand", rel = "base", pos = Vector(3.198, -1.479, 3.889), angle = Angle(-85.151, 106.916, 106.328), size = Vector(0.044, 0.044, 0.044), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/gibs/metalgibs/metal_gibs", skin = 0, bodygroup = {} },
			["sight can"] = { type = "Model", model = "models/hunter/tubes/circle2x2.mdl", bone = "ValveBiped.Bip01_L_Hand", rel = "base", pos = Vector(6.41951, -5.48001, 6.40028), angle = Angle(4.75998, 86.02705, -46.92081), size = Vector(0.018, 0.018, 0.018), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/gibs/metalgibs/metal_gibs", skin = 0, bodygroup = {} },
			["sight1"] = { type = "Model", model = "models/hunter/tubes/tube1x1x2.mdl", bone = "ValveBiped.Bip01_L_Hand", rel = "base", pos = Vector(5.92369, -5.51379, 4.95171), angle = Angle(85.27893, -77.49761, 76.83962), size = Vector(0.037, 0.037, 0.037), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/gibs/metalgibs/metal_gibs", skin = 0, bodygroup = {} },
			["trigger"] = { type = "Model", model = "models/mechanics/robotics/a1.mdl", bone = "ValveBiped.Bip01_L_Hand", rel = "base", pos = Vector(6.27831, 0.34503, -0.51384), angle = Angle(82.61366, -38.82887, 44.88671), size = Vector(0.065, 0.065, 0.065), color = Color(255, 0, 0, 255), surpresslightning = false, bonemerge = false, material = "models/props_canal/canal_bridge_railing_01c", skin = 0, bodygroup = {} }
		}
		
		SWEP.WElements = {
			["barrel"] = { type = "Model", model = "models/props_phx/gears/bevel90_24.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "base", pos = Vector(17.524, 1.16, 4.541), angle = Angle(-85.343, 79.873, 81.331), size = Vector(0.068, 0.068, 0.068), color = Color(0, 0, 0, 255), surpresslightning = false, bonemerge = false, material = "models/props_canal/canal_bridge_railing_01c", skin = 0, bodygroup = {} },
			["barrel+"] = { type = "Model", model = "models/props_phx/gears/bevel90_24.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "base", pos = Vector(17.508, -1.201, 4.525), angle = Angle(-85.343, 79.873, 81.331), size = Vector(0.068, 0.068, 0.068), color = Color(0, 0, 0, 255), surpresslightning = false, bonemerge = false, material = "models/props_canal/canal_bridge_railing_01c", skin = 0, bodygroup = {} },
			["barrel++"] = { type = "Model", model = "models/props_phx/gears/bevel90_24.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "base", pos = Vector(17.498, 1.149, 2.183), angle = Angle(-85.343, 79.873, 81.331), size = Vector(0.068, 0.068, 0.068), color = Color(0, 0, 0, 255), surpresslightning = false, bonemerge = false, material = "models/props_canal/canal_bridge_railing_01c", skin = 0, bodygroup = {} },
			["barrel+++"] = { type = "Model", model = "models/props_phx/gears/bevel90_24.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "base", pos = Vector(17.532, -1.174, 2.21), angle = Angle(-85.343, 79.873, 81.331), size = Vector(0.068, 0.068, 0.068), color = Color(0, 0, 0, 255), surpresslightning = false, bonemerge = false, material = "models/props_canal/canal_bridge_railing_01c", skin = 0, bodygroup = {} },
			["base"] = { type = "Model", model = "models/props_phx/misc/iron_beam1.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(-1.785, 0.542, 0.305), angle = Angle(-14.838, 0.365, 178.489), size = Vector(0.746, 0.669, 0.669), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/props_canal/canal_bridge_railing_01c", skin = 0, bodygroup = {} },
			["can connector"] = { type = "Model", model = "models/hunter/blocks/cube025x075x025.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "base", pos = Vector(13.856, -0.339, -0.363), angle = Angle(0.565, 89.993, 0.14), size = Vector(0.059, 0.059, 0.059), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/props_canal/canal_bridge_railing_01c", skin = 0, bodygroup = {} },
			["can connector+"] = { type = "Model", model = "models/hunter/blocks/cube025x075x025.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "base", pos = Vector(-16.703, -0.313, -0.453), angle = Angle(0.565, 89.993, 0.14), size = Vector(0.059, 0.202, 0.056), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/props_canal/canal_bridge_railing_01c", skin = 0, bodygroup = {} },
			["can1"] = { type = "Model", model = "models/props_phx/misc/iron_beam1.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "base", pos = Vector(16.347, -0.094, -4.65), angle = Angle(0.528, -1.668, 0.334), size = Vector(0.025, 0.5, 0.5), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/props_canal/canal_bridge_railing_01c", skin = 0, bodygroup = {} },
			["can1+"] = { type = "Model", model = "models/props_phx/misc/iron_beam1.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "base", pos = Vector(-12.465, -0.002, -4.587), angle = Angle(0.528, -1.668, 0.334), size = Vector(0.025, 0.5, 0.5), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/props_canal/canal_bridge_railing_01c", skin = 0, bodygroup = {} },
			["dot"] = { type = "Model", model = "models/hunter/plates/plate1x1.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "base", pos = Vector(3.905, -5.464, 4.983), angle = Angle(-80.648, 149.3, 150.40199), size = Vector(0.03, 0.03, 0.03), color = Color(235, 9, 9, 0), surpresslightning = false, bonemerge = false, material = "models/weapons/v_smg1/texture5", skin = 0, bodygroup = {} },
			["dot+"] = { type = "Model", model = "models/hunter/plates/plate1x1.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "base", pos = Vector(3.905, -5.464, 4.983), angle = Angle(-80.648, 149.3, 150.40199), size = Vector(0.03, 0.03, 0.03), color = Color(235, 9, 9, 0), surpresslightning = false, bonemerge = false, material = "models/weapons/v_smg1/texture5", skin = 0, bodygroup = {} },
			["dot++"] = { type = "Model", model = "models/hunter/plates/plate1x1.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "base", pos = Vector(3.905, -5.464, 4.983), angle = Angle(-80.648, 149.3, 150.40199), size = Vector(0.03, 0.03, 0.03), color = Color(235, 9, 9, 0), surpresslightning = false, bonemerge = false, material = "models/weapons/v_smg1/texture5", skin = 0, bodygroup = {} },
			["dot+++"] = { type = "Model", model = "models/hunter/plates/plate1x1.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "base", pos = Vector(3.905, -5.464, 4.983), angle = Angle(-80.648, 149.3, 150.40199), size = Vector(0.03, 0.03, 0.03), color = Color(235, 9, 9, 0), surpresslightning = false, bonemerge = false, material = "models/weapons/v_smg1/texture5", skin = 0, bodygroup = {} },
			["dot++++"] = { type = "Model", model = "models/hunter/plates/plate1x1.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "base", pos = Vector(3.905, -5.464, 4.983), angle = Angle(-80.648, 149.3, 150.40199), size = Vector(0.03, 0.03, 0.03), color = Color(235, 9, 9, 0), surpresslightning = false, bonemerge = false, material = "models/weapons/v_smg1/texture5", skin = 0, bodygroup = {} },
			["dot+++++"] = { type = "Model", model = "models/hunter/plates/plate1x1.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "base", pos = Vector(3.905, -5.464, 4.983), angle = Angle(-80.648, 149.3, 150.40199), size = Vector(0.03, 0.03, 0.03), color = Color(235, 9, 9, 0), surpresslightning = false, bonemerge = false, material = "models/weapons/v_smg1/texture5", skin = 0, bodygroup = {} },
			["grip"] = { type = "Model", model = "models/props_phx/misc/iron_beam1.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "base", pos = Vector(5.877, 0.123, -1.885), angle = Angle(82.19, -32.702, 32.683), size = Vector(0.098, 0.163, 0.185), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/props_canal/canal_bridge_railing_01c", skin = 0, bodygroup = {} },
			["rocket mag+"] = { type = "Model", model = "models/mechanics/robotics/a1.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "base", pos = Vector(-23.499, -1.274, 4.472), angle = Angle(0.535, -1.473, 4.604), size = Vector(0.607, 0.201, 0.202), color = Color(118, 167, 128, 255), surpresslightning = false, bonemerge = false, material = "models/props_canal/canal_bridge_railing_01c", skin = 0, bodygroup = {} },
			["rocket mag++"] = { type = "Model", model = "models/mechanics/robotics/a1.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "base", pos = Vector(-23.454, -1.273, 1.932), angle = Angle(0.535, -1.473, 4.604), size = Vector(0.607, 0.201, 0.202), color = Color(123, 163, 132, 255), surpresslightning = false, bonemerge = false, material = "models/props_canal/canal_bridge_railing_01c", skin = 0, bodygroup = {} },
			["rocket mag+++"] = { type = "Model", model = "models/mechanics/robotics/a1.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "base", pos = Vector(-23.57, 1.149, 4.404), angle = Angle(0.535, -1.473, 4.604), size = Vector(0.607, 0.201, 0.202), color = Color(124, 167, 134, 255), surpresslightning = false, bonemerge = false, material = "models/props_canal/canal_bridge_railing_01c", skin = 0, bodygroup = {} },
			["rocket mag++++"] = { type = "Model", model = "models/mechanics/robotics/a1.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "base", pos = Vector(-23.541, 1.215, 1.987), angle = Angle(0.506, -1.83, 24.453), size = Vector(0.607, 0.201, 0.202), color = Color(128, 165, 136, 255), surpresslightning = false, bonemerge = false, material = "models/props_canal/canal_bridge_railing_01c", skin = 0, bodygroup = {} },
			["sight"] = { type = "Model", model = "models/phxtended/tri2x1x1.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "base", pos = Vector(3.198, -1.479, 3.889), angle = Angle(-85.151, 106.916, 106.328), size = Vector(0.044, 0.044, 0.044), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/gibs/metalgibs/metal_gibs", skin = 0, bodygroup = {} },
			["sight can"] = { type = "Model", model = "models/hunter/tubes/circle2x2.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "base", pos = Vector(6.42, -5.48, 6.4), angle = Angle(4.76, 86.027, -46.921), size = Vector(0.018, 0.018, 0.018), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/gibs/metalgibs/metal_gibs", skin = 0, bodygroup = {} },
			["sight1"] = { type = "Model", model = "models/hunter/tubes/tube1x1x2.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "base", pos = Vector(5.924, -5.514, 4.952), angle = Angle(85.279, -77.498, 76.84), size = Vector(0.037, 0.037, 0.037), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/gibs/metalgibs/metal_gibs", skin = 0, bodygroup = {} },
			["trigger"] = { type = "Model", model = "models/mechanics/robotics/a1.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "base", pos = Vector(6.278, 0.345, -0.514), angle = Angle(82.614, -38.829, 44.887), size = Vector(0.065, 0.065, 0.065), color = Color(255, 0, 0, 255), surpresslightning = false, bonemerge = false, material = "models/props_canal/canal_bridge_railing_01c", skin = 0, bodygroup = {} }
		}

end

SWEP.Base = "weapon_zs_base"

SWEP.HoldType = "rpg"

SWEP.ShowViewModel = false
SWEP.ShowWorldModel = false
SWEP.ViewModel = "models/weapons/c_rpg.mdl"
SWEP.WorldModel = "models/weapons/w_rocket_launcher.mdl"
SWEP.UseHands = true
SWEP.ShowViewModel = false

SWEP.ReloadSound = Sound("buttons/lever7.wav")
SWEP.Primary.Sound = Sound("weapons/grenade_launcher1.wav", 70, 90)
SWEP.Primary.Damage = 51
SWEP.Primary.NumShots = 0
SWEP.Primary.Delay = 0.45
SWEP.Primary.Automatic = false

SWEP.Primary.ClipSize = 4
SWEP.Primary.Ammo = "grenlauncher"
SWEP.Primary.DefaultClip = 4

SWEP.ConeMax = 0
SWEP.ConeMin = 0

SWEP.Recoil = 1.65
SWEP.IronSightsPos = Vector(0, 0, 3)
SWEP.IronSightsAng = Vector(0, 10, 0)
SWEP.ReloadSpeed = 1.1
SWEP.WalkSpeed = SPEED_SLOWER

SWEP.BarrelAligned = true
SWEP.LastBarrelAngle = 0
SWEP.BarrelAngleTarget = 0
SWEP.LastShotTime = 0
SWEP.DuringReload = false

SWEP.m_NotBulletWeapon = true

function SWEP:Deploy()
	if self.BaseClass.Deploy then
		self.BaseClass.Deploy(self)
	end
	self.BarrelAligned = true
	self.LastBarrelAngle = 0
	self.BarrelAngleTarget = 0
	self.LastShotTime = 0
	self.DuringReload = false
	return true
end

function SWEP:ShootBullets(dmg, numbul, cone)
	local owner = self:GetOwner()
	--owner:MuzzleFlash()
	if SERVER then
		self:SetConeAndFire()
	end
	self:DoRecoil()
	self:SendWeaponAnimation()
	owner:DoAttackEvent()
	self.BarrelAligned = false
	self.LastShotTime = CurTime()
	self.BarrelAngleTarget = self.LastBarrelAngle + 60
	self:SetNextReload(CurTime() + 1)
	if SERVER then
		local ent = ents.Create("projectile_rl")
		if ent:IsValid() then
			ent.ProjDamage = self.Primary.Damage
			ent.Splash = 1
			ent.FireITH = true
			ent:SetPos(owner:GetShootPos())
			ent:SetAngles(owner:GetAimVector():Angle())
			ent:SetOwner(owner)
			ent:Spawn()
			ent.GrenadeDamage = dmg
			local phys = ent:GetPhysicsObject()
			if phys:IsValid() then
				phys:Wake()
				phys:SetVelocityInstantaneous(self:GetOwner():GetAimVector() * 1000)
			end
		end
	end
end


function SWEP:SendReloadAnimation()
	self:SendWeaponAnim(ACT_VM_RELOAD)
	self.DuringReload = true
	self.BarrelAligned = false
	self.LastShotTime = CurTime()
	self.BarrelAngleTarget = 0
	self.LastBarrelAngle = 0
	if self.BaseClass.SendReloadAnimation then
		self.BaseClass.SendReloadAnimation(self)
	end
end

function SWEP:EmitReloadFinishSound()
	self.DuringReload = false
end