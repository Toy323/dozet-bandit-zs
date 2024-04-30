AddCSLuaFile()

if CLIENT then
	SWEP.TranslateName = "weapon_ventilator_name"
	SWEP.TranslateDesc = "weapon_ventilator_desc"
	SWEP.Slot = 1
	SWEP.SlotPos = 4

	SWEP.ViewModelFlip = false
	SWEP.ViewModelFOV = 56

	SWEP.HUD3DBone = "v_weapon.Deagle_Parent"
	SWEP.HUD3DPos = Vector(0.1, -5.5, 1.22)
	SWEP.HUD3DAng = Angle(0, 0, 0)
	SWEP.HUD3DScale = 0.016

	SWEP.VElements = {
		["1"] = { type = "Model", model = "models/hunter/plates/plate025x1.mdl", bone = "ValveBiped.Gun", rel = "base", pos = Vector(1.73413, -0.12891, 3.4988), angle = Angle(0.10617, -179.48862, -1.757), size = Vector(0.065, 0.065, 0.065), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} },
		["1+"] = { type = "Model", model = "models/hunter/plates/plate025x05.mdl", bone = "ValveBiped.Gun", rel = "base", pos = Vector(1.08167, -0.85316, 3.50835), angle = Angle(0.55416, 135.37254, -1.69508), size = Vector(0.065, 0.065, 0.065), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} },
		["2nd grip"] = { type = "Model", model = "models/props_phx/misc/iron_beam1.mdl", bone = "ValveBiped.Gun", rel = "base", pos = Vector(4.27924, 4.62708, 1.20987), angle = Angle(2.07701, 101.71787, -0.63097), size = Vector(0.106, 0.244, 0.122), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/gibs/metalgibs/metal_gibs", skin = 0, bodygroup = {} },
		["2nd grip+"] = { type = "Model", model = "models/props_phx/misc/iron_beam1.mdl", bone = "ValveBiped.Gun", rel = "base", pos = Vector(15.16043, 3.88802, 1.05904), angle = Angle(-2.102, 124.79096, 0.39489), size = Vector(0.106, 0.244, 0.122), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/gibs/metalgibs/metal_gibs", skin = 0, bodygroup = {} },
		["4"] = { type = "Model", model = "models/hunter/plates/plate025x05.mdl", bone = "ValveBiped.Gun", rel = "base", pos = Vector(4.77924, -0.023, 3.38894), angle = Angle(-2.42699, -176.76498, 0.24399), size = Vector(0.055, 0.144, 0.077), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} },
		["4+"] = { type = "Model", model = "models/hunter/plates/plate025x05.mdl", bone = "ValveBiped.Gun", rel = "base", pos = Vector(4.15283, -0.10719, 3.35867), angle = Angle(-0.22627, 90.7439, -0.36812), size = Vector(0.05, 0.079, 0.103), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} },
		["4++"] = { type = "Model", model = "models/hunter/plates/plate025x05.mdl", bone = "ValveBiped.Gun", rel = "base", pos = Vector(3.50998, -0.79219, 3.37608), angle = Angle(-2.45669, -177.58347, -1.55499), size = Vector(0.05, 0.079, 0.103), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} },
		["8"] = { type = "Model", model = "models/hunter/tubes/tube2x2x025.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "base", pos = Vector(7.15671, -0.80629, 3.48905), angle = Angle(1.78175, 100.599, -1.04567), size = Vector(0.015, 0.015, 0.015), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} },
		["8+"] = { type = "Model", model = "models/hunter/tubes/tube2x2x025.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "base", pos = Vector(9.45187, 0.71745, 3.39438), angle = Angle(1.78174, 100.59901, -1.04569), size = Vector(0.018, 0.018, 0.018), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} },
		["8++"] = { type = "Model", model = "models/hunter/tubes/tube2x2x025.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "base", pos = Vector(9.42502, -0.77583, 3.42577), angle = Angle(1.78174, 100.59902, -1.0457), size = Vector(0.015, 0.015, 0.015), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} },
		["8+++"] = { type = "Model", model = "models/hunter/tubes/tube2x2x025.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "base", pos = Vector(7.1503, 0.68571, 3.41638), angle = Angle(1.78174, 100.59903, -1.04569), size = Vector(0.018, 0.018, 0.018), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} },
		["additional base"] = { type = "Model", model = "models/props_phx/misc/iron_beam1.mdl", bone = "ValveBiped.Gun", rel = "base", pos = Vector(8.54971, -3.46587, 1.69794), angle = Angle(-0.75098, -179.73601, -90.75187), size = Vector(0.203, 0.279, 0.304), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/gibs/metalgibs/metal_gibs", skin = 0, bodygroup = {} },
		["additional base+"] = { type = "Model", model = "models/hunter/triangles/1x1x1.mdl", bone = "ValveBiped.Gun", rel = "base", pos = Vector(14.32687, -2.53296, 1.78284), angle = Angle(88.18583, 180, 97.78695), size = Vector(0.045, 0.045, 0.045), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/gibs/metalgibs/metal_gibs", skin = 0, bodygroup = {} },
		["additional base++"] = { type = "Model", model = "models/hunter/triangles/1x05x05.mdl", bone = "ValveBiped.Gun", rel = "base", pos = Vector(-0.95175, -1.94292, 1.59293), angle = Angle(-89.20888, 63.07674, -25.47083), size = Vector(0.106, 0.209, 0.134), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/gibs/metalgibs/metal_gibs", skin = 0, bodygroup = {} },
		["barrel"] = { type = "Model", model = "models/props_phx/gears/bevel24.mdl", bone = "ValveBiped.Gun", rel = "base", pos = Vector(-14.333, -0.769, 1.758), angle = Angle(-1.18, 85.728, -90.62), size = Vector(0.055, 0.061, 0.262), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/gibs/metalgibs/metal_gibs", skin = 0, bodygroup = {} },
		["base"] = { type = "Model", model = "models/props_phx/misc/iron_beam1.mdl", bone = "ValveBiped.Gun", rel = "", pos = Vector(-1.442, 0.311, -5.249), angle = Angle(-89.218, -153.931, -155.873), size = Vector(0.615, 0.513, 0.348), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/gibs/metalgibs/metal_gibs", skin = 0, bodygroup = {} },
		["base1"] = { type = "Model", model = "models/hunter/blocks/cube05x105x05.mdl", bone = "ValveBiped.Gun", rel = "base", pos = Vector(9.47321, 3.681, 1.77605), angle = Angle(2.66, 96.39793, 1.69203), size = Vector(0.211, 0.074, 0.074), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/gibs/metalgibs/metal_gibs", skin = 0, bodygroup = {} },
		["connector"] = { type = "Model", model = "models/hunter/blocks/cube075x2x025.mdl", bone = "ValveBiped.Gun", rel = "base", pos = Vector(7.96136, 6.63203, 1.67281), angle = Angle(88.62791, -16.71669, 112.34151), size = Vector(0.054, 0.095, 0.101), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/gibs/metalgibs/metal_gibs", skin = 0, bodygroup = {} },
		["connector1"] = { type = "Model", model = "models/hunter/blocks/cube075x1x025.mdl", bone = "ValveBiped.Gun", rel = "base", pos = Vector(12.46613, 3.94901, 1.75309), angle = Angle(87.34094, 36.06292, 64.00163), size = Vector(0.024, 0.088, 0.051), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/gibs/metalgibs/metal_gibs", skin = 0, bodygroup = {} },
		["grip+"] = { type = "Model", model = "models/mechanics/robotics/a2.mdl", bone = "ValveBiped.Gun", rel = "base", pos = Vector(-3.82736, 2.17104, 1.65686), angle = Angle(0.37803, -180, 82.24578), size = Vector(0.332, 0.298, 0.28), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/gibs/metalgibs/metal_gibs", skin = 0, bodygroup = {} },
		["lazer"] = { type = "Model", model = "models/xqm/afterburner1large.mdl", bone = "ValveBiped.Gun", rel = "base", pos = Vector(-12.50412, 0.04307, 0.05389), angle = Angle(0.86793, 90.28591, 82.44498), size = Vector(0.01, 0.012, 0.024), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/gibs/metalgibs/metal_gibs", skin = 0, bodygroup = {} },
		["lazer+"] = { type = "Model", model = "models/xqm/afterburner1large.mdl", bone = "ValveBiped.Gun", rel = "base", pos = Vector(-14.816, 0.051, -0.161), angle = Angle(1.412, 90.293, -92.351), size = Vector(0.01, 0.012, 0.016), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/gibs/metalgibs/metal_gibs", skin = 0, bodygroup = {} },
		["lazer++"] = { type = "Model", model = "models/xqm/afterburner1large.mdl", bone = "ValveBiped.Gun", rel = "base", pos = Vector(-12.50992, 0.03602, 3.61896), angle = Angle(0.86793, 90.28591, 82.44498), size = Vector(0.01, 0.012, 0.024), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/gibs/metalgibs/metal_gibs", skin = 0, bodygroup = {} },
		["lazer+++"] = { type = "Model", model = "models/xqm/afterburner1large.mdl", bone = "ValveBiped.Gun", rel = "base", pos = Vector(-14.80173, 0.03003, 3.3949), angle = Angle(1.41196, 90.29295, -92.35091), size = Vector(0.01, 0.012, 0.016), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/gibs/metalgibs/metal_gibs", skin = 0, bodygroup = {} },
		["lazer+++++"] = { type = "Model", model = "models/hunter/tubes/circle2x2.mdl", bone = "ValveBiped.Gun", rel = "base", pos = Vector(-25.908, -0.387, 0.687), angle = Angle(-10.545, 88.219, 93.821), size = Vector(0.002, 0.003, 8.968), color = Color(255, 0, 0, 140), surpresslightning = false, bonemerge = false, material = "models/shiny", skin = 0, bodygroup = {} },
		["lazer++++++"] = { type = "Model", model = "models/hunter/tubes/circle2x2.mdl", bone = "ValveBiped.Gun", rel = "base", pos = Vector(-25.794, -0.282, 3.495), angle = Angle(-6.679, 87.168, 91.237), size = Vector(0.002, 0.003, 8.637), color = Color(255, 0, 0, 140), surpresslightning = false, bonemerge = false, material = "models/shiny", skin = 0, bodygroup = {} },
		["screen"] = { type = "Model", model = "models/hunter/plates/plate075x1.mdl", bone = "ValveBiped.Gun", rel = "base", pos = Vector(13.71283, -3.04291, 1.75907), angle = Angle(-1.51752, 141.47612, -92.97676), size = Vector(0.035, 0.035, 0.035), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/props_combine/combine_interface_disp", skin = 0, bodygroup = {} },
		["stock+"] = { type = "Model", model = "models/props_phx/misc/iron_beam1.mdl", bone = "ValveBiped.Gun", rel = "base", pos = Vector(17.45169, -1.27786, 2.88999), angle = Angle(-0.63298, -176.774, 179.08801), size = Vector(0.183, 0.269, 0.205), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/gibs/metalgibs/metal_gibs", skin = 0, bodygroup = {} },
		["stock++"] = { type = "Model", model = "models/props_phx/misc/iron_beam1.mdl", bone = "ValveBiped.Gun", rel = "base", pos = Vector(18.77298, 2.26507, 0.78307), angle = Angle(3.12397, 47.97682, -3.36093), size = Vector(0.183, 0.244, 0.199), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/gibs/metalgibs/metal_gibs", skin = 0, bodygroup = {} },
		["trigger"] = { type = "Model", model = "models/mechanics/robotics/a1.mdl", bone = "ValveBiped.Gun", rel = "base", pos = Vector(13.03412, 2.95603, 1.74982), angle = Angle(-1.43099, 100.14978, -7.9299), size = Vector(0.061, 0.061, 0.061), color = Color(255, 0, 0, 255), surpresslightning = false, bonemerge = false, material = "models/gibs/metalgibs/metal_gibs", skin = 0, bodygroup = {} },
		["underbarrel"] = { type = "Model", model = "models/hunter/triangles/trapezium3x3x1c.mdl", bone = "ValveBiped.Gun", rel = "base", pos = Vector(-12.91519, 4.22807, 1.71185), angle = Angle(0.11298, 92.13995, 88.35285), size = Vector(0.05, 0.048, 0.062), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/gibs/metalgibs/metal_gibs", skin = 0, bodygroup = {} }
	}
	
	SWEP.WElements = {
		["1"] = { type = "Model", model = "models/hunter/plates/plate025x1.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "base", pos = Vector(1.734, -0.129, 3.499), angle = Angle(0.106, -179.489, -1.757), size = Vector(0.065, 0.065, 0.065), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} },
		["1+"] = { type = "Model", model = "models/hunter/plates/plate025x05.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "base", pos = Vector(1.082, -0.853, 3.508), angle = Angle(0.554, 135.373, -1.695), size = Vector(0.065, 0.065, 0.065), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} },
		["2nd grip"] = { type = "Model", model = "models/props_phx/misc/iron_beam1.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "base", pos = Vector(4.279, 4.627, 1.21), angle = Angle(2.077, 101.718, -0.631), size = Vector(0.106, 0.244, 0.122), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/gibs/metalgibs/metal_gibs", skin = 0, bodygroup = {} },
		["2nd grip+"] = { type = "Model", model = "models/props_phx/misc/iron_beam1.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "base", pos = Vector(15.16, 3.888, 1.059), angle = Angle(-2.102, 124.791, 0.395), size = Vector(0.106, 0.244, 0.122), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/gibs/metalgibs/metal_gibs", skin = 0, bodygroup = {} },
		["4"] = { type = "Model", model = "models/hunter/plates/plate025x05.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "base", pos = Vector(4.779, -0.023, 3.389), angle = Angle(-2.427, -176.765, 0.244), size = Vector(0.055, 0.144, 0.077), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} },
		["4+"] = { type = "Model", model = "models/hunter/plates/plate025x05.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "base", pos = Vector(4.153, -0.107, 3.359), angle = Angle(-0.226, 90.744, -0.368), size = Vector(0.05, 0.079, 0.103), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} },
		["4++"] = { type = "Model", model = "models/hunter/plates/plate025x05.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "base", pos = Vector(3.51, -0.792, 3.376), angle = Angle(-2.457, -177.58299, -1.555), size = Vector(0.05, 0.079, 0.103), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} },
		["8"] = { type = "Model", model = "models/hunter/tubes/tube2x2x025.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "base", pos = Vector(7.157, -0.806, 3.489), angle = Angle(1.782, 100.599, -1.046), size = Vector(0.015, 0.015, 0.015), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} },
		["8+"] = { type = "Model", model = "models/hunter/tubes/tube2x2x025.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "base", pos = Vector(9.452, 0.717, 3.394), angle = Angle(1.782, 100.599, -1.046), size = Vector(0.018, 0.018, 0.018), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} },
		["8++"] = { type = "Model", model = "models/hunter/tubes/tube2x2x025.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "base", pos = Vector(9.425, -0.776, 3.426), angle = Angle(1.782, 100.599, -1.046), size = Vector(0.015, 0.015, 0.015), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} },
		["8+++"] = { type = "Model", model = "models/hunter/tubes/tube2x2x025.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "base", pos = Vector(7.15, 0.686, 3.416), angle = Angle(1.782, 100.599, -1.046), size = Vector(0.018, 0.018, 0.018), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} },
		["additional base"] = { type = "Model", model = "models/props_phx/misc/iron_beam1.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "base", pos = Vector(8.55, -3.466, 1.698), angle = Angle(-0.751, -179.73599, -90.752), size = Vector(0.203, 0.279, 0.304), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/gibs/metalgibs/metal_gibs", skin = 0, bodygroup = {} },
		["additional base+"] = { type = "Model", model = "models/hunter/triangles/1x1x1.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "base", pos = Vector(14.327, -2.533, 1.783), angle = Angle(88.186, 180, 97.787), size = Vector(0.045, 0.045, 0.045), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/gibs/metalgibs/metal_gibs", skin = 0, bodygroup = {} },
		["additional base++"] = { type = "Model", model = "models/hunter/triangles/1x05x05.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "base", pos = Vector(-0.952, -1.943, 1.593), angle = Angle(-89.209, 63.077, -25.471), size = Vector(0.106, 0.209, 0.134), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/gibs/metalgibs/metal_gibs", skin = 0, bodygroup = {} },
		["barrel"] = { type = "Model", model = "models/props_phx/gears/bevel24.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "base", pos = Vector(-14.333, -0.769, 1.758), angle = Angle(-2.076, 92.414, -85.457), size = Vector(0.055, 0.061, 0.262), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/gibs/metalgibs/metal_gibs", skin = 0, bodygroup = {} },
		["base"] = { type = "Model", model = "models/props_phx/misc/iron_beam1.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(16.54, -0.367, -7.211), angle = Angle(12.823, 180, -80.052), size = Vector(0.615, 0.513, 0.348), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/gibs/metalgibs/metal_gibs", skin = 0, bodygroup = {} },
		["base1"] = { type = "Model", model = "models/hunter/blocks/cube05x105x05.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "base", pos = Vector(9.473, 3.681, 1.776), angle = Angle(2.66, 96.398, 1.692), size = Vector(0.211, 0.074, 0.074), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/gibs/metalgibs/metal_gibs", skin = 0, bodygroup = {} },
		["connector"] = { type = "Model", model = "models/hunter/blocks/cube075x2x025.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "base", pos = Vector(7.961, 6.632, 1.673), angle = Angle(88.628, -16.717, 112.342), size = Vector(0.054, 0.095, 0.101), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/gibs/metalgibs/metal_gibs", skin = 0, bodygroup = {} },
		["connector1"] = { type = "Model", model = "models/hunter/blocks/cube075x1x025.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "base", pos = Vector(12.466, 3.949, 1.753), angle = Angle(87.341, 36.063, 64.002), size = Vector(0.024, 0.088, 0.051), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/gibs/metalgibs/metal_gibs", skin = 0, bodygroup = {} },
		["grip+"] = { type = "Model", model = "models/mechanics/robotics/a2.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "base", pos = Vector(-3.827, 2.171, 1.657), angle = Angle(0.378, -180, 82.246), size = Vector(0.332, 0.298, 0.28), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/gibs/metalgibs/metal_gibs", skin = 0, bodygroup = {} },
		["lazer"] = { type = "Model", model = "models/xqm/afterburner1large.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "base", pos = Vector(-12.504, 0.043, 0.054), angle = Angle(0.868, 90.286, 82.445), size = Vector(0.01, 0.012, 0.024), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/gibs/metalgibs/metal_gibs", skin = 0, bodygroup = {} },
		["lazer+"] = { type = "Model", model = "models/xqm/afterburner1large.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "base", pos = Vector(-14.816, 0.051, -0.161), angle = Angle(1.412, 90.293, -92.351), size = Vector(0.01, 0.012, 0.016), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/gibs/metalgibs/metal_gibs", skin = 0, bodygroup = {} },
		["lazer++"] = { type = "Model", model = "models/xqm/afterburner1large.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "base", pos = Vector(-12.51, 0.036, 3.619), angle = Angle(0.868, 90.286, 82.445), size = Vector(0.01, 0.012, 0.024), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/gibs/metalgibs/metal_gibs", skin = 0, bodygroup = {} },
		["lazer+++"] = { type = "Model", model = "models/xqm/afterburner1large.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "base", pos = Vector(-14.802, 0.03, 3.395), angle = Angle(1.412, 90.293, -92.351), size = Vector(0.01, 0.012, 0.016), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/gibs/metalgibs/metal_gibs", skin = 0, bodygroup = {} },
		["screen"] = { type = "Model", model = "models/hunter/plates/plate075x1.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "base", pos = Vector(13.713, -3.043, 1.759), angle = Angle(-1.518, 141.476, -92.977), size = Vector(0.035, 0.035, 0.035), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/props_combine/combine_interface_disp", skin = 0, bodygroup = {} },
		["stock+"] = { type = "Model", model = "models/props_phx/misc/iron_beam1.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "base", pos = Vector(17.452, -1.278, 2.89), angle = Angle(-0.633, -176.774, 179.088), size = Vector(0.183, 0.269, 0.205), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/gibs/metalgibs/metal_gibs", skin = 0, bodygroup = {} },
		["stock++"] = { type = "Model", model = "models/props_phx/misc/iron_beam1.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "base", pos = Vector(18.773, 2.265, 0.783), angle = Angle(3.124, 47.977, -3.361), size = Vector(0.183, 0.244, 0.199), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/gibs/metalgibs/metal_gibs", skin = 0, bodygroup = {} },
		["trigger"] = { type = "Model", model = "models/mechanics/robotics/a1.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "base", pos = Vector(13.034, 2.956, 1.75), angle = Angle(-1.431, 100.15, -7.93), size = Vector(0.061, 0.061, 0.061), color = Color(255, 0, 0, 255), surpresslightning = false, bonemerge = false, material = "models/gibs/metalgibs/metal_gibs", skin = 0, bodygroup = {} },
		["underbarrel"] = { type = "Model", model = "models/hunter/triangles/trapezium3x3x1c.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "base", pos = Vector(-12.915, 4.228, 1.712), angle = Angle(0.113, 92.14, 88.353), size = Vector(0.05, 0.048, 0.062), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/gibs/metalgibs/metal_gibs", skin = 0, bodygroup = {} }
	}
	SWEP.IronSightsPos = Vector(-6.321, 0, -0.561)
end

SWEP.Base = "weapon_zs_base"

SWEP.HoldType = "shotgun"

SWEP.ShowViewModel = false
SWEP.ShowWorldModel = false
SWEP.ViewModel = "models/weapons/c_shotgun.mdl"
SWEP.WorldModel = "models/weapons/w_shotgun.mdl"
SWEP.UseHands = true

SWEP.Primary.Damage = 39
SWEP.Primary.BurstDamage = 11
SWEP.Primary.NumShots = 1
SWEP.Primary.Delay = 0.25
SWEP.Primary.KnockbackScale = 2
SWEP.Recoil = 1.6
SWEP.Primary.ClipSize = 7
SWEP.Primary.Automatic = false
SWEP.Primary.Ammo = "pistol"
GAMEMODE:SetupDefaultClip(SWEP.Primary)
SWEP.ReloadSpeed = 1
SWEP.ConeMax = 0.0255
SWEP.ConeMin = 0.021
SWEP.MovingConeOffset = 0.1
GAMEMODE:SetupAimDefaults(SWEP,SWEP.Primary)
SWEP.LastSecondaryFire = 0
SWEP.m_HasDifferingDmgValues = true
function SWEP:EmitFireSound()
	self:EmitSound("weapons/deagle/deagle-1.wav", 75, math.random(91, 95), 0.5)
	self:EmitSound("weapons/ak47/ak47-1.wav", 75, math.random(112, 128), 0.73,CHAN_AUTO+20)
end

function SWEP:EmitReloadSound()
	if IsFirstTimePredicted() then
		self:EmitSound("weapons/357/357_reload1.wav", 75, 75, 1, CHAN_WEAPON + 21)
	end
end

function SWEP:EmitReloadFinishSound()
	if IsFirstTimePredicted() then
		self:EmitSound("weapons/357/357_spin1.wav", 70, 90)
	end
end
function SWEP:FinishReload()
	self.ReloadSpeed = 1
	if self.BaseClass.FinishReload then
		self.BaseClass.FinishReload(self)
	end
end

function SWEP:PrimaryAttack()
	if not self:CanPrimaryAttack() then return end 
	self:SetNextPrimaryFire(CurTime() + self.Primary.Delay)
	--self:SetNextReload(CurTime() + self.Primary.Delay)
	self:EmitFireSound()
	self:TakeAmmo()
	self:ShootBullets(self.Primary.Damage, self.Primary.NumShots, math.min(self:GetCone()-0.02,0.001))
	self.IdleAnimation = CurTime() + self:SequenceDuration()
end

function SWEP:SecondaryAttack()
	if not self:CanPrimaryAttack() then return end 
	local shots = self:Clip1()
	self:SetNextPrimaryFire(CurTime() + self.Primary.Delay*2)
	--self:SetNextReload(CurTime() + self.Primary.Delay)
	self:EmitFireSound()
	self:EmitSound("weapons/shotgun/shotgun_dbl_fire.wav",75,80,1,CHAN_AUTO+21)
	self:TakePrimaryAmmo(shots)
	self:ShootBullets(math.max(self.Primary.BurstDamage,math.floor(self.Primary.Damage/shots)), shots, self:GetCone())
	self.ReloadSpeed = 0.6
	self.IdleAnimation = CurTime() + self:SequenceDuration()
end