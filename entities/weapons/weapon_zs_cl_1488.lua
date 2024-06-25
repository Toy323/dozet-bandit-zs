AddCSLuaFile()
SWEP.TranslateName = "wep_cl_1488"
SWEP.TranslateDesc = "wep_d_cl_1488"
if CLIENT then
	SWEP.ViewModelFlip = false
	SWEP.ViewModelFOV = 60
	SWEP.Slot = 3
	SWEP.SlotPos = 0
	SWEP.HUD3DBone = "v_weapon.awm_parent"
	SWEP.HUD3DPos = Vector(-1.25, -3.5, -16)
	SWEP.HUD3DAng = Angle(0, 0, 0)
	SWEP.HUD3DScale = 0.02
	SWEP.ShowViewModel = false
	SWEP.ShowWorldModel = false
	SWEP.ViewModelBoneMods = {}

	SWEP.SCKMaterials = {}

	SWEP.IronSightsPos = Vector(0.08, 0, 0.6)
	SWEP.IronSightsAng = Vector(0, 0, 0)

	SWEP.VElements = {
		["1"] = { type = "Model", model = "models/hunter/plates/plate025x1.mdl", bone = "ValveBiped.Gun", rel = "base", pos = Vector(1.734, -0.129, 3.499), angle = Angle(0.106, -179.489, -1.757), size = Vector(0.065, 0.065, 0.065), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/props/cs_office/snowmana", skin = 0, bodygroup = {} },
		["1+"] = { type = "Model", model = "models/hunter/plates/plate025x05.mdl", bone = "ValveBiped.Gun", rel = "base", pos = Vector(1.082, -0.853, 3.508), angle = Angle(0.554, 135.373, -1.695), size = Vector(0.065, 0.065, 0.065), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/props/cs_office/snowmana", skin = 0, bodygroup = {} },
		["2nd grip"] = { type = "Model", model = "models/props_phx/misc/iron_beam1.mdl", bone = "ValveBiped.Gun", rel = "base", pos = Vector(4.279, 4.627, 1.21), angle = Angle(2.077, 101.718, -0.631), size = Vector(0.106, 0.244, 0.122), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/gibs/metalgibs/metal_gibs", skin = 0, bodygroup = {} },
		["2nd grip+"] = { type = "Model", model = "models/props_phx/misc/iron_beam1.mdl", bone = "ValveBiped.Gun", rel = "base", pos = Vector(15.16, 3.888, 1.059), angle = Angle(-2.102, 124.791, 0.395), size = Vector(0.106, 0.244, 0.122), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/gibs/metalgibs/metal_gibs", skin = 0, bodygroup = {} },
		["4"] = { type = "Model", model = "models/hunter/plates/plate025x05.mdl", bone = "ValveBiped.Gun", rel = "base", pos = Vector(4.779, -0.023, 3.389), angle = Angle(-2.427, -176.765, 0.244), size = Vector(0.055, 0.144, 0.077), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/props/cs_office/snowmana", skin = 0, bodygroup = {} },
		["4+"] = { type = "Model", model = "models/hunter/plates/plate025x05.mdl", bone = "ValveBiped.Gun", rel = "base", pos = Vector(4.153, -0.107, 3.359), angle = Angle(-0.226, 90.744, -0.368), size = Vector(0.05, 0.079, 0.103), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/props/cs_office/snowmana", skin = 0, bodygroup = {} },
		["4++"] = { type = "Model", model = "models/hunter/plates/plate025x05.mdl", bone = "ValveBiped.Gun", rel = "base", pos = Vector(3.51, -0.792, 3.376), angle = Angle(-2.457, -177.58299, -1.555), size = Vector(0.05, 0.079, 0.103), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/props/cs_office/snowmana", skin = 0, bodygroup = {} },
		["8"] = { type = "Model", model = "models/hunter/tubes/tube2x2x025.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "base", pos = Vector(7.157, -0.806, 3.489), angle = Angle(1.782, 100.599, -1.046), size = Vector(0.015, 0.015, 0.015), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/props/cs_office/snowmana", skin = 0, bodygroup = {} },
		["8+"] = { type = "Model", model = "models/hunter/tubes/tube2x2x025.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "base", pos = Vector(9.452, 0.717, 3.394), angle = Angle(1.782, 100.599, -1.046), size = Vector(0.018, 0.018, 0.018), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/props/cs_office/snowmana", skin = 0, bodygroup = {} },
		["8++"] = { type = "Model", model = "models/hunter/tubes/tube2x2x025.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "base", pos = Vector(9.425, -0.776, 3.426), angle = Angle(1.782, 100.599, -1.046), size = Vector(0.015, 0.015, 0.015), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/props/cs_office/snowmana", skin = 0, bodygroup = {} },
		["8+++"] = { type = "Model", model = "models/hunter/tubes/tube2x2x025.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "base", pos = Vector(7.15, 0.686, 3.416), angle = Angle(1.782, 100.599, -1.046), size = Vector(0.018, 0.018, 0.018), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/props/cs_office/snowmana", skin = 0, bodygroup = {} },
		["additional base"] = { type = "Model", model = "models/props_phx/misc/iron_beam1.mdl", bone = "ValveBiped.Gun", rel = "base", pos = Vector(8.55, -3.466, 1.698), angle = Angle(-0.751, -179.73599, -90.752), size = Vector(0.203, 0.279, 0.304), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/gibs/metalgibs/metal_gibs", skin = 0, bodygroup = {} },
		["additional base+"] = { type = "Model", model = "models/hunter/triangles/1x1x1.mdl", bone = "ValveBiped.Gun", rel = "base", pos = Vector(14.327, -2.533, 1.783), angle = Angle(88.186, 180, 97.787), size = Vector(0.045, 0.045, 0.045), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/gibs/metalgibs/metal_gibs", skin = 0, bodygroup = {} },
		["additional base++"] = { type = "Model", model = "models/hunter/triangles/1x05x05.mdl", bone = "ValveBiped.Gun", rel = "base", pos = Vector(-0.952, -1.943, 1.593), angle = Angle(-89.209, 63.077, -25.471), size = Vector(0.106, 0.209, 0.134), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/gibs/metalgibs/metal_gibs", skin = 0, bodygroup = {} },
		["barrel"] = { type = "Model", model = "models/props_phx/gears/bevel24.mdl", bone = "ValveBiped.Gun", rel = "base", pos = Vector(-14.333, -0.769, 1.758), angle = Angle(-1.18, 85.728, -90.62), size = Vector(0.055, 0.061, 0.262), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/gibs/metalgibs/metal_gibs", skin = 0, bodygroup = {} },
		["base"] = { type = "Model", model = "models/props_phx/misc/iron_beam1.mdl", bone = "ValveBiped.Gun", rel = "", pos = Vector(-1.442, 0.311, -5.249), angle = Angle(-89.218, -153.931, -155.873), size = Vector(0.615, 0.513, 0.348), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/gibs/metalgibs/metal_gibs", skin = 0, bodygroup = {} },
		["base1"] = { type = "Model", model = "models/hunter/blocks/cube05x105x05.mdl", bone = "ValveBiped.Gun", rel = "base", pos = Vector(9.473, 3.681, 1.776), angle = Angle(2.66, 96.398, 1.692), size = Vector(0.211, 0.074, 0.074), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/gibs/metalgibs/metal_gibs", skin = 0, bodygroup = {} },
		["connector"] = { type = "Model", model = "models/hunter/blocks/cube075x2x025.mdl", bone = "ValveBiped.Gun", rel = "base", pos = Vector(7.961, 6.632, 1.673), angle = Angle(88.628, -16.717, 112.342), size = Vector(0.054, 0.095, 0.101), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/gibs/metalgibs/metal_gibs", skin = 0, bodygroup = {} },
		["connector1"] = { type = "Model", model = "models/hunter/blocks/cube075x1x025.mdl", bone = "ValveBiped.Gun", rel = "base", pos = Vector(12.466, 3.949, 1.753), angle = Angle(87.341, 36.063, 64.002), size = Vector(0.024, 0.088, 0.051), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/gibs/metalgibs/metal_gibs", skin = 0, bodygroup = {} },
		["grip+"] = { type = "Model", model = "models/mechanics/robotics/a2.mdl", bone = "ValveBiped.Gun", rel = "base", pos = Vector(-3.827, 2.171, 1.657), angle = Angle(0.378, -180, 82.246), size = Vector(0.332, 0.298, 0.28), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/gibs/metalgibs/metal_gibs", skin = 0, bodygroup = {} },
		["lazer"] = { type = "Model", model = "models/xqm/afterburner1large.mdl", bone = "ValveBiped.Gun", rel = "base", pos = Vector(-12.504, 0.043, 0.054), angle = Angle(0.868, 90.286, 82.445), size = Vector(0.01, 0.012, 0.024), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/gibs/metalgibs/metal_gibs", skin = 0, bodygroup = {} },
		["lazer+"] = { type = "Model", model = "models/xqm/afterburner1large.mdl", bone = "ValveBiped.Gun", rel = "base", pos = Vector(-14.816, 0.051, -0.161), angle = Angle(1.412, 90.293, -92.351), size = Vector(0.01, 0.012, 0.016), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/gibs/metalgibs/metal_gibs", skin = 0, bodygroup = {} },
		["lazer++"] = { type = "Model", model = "models/xqm/afterburner1large.mdl", bone = "ValveBiped.Gun", rel = "base", pos = Vector(-12.51, 0.036, 3.619), angle = Angle(0.868, 90.286, 82.445), size = Vector(0.01, 0.012, 0.024), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/gibs/metalgibs/metal_gibs", skin = 0, bodygroup = {} },
		["lazer+++"] = { type = "Model", model = "models/xqm/afterburner1large.mdl", bone = "ValveBiped.Gun", rel = "base", pos = Vector(-14.802, 0.03, 3.395), angle = Angle(1.412, 90.293, -92.351), size = Vector(0.01, 0.012, 0.016), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/gibs/metalgibs/metal_gibs", skin = 0, bodygroup = {} },
		["lazer+++++"] = { type = "Model", model = "models/hunter/tubes/circle2x2.mdl", bone = "ValveBiped.Gun", rel = "base", pos = Vector(-25.908, -0.387, 0.687), angle = Angle(-10.545, 88.219, 93.821), size = Vector(0.002, 0.003, 8.968), color = Color(255, 0, 0, 140), surpresslightning = false, bonemerge = false, material = "models/shiny", skin = 0, bodygroup = {} },
		["lazer++++++"] = { type = "Model", model = "models/hunter/tubes/circle2x2.mdl", bone = "ValveBiped.Gun", rel = "base", pos = Vector(-25.794, -0.282, 3.495), angle = Angle(-6.679, 87.168, 91.237), size = Vector(0.002, 0.003, 8.637), color = Color(255, 0, 0, 140), surpresslightning = false, bonemerge = false, material = "models/shiny", skin = 0, bodygroup = {} },
		["screen"] = { type = "Model", model = "models/hunter/plates/plate075x1.mdl", bone = "ValveBiped.Gun", rel = "base", pos = Vector(13.713, -3.043, 1.759), angle = Angle(-1.518, 141.476, -92.977), size = Vector(0.035, 0.035, 0.035), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/props_combine/combine_interface_disp", skin = 0, bodygroup = {} },
		["stock+"] = { type = "Model", model = "models/props_phx/misc/iron_beam1.mdl", bone = "ValveBiped.Gun", rel = "base", pos = Vector(17.452, -1.278, 2.89), angle = Angle(-0.633, -176.774, 179.088), size = Vector(0.183, 0.269, 0.205), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/gibs/metalgibs/metal_gibs", skin = 0, bodygroup = {} },
		["stock++"] = { type = "Model", model = "models/props_phx/misc/iron_beam1.mdl", bone = "ValveBiped.Gun", rel = "base", pos = Vector(18.773, 2.265, 0.783), angle = Angle(3.124, 47.977, -3.361), size = Vector(0.183, 0.244, 0.199), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/gibs/metalgibs/metal_gibs", skin = 0, bodygroup = {} },
		["trigger"] = { type = "Model", model = "models/mechanics/robotics/a1.mdl", bone = "ValveBiped.Gun", rel = "base", pos = Vector(13.034, 2.956, 1.75), angle = Angle(-1.431, 100.15, -7.93), size = Vector(0.061, 0.061, 0.061), color = Color(255, 0, 0, 255), surpresslightning = false, bonemerge = false, material = "models/gibs/metalgibs/metal_gibs", skin = 0, bodygroup = {} },
		["underbarrel"] = { type = "Model", model = "models/hunter/triangles/trapezium3x3x1c.mdl", bone = "ValveBiped.Gun", rel = "base", pos = Vector(-12.915, 4.228, 1.712), angle = Angle(0.113, 92.14, 88.353), size = Vector(0.05, 0.048, 0.062), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/gibs/metalgibs/metal_gibs", skin = 0, bodygroup = {} }
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
end

SWEP.Base = "weapon_zs_base"

SWEP.HoldType = "shotgun"

SWEP.ViewModel = "models/weapons/c_shotgun.mdl"
SWEP.WorldModel = "models/weapons/w_shotgun.mdl"
SWEP.UseHands = true



SWEP.ReloadSound = Sound("buttons/lever7.wav")
SWEP.Primary.Sound = Sound("weapons/grenade_launcher1.wav", 70, 90)
SWEP.Primary.Damage = 70
SWEP.Primary.NumShots = 0
SWEP.Primary.Delay = 0.8
SWEP.Primary.Automatic = false

SWEP.Primary.ClipSize = 6
SWEP.Primary.Ammo = "grenlauncher"
GAMEMODE:SetupDefaultClip(SWEP.Primary)

SWEP.ConeMax = 0
SWEP.ConeMin = 0

SWEP.Recoil = 1.65
SWEP.IronSightsPos = Vector(-9.08, 0, -1.28)
SWEP.IronSightsAng = Vector(0, 0, 0)
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
		local ent = ents.Create("projectile_emi_rl")
		if ent:IsValid() then
			ent.ProjDamage = self.Primary.Damage
			ent:SetPos(owner:GetShootPos())
			ent:SetAngles(owner:GetAimVector():Angle())
			ent:SetOwner(owner)
			ent:Spawn()
			ent.GrenadeDamage = dmg
			local phys = ent:GetPhysicsObject()
			if phys:IsValid() then
				phys:Wake()
				phys:SetVelocityInstantaneous(self:GetOwner():GetAimVector() * 2000)
			end
		end
	end
end
function SWEP:SecondaryAttack()
	local owner = self:GetOwner()
	if SERVER then
		local status = owner:GiveStatus('flamefix')
		status:SetDie(0.6)
		status.NoIceThrower = true
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