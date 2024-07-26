INC_CLIENT()

SWEP.Slot = 3
SWEP.SlotPos = 0

SWEP.ViewModelFlip = false
SWEP.ViewModelFOV = 58
SWEP.ViewModelBoneMods = {
	["ValveBiped.Bip01_L_UpperArm"] = { scale = Vector(1, 1, 1), pos = Vector(0, 3, 0), angle = Angle(0, 0, 0) },
	["Base"] = { scale = Vector(0.009, 0.009, 0.009), pos = Vector(0, -1, 3), angle = Angle(0, 0, 0) }
}

SWEP.SCKMaterials = {}

SWEP.IronSightsPos = Vector(-0.12, 0, -0.04)
SWEP.IronSightsAng = Vector(0, 0, 0)

SWEP.VElements = {
	["ball"] = { type = "Model", model = "models/XQM/Rails/gumball_1.mdl", bone = "Base", rel = "base", pos = Vector(-0.965, -23.704, -0.146), angle = Angle(-0.939, 7.311, -6.465), size = Vector(0.124, 0.124, 0.124), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/gibs/metalgibs/metal_gibs", skin = 0, bodygroup = {} },
	["barrel"] = { type = "Model", model = "models/props_phx/gears/bevel36.mdl", bone = "Base", rel = "base", pos = Vector(-0.695, -6.321, -0.12), angle = Angle(-5.267, 3.333, -91.035), size = Vector(0.081, 0.081, 0.081), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} },
	["base"] = { type = "Model", model = "models/hunter/blocks/cube075x3x1.mdl", bone = "Base", rel = "", pos = Vector(0.532, 0, -3.12), angle = Angle(2.871, 89.877, 96.536), size = Vector(0.129, 0.091, 0.095), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/props_combine/metal_combinebridge001", skin = 0, bodygroup = {} },
	["base1"] = { type = "Model", model = "models/hunter/plates/plate05x1.mdl", bone = "Base", rel = "base", pos = Vector(-3.242, -0.139, -0.081), angle = Angle(89.351, -0.057, -0.284), size = Vector(0.169, 0.246, 0.214), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/props_canal/canal_bridge_railing_01c", skin = 0, bodygroup = {} },
	["base1+"] = { type = "Model", model = "models/hunter/plates/plate05x1.mdl", bone = "Base", rel = "base", pos = Vector(1.592, -0.177, 0.005), angle = Angle(-89.995, 0.412, 0), size = Vector(0.169, 0.246, 0.19), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/props_canal/canal_bridge_railing_01c", skin = 0, bodygroup = {} },
	["base1++"] = { type = "Model", model = "models/hunter/plates/plate05x1.mdl", bone = "Base", rel = "base", pos = Vector(-0.784, -0.123, 2.374), angle = Angle(-1.162, 0.126, -0.286), size = Vector(0.169, 0.246, 0.19), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/props_canal/canal_bridge_railing_01c", skin = 0, bodygroup = {} },
	["base1+++"] = { type = "Model", model = "models/hunter/plates/plate05x1.mdl", bone = "Base", rel = "base", pos = Vector(-0.814, -0.185, -2.323), angle = Angle(-1.162, 0.126, -0.286), size = Vector(0.169, 0.246, 0.214), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/props_canal/canal_bridge_railing_01c", skin = 0, bodygroup = {} },
	["battary"] = { type = "Model", model = "models/Items/car_battery01.mdl", bone = "Base", rel = "base", pos = Vector(-4.18, -1.94, -0.069), angle = Angle(-88.422, 72.469, 72.412), size = Vector(0.367, 0.367, 0.367), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} },
	["button"] = { type = "Model", model = "models/hunter/misc/roundthing2.mdl", bone = "Base", rel = "base", pos = Vector(-3.128, 7.187, -0.292), angle = Angle(76.695, 156.66701, -10.509), size = Vector(0.021, 0.021, 0.021), color = Color(255, 0, 0, 255), surpresslightning = false, bonemerge = false, material = "models/XQM/Rails/gumball_1", skin = 0, bodygroup = {} },
	["button+"] = { type = "Model", model = "models/hunter/misc/roundthing2.mdl", bone = "Base", rel = "base", pos = Vector(-1.39, -0.71, 3.156), angle = Angle(4.605, 21.927, 76.016), size = Vector(0.017, 0.017, 0.017), color = Color(255, 0, 0, 255), surpresslightning = false, bonemerge = false, material = "models/XQM/Rails/gumball_1", skin = 0, bodygroup = {} },
	["coil"] = { type = "Model", model = "models/props_c17/utilityconnecter006d.mdl", bone = "Base", rel = "base", pos = Vector(0.497, -13.895, -0.02), angle = Angle(30.521, 0.53, -89.962), size = Vector(0.199, 0.199, 0.405), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} },
	["coil+"] = { type = "Model", model = "models/props_c17/utilityconnecter006d.mdl", bone = "Base", rel = "base", pos = Vector(-0.704, -13.9, -1.61), angle = Angle(30.521, 0.53, -89.962), size = Vector(0.199, 0.199, 0.405), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} },
	["coil++"] = { type = "Model", model = "models/props_c17/utilityconnecter006d.mdl", bone = "Base", rel = "base", pos = Vector(-1.109, -13.874, 1.211), angle = Angle(30.521, 0.53, -89.962), size = Vector(0.199, 0.199, 0.405), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} },
	["coil+++"] = { type = "Model", model = "models/props_c17/utilityconnecter006d.mdl", bone = "Base", rel = "base", pos = Vector(-2.329, -13.854, -0.395), angle = Angle(30.521, 0.53, -89.962), size = Vector(0.199, 0.199, 0.405), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} },
	["grip"] = { type = "Model", model = "models/mechanics/robotics/a2.mdl", bone = "Base", rel = "base", pos = Vector(-2.694, 9.072, -0.206), angle = Angle(3.11, 55.487, 115.096), size = Vector(0.175, 0.175, 0.175), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/props_combine/metal_combinebridge001", skin = 0, bodygroup = {} },
	["grip2"] = { type = "Model", model = "models/props_phx/construct/metal_dome360.mdl", bone = "Base", rel = "base", pos = Vector(-1.001, 5.552, -0.055), angle = Angle(37.533, -2.834, 91.49), size = Vector(0.041, 0.041, 0.041), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/props_combine/metal_combinebridge001", skin = 0, bodygroup = {} },
	["grip3"] = { type = "Model", model = "models/props_phx/construct/metal_plate_curve360x2.mdl", bone = "Base", rel = "base", pos = Vector(-0.616, 0.875, 1.261), angle = Angle(10.612, 13.775, -13.04), size = Vector(-0.017, 0.016, 0.075), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} },
	["light"] = { type = "Sprite", sprite = "engine/lightsprite", bone = "Base", rel = "base", pos = Vector(-0.758, -23.705, 0.267), size = { x = 17.236, y = 17.236 }, color = Color(0, 63, 255, 255), nocull = true, additive = true, vertexalpha = true, vertexcolor = true, ignorez = false},
	["lightning"] = { type = "Model", model = "models/hunter/tubes/tube1x1x3.mdl", bone = "Base", rel = "base", pos = Vector(-0.886, -4.369, 0.327), angle = Angle(33.586, 1.139, -91.41), size = Vector(-0.037, 0.035, 0.128), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/alyx/emptool_glow", skin = 0, bodygroup = {} },
	["lightning canal"] = { type = "Model", model = "models/props_combine/combine_light002a.mdl", bone = "Base", rel = "base", pos = Vector(0.36, 5.463, 0.179), angle = Angle(2.737, 179.614, 91.613), size = Vector(0.277, 0.277, 0.277), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} },
	["stabilizers"] = { type = "Model", model = "models/Items/battery.mdl", bone = "Base", rel = "base", pos = Vector(-1.789, 0.275, -3.155), angle = Angle(-87.043, 55.957, 57.224), size = Vector(0.29, 0.29, 0.29), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} },
	["stabilizers+"] = { type = "Model", model = "models/Items/battery.mdl", bone = "Base", rel = "base", pos = Vector(-1.836, 2.889, -3.177), angle = Angle(-87.043, 55.957, 57.224), size = Vector(0.29, 0.29, 0.29), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} },
	["stabilizers++"] = { type = "Model", model = "models/Items/battery.mdl", bone = "Base", rel = "base", pos = Vector(-1.809, 1.579, -3.208), angle = Angle(-87.043, 55.957, 57.224), size = Vector(0.29, 0.29, 0.29), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} }
}

SWEP.WElements = {
	["Backpack"] = { type = "Model", model = "models/hunter/blocks/cube1x2x05.mdl", bone = "ValveBiped.Bip01_Spine", rel = "", pos = Vector(11.727, 2.55, -1.38), angle = Angle(-94.707, -119.373, 131.32201), size = Vector(0.184, 0.131, 0.225), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/props_combine/metal_combinebridge001", skin = 0, bodygroup = {} },
	["ball"] = { type = "Model", model = "models/XQM/Rails/gumball_1.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "base", pos = Vector(-0.965, -23.704, -0.146), angle = Angle(-0.939, 7.311, -6.465), size = Vector(0.124, 0.124, 0.124), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/gibs/metalgibs/metal_gibs", skin = 0, bodygroup = {} },
	["ball+"] = { type = "Model", model = "models/XQM/Rails/gumball_1.mdl", bone = "ValveBiped.Bip01_Spine", rel = "Backpack", pos = Vector(-0.831, 19.321, -4.018), angle = Angle(25.862, -77.046, 66.585), size = Vector(0.206, 0.206, 0.206), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/gibs/metalgibs/metal_gibs", skin = 0, bodygroup = {} },
	["barrel"] = { type = "Model", model = "models/props_phx/gears/bevel36.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "base", pos = Vector(-0.695, -6.321, -0.12), angle = Angle(-5.267, 3.333, -91.035), size = Vector(0.081, 0.081, 0.081), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} },
	["base"] = { type = "Model", model = "models/hunter/blocks/cube075x3x1.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(12.846, 0.93, -6.18), angle = Angle(-74.26, 134.492, -133.23), size = Vector(0.129, 0.091, 0.095), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/props_combine/metal_combinebridge001", skin = 0, bodygroup = {} },
	["base1"] = { type = "Model", model = "models/hunter/plates/plate05x1.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "base", pos = Vector(-3.242, -0.139, -0.081), angle = Angle(89.351, -0.057, -0.284), size = Vector(0.169, 0.246, 0.214), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/props_canal/canal_bridge_railing_01c", skin = 0, bodygroup = {} },
	["base1+"] = { type = "Model", model = "models/hunter/plates/plate05x1.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "base", pos = Vector(1.592, -0.177, 0.005), angle = Angle(-89.995, 0.412, 0), size = Vector(0.169, 0.246, 0.19), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/props_canal/canal_bridge_railing_01c", skin = 0, bodygroup = {} },
	["base1++"] = { type = "Model", model = "models/hunter/plates/plate05x1.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "base", pos = Vector(-0.784, -0.123, 2.374), angle = Angle(-1.162, 0.126, -0.286), size = Vector(0.169, 0.246, 0.19), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/props_canal/canal_bridge_railing_01c", skin = 0, bodygroup = {} },
	["base1+++"] = { type = "Model", model = "models/hunter/plates/plate05x1.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "base", pos = Vector(-0.814, -0.185, -2.323), angle = Angle(-1.162, 0.126, -0.286), size = Vector(0.169, 0.246, 0.214), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/props_canal/canal_bridge_railing_01c", skin = 0, bodygroup = {} },
	["battary"] = { type = "Model", model = "models/Items/car_battery01.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "base", pos = Vector(-4.18, -1.94, -0.069), angle = Angle(-88.422, 72.469, 72.412), size = Vector(0.367, 0.367, 0.367), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} },
	["button"] = { type = "Model", model = "models/hunter/misc/roundthing2.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "base", pos = Vector(-3.128, 7.187, -0.292), angle = Angle(76.695, 156.66701, -10.509), size = Vector(0.021, 0.021, 0.021), color = Color(255, 0, 0, 255), surpresslightning = false, bonemerge = false, material = "models/XQM/Rails/gumball_1", skin = 0, bodygroup = {} },
	["button+"] = { type = "Model", model = "models/hunter/misc/roundthing2.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "base", pos = Vector(-0.541, 2.28, 3.461), angle = Angle(4.605, 21.927, 76.016), size = Vector(0.017, 0.017, 0.017), color = Color(255, 0, 0, 255), surpresslightning = false, bonemerge = false, material = "models/XQM/Rails/gumball_1", skin = 0, bodygroup = {} },
	["coil"] = { type = "Model", model = "models/props_c17/utilityconnecter006d.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "base", pos = Vector(0.497, -13.895, -0.02), angle = Angle(30.521, 0.53, -89.962), size = Vector(0.199, 0.199, 0.405), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} },
	["coil+"] = { type = "Model", model = "models/props_c17/utilityconnecter006d.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "base", pos = Vector(-0.704, -13.9, -1.61), angle = Angle(30.521, 0.53, -89.962), size = Vector(0.199, 0.199, 0.405), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} },
	["coil++"] = { type = "Model", model = "models/props_c17/utilityconnecter006d.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "base", pos = Vector(-1.109, -13.874, 1.211), angle = Angle(30.521, 0.53, -89.962), size = Vector(0.199, 0.199, 0.405), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} },
	["coil+++"] = { type = "Model", model = "models/props_c17/utilityconnecter006d.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "base", pos = Vector(-2.329, -13.854, -0.395), angle = Angle(30.521, 0.53, -89.962), size = Vector(0.199, 0.199, 0.405), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} },
	["coil++++"] = { type = "Model", model = "models/props_c17/utilityconnecter006d.mdl", bone = "ValveBiped.Bip01_Spine", rel = "Backpack", pos = Vector(-0.601, 11.563, -2.103), angle = Angle(-30.668, 6.066, 104.443), size = Vector(0.353, 0.353, 0.353), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} },
	["core"] = { type = "Model", model = "models/maxofs2d/hover_rings.mdl", bone = "ValveBiped.Bip01_Spine", rel = "Backpack", pos = Vector(-0.032, 0.812, -3.394), angle = Angle(25.845, -77.04, 66.584), size = Vector(0.234, 0.234, 0.234), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} },
	["frame"] = { type = "Model", model = "models/props_phx/construct/metal_angle360.mdl", bone = "ValveBiped.Bip01_Spine", rel = "Backpack", pos = Vector(-0.057, 0.896, -2.917), angle = Angle(1.931, -87.707, -1.181), size = Vector(0.056, 0.056, 0.056), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/props_canal/canal_bridge_railing_01c", skin = 0, bodygroup = {} },
	["frame1"] = { type = "Model", model = "models/props_phx/construct/metal_plate1x2.mdl", bone = "ValveBiped.Bip01_Spine", rel = "Backpack", pos = Vector(0.008, -3.816, -3.09), angle = Angle(-0.319, 1.321, -0.546), size = Vector(0.03, 0.046, 0.13), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/props_canal/canal_bridge_railing_01c", skin = 0, bodygroup = {} },
	["frame1+"] = { type = "Model", model = "models/props_phx/construct/metal_plate1x2.mdl", bone = "ValveBiped.Bip01_Spine", rel = "Backpack", pos = Vector(2.434, 4.339, -3.075), angle = Angle(4.786, -140.95, -1.579), size = Vector(0.03, 0.042, 0.13), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/props_canal/canal_bridge_railing_01c", skin = 0, bodygroup = {} },
	["frame1++"] = { type = "Model", model = "models/props_phx/construct/metal_plate1x2.mdl", bone = "ValveBiped.Bip01_Spine", rel = "Backpack", pos = Vector(-2.55, 4.265, -2.997), angle = Angle(2.869, -44.052, 1.276), size = Vector(0.03, 0.042, 0.13), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/props_canal/canal_bridge_railing_01c", skin = 0, bodygroup = {} },
	["grip"] = { type = "Model", model = "models/mechanics/robotics/a2.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "base", pos = Vector(-2.694, 9.072, -0.206), angle = Angle(3.11, 55.487, 115.096), size = Vector(0.175, 0.175, 0.175), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/props_combine/metal_combinebridge001", skin = 0, bodygroup = {} },
	["grip2"] = { type = "Model", model = "models/props_phx/construct/metal_dome360.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "base", pos = Vector(-1.001, 5.552, -0.055), angle = Angle(37.533, -2.834, 91.49), size = Vector(0.041, 0.041, 0.041), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/props_combine/metal_combinebridge001", skin = 0, bodygroup = {} },
	["grip3"] = { type = "Model", model = "models/props_phx/construct/metal_plate_curve360x2.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "base", pos = Vector(-0.054, 3.387, 2.201), angle = Angle(10.612, 13.775, -13.04), size = Vector(-0.017, 0.016, 0.075), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} },
	["lamp"] = { type = "Model", model = "models/props_combine/combine_light002a.mdl", bone = "ValveBiped.Bip01_Spine", rel = "Backpack", pos = Vector(3.7, -5.373, -0.038), angle = Angle(-1.216, -179.29601, -90.105), size = Vector(0.258, 0.258, 0.258), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} },
	["lamp+"] = { type = "Model", model = "models/props_combine/combine_light002a.mdl", bone = "ValveBiped.Bip01_Spine", rel = "Backpack", pos = Vector(-3.529, -5.525, 0.154), angle = Angle(3.743, -0.448, 91.54), size = Vector(0.258, 0.258, 0.258), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} },
	["light"] = { type = "Sprite", sprite = "engine/lightsprite", bone = "ValveBiped.Bip01_R_Hand", rel = "base", pos = Vector(-0.758, -23.705, 0.267), size = { x = 17.236, y = 17.236 }, color = Color(0, 63, 255, 255), nocull = true, additive = true, vertexalpha = true, vertexcolor = true, ignorez = false},
	["light+"] = { type = "Sprite", sprite = "engine/lightsprite", bone = "ValveBiped.Bip01_Spine", rel = "Backpack", pos = Vector(-0.798, 19.272, -3.338), size = { x = 29.243, y = 29.243 }, color = Color(0, 63, 255, 255), nocull = true, additive = true, vertexalpha = true, vertexcolor = true, ignorez = false},
	["lightning"] = { type = "Model", model = "models/hunter/tubes/tube1x1x3.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "base", pos = Vector(-0.886, -4.369, 0.327), angle = Angle(33.586, 1.139, -91.41), size = Vector(-0.037, 0.035, 0.128), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/alyx/emptool_glow", skin = 0, bodygroup = {} },
	["lightning canal"] = { type = "Model", model = "models/props_combine/combine_light002a.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "base", pos = Vector(0.36, 5.463, 0.179), angle = Angle(2.737, 179.614, 91.613), size = Vector(0.277, 0.277, 0.277), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} },
	["stabilizers"] = { type = "Model", model = "models/Items/battery.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "base", pos = Vector(-1.789, 0.275, -3.155), angle = Angle(-87.043, 55.957, 57.224), size = Vector(0.29, 0.29, 0.29), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} },
	["stabilizers+"] = { type = "Model", model = "models/Items/battery.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "base", pos = Vector(-1.836, 2.889, -3.177), angle = Angle(-87.043, 55.957, 57.224), size = Vector(0.29, 0.29, 0.29), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} },
	["stabilizers++"] = { type = "Model", model = "models/Items/battery.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "base", pos = Vector(-1.809, 1.579, -3.208), angle = Angle(-87.043, 55.957, 57.224), size = Vector(0.29, 0.29, 0.29), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} },
	["tesla con"] = { type = "Model", model = "models/props_c17/substation_circuitbreaker01a.mdl", bone = "ValveBiped.Bip01_Spine", rel = "Backpack", pos = Vector(0.154, -7.426, -0.909), angle = Angle(83.333, 166.313, 106.222), size = Vector(0.03, 0.03, 0.03), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} }
}





local colBG = Color(16, 16, 16, 90)
local colRed = Color(220, 0, 0, 230) 
local colGreeb = Color(0, 201, 87, 230)
local colWhite = Color(220, 220, 220, 230)

local function DrawHeatBar(self, x, y, wid, hei, is3d)
	local heatcolor = (1 - (self:GetShortHeat() + self:GetLongHeat())) * 220
	colWhite.g = heatcolor
	colWhite.b = heatcolor
	colWhite.a = 230

	local barrelcol = self.VElements["stabilizers"].color
	barrelcol.g = heatcolor
	barrelcol.b = heatcolor

	local shortdiv = self:GetShortHeat()
	local longdiv = self:GetLongHeat()
	local barheight = 20
	local bary = y + hei * 0.6
	local barshortwid = math.max(wid * shortdiv - 8, 0)
	local barlongwid = math.max(wid * longdiv - 8, 0)

	surface.SetDrawColor(0, 0, 0, 220)
	surface.DrawRect(x, bary, wid - 8, barheight)
	surface.SetDrawColor(255, 30, 10, 220)
	surface.DrawRect(x + 4, bary + 4, barlongwid, barheight - 8)
	surface.SetDrawColor(255, 190, 0, 220)
	surface.DrawRect(x + 4 + barlongwid, bary + 4, barshortwid, barheight - 8)
	surface.SetDrawColor(100, 0, 0, 255)
	surface.DrawRect(x - 12 + wid, bary - 4, 4, barheight + 8)


	if self:GetGunState() == 2 then
		colWhite.b = 0
		colWhite.g = 0
		if ((CurTime() * 4) % 2) > 1 then
			colWhite.a = 0
		else
			draw.SimpleTextBlurry("ВЕНТИЛЯЦИЯ", is3d and "ZS3D2DFontSmaller" or "ZSHUDFontSmaller", x + wid/2, bary + hei * 0.15, colRed, TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
		end
	end
	local timers = self:GetDTFloat(12)
	if timers and timers > CurTime() then
		bary = bary - 64

		barshortwid = wid/(15/(self:GetDTFloat(12)-CurTime()-1))

		barlongwid = wid/(8/(self:GetDTFloat(12)-CurTime()-8))

		surface.SetDrawColor(0, 0, 0, 220)
		surface.DrawRect(x, bary, wid - 8, barheight)
		surface.SetDrawColor(24, 236, 255, 220)
		surface.DrawRect(x + 4, bary + 4, barlongwid, barheight - 8)
		surface.SetDrawColor(21, 0, 255, 220)
		surface.DrawRect(x + 4, bary + 4, barshortwid, barheight - 8)
		surface.SetDrawColor(100, 0, 0, 255)
		surface.DrawRect(x - 12 + wid, bary - 4, 4, barheight + 8)
		draw.SimpleTextBlurry(barlongwid > 0 and "УСИЛЕНИЕ" or "ПЕРЕЗАРЯДКА", is3d and "ZS3D2DFontSmaller" or "ZSHUDFontSmaller", x + wid/2, bary + hei * 0.15, colGreeb, TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
	end
end

function SWEP:Draw2DHUD()
	local screenscale = BetterScreenScale()

	local wid, hei = 180 * screenscale, 64 * screenscale
	local x, y = ScrW() - wid - screenscale * 128, ScrH() - hei - screenscale * 72
	local spare = self:GetPrimaryAmmoCount()

	local yy = ScrH() - hei * 2 - screenscale * 84

	DrawHeatBar(self, x + wid * 0.25 - wid/4, yy + hei * 0.2, wid, hei)

	draw.RoundedBox(16, x, y, wid, hei, colBG)
	if spare > 65533 then
		spare = spare-65535
	end
	draw.SimpleTextBlurry(spare, spare >= 1000 and "ZSHUDFont" or "ZSHUDFontBig", x + wid * 0.5, y + hei * 0.5, spare == 0 and colRed or colWhite, TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
	draw.SimpleTextBlurry("Нагрев", "ZSHUDFont", x + wid * 0.5, yy + hei * 0.45, colRed, TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
end

function SWEP:Draw3DHUD(vm, pos, ang)
	local wid, hei = 180, 64
	local x, y = wid * -0.6, hei * -0.5
	local spare = self:GetPrimaryAmmoCount()

	cam.Start3D2D(pos, ang, self.HUD3DScale / 2)
		DrawHeatBar(self, x + wid * 0.25 - wid/4, y - hei * 1, wid, hei, true)

		draw.RoundedBoxEx(32, x, y, wid, hei, colBG, true, false, true, false)
		if spare > 65533 then
			spare = spare-65535
		end
		draw.SimpleTextBlurry(spare, spare >= 1000 and "ZS3D2DFontSmall" or "ZS3D2DFont", x + wid * 0.5, y + hei * 0.5, spare == 0 and colRed or colWhite, TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
		draw.SimpleTextBlurry("Нагрев", "ZS3D2DFontSmall", x + wid * 0.5, y - hei * 1, colRed, TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
	cam.End3D2D()
end
