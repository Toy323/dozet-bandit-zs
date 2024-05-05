AddCSLuaFile()

if CLIENT then
	SWEP.TranslateName = "weapon_tesla_name"
	SWEP.TranslateDesc = "weapon_tesla_desc"
	SWEP.ViewModelBoneMods = {
		["ValveBiped.Bip01_L_Forearm"] = { scale = Vector(1, 1, 1), pos = Vector(1.203, -1.758, 1.35), angle = Angle(0, 2.626, -0.025) },
		["ValveBiped.Bip01_L_Hand"] = { scale = Vector(1, 1, 1), pos = Vector(-0.091, -0.028, 0), angle = Angle(0, 0, 0) }
	}
	
	SWEP.VElements = {
		["base"] = { type = "Model", model = "models/hunter/blocks/cube075x2x075.mdl", bone = "v_weapon.awm_parent", rel = "", pos = Vector(0.151, -2.809, -5.627), angle = Angle(-1.93, 90.035, -89.986), size = Vector(0.079, 0.082, 0.049), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/gibs/metalgibs/metal_gibs", skin = 0, bodygroup = {} },
		["base2"] = { type = "Model", model = "models/props_phx/misc/iron_beam1.mdl", bone = "v_weapon.awm_parent", rel = "base", pos = Vector(0.525, 10.49, -0.596), angle = Angle(-0.015, 90.389, 0.484), size = Vector(0.37, 0.194, 0.173), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/props_canal/canal_bridge_railing_01c", skin = 0, bodygroup = {} },
		["battery"] = { type = "Model", model = "models/Items/battery.mdl", bone = "v_weapon.awm_clip", rel = "", pos = Vector(-0.004, 1.937, -2.748), angle = Angle(0, -91.342, 0), size = Vector(0.416, 0.33, 0.429), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} },
		["bolt"] = { type = "Model", model = "models/hunter/blocks/cube075x3x075.mdl", bone = "v_weapon.awm_parent", rel = "base", pos = Vector(1.404, -4.426, -0.01), angle = Angle(-88.252, -178.716, -177.92999), size = Vector(0.046, 0.117, 0.041), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/gibs/metalgibs/metal_gibs", skin = 0, bodygroup = {} },
		["bolt grip"] = { type = "Model", model = "models/hunter/misc/sphere075x075.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "bolt1", pos = Vector(-0.818, -2.693, 0.413), angle = Angle(-2.955, 15.012, -63.318), size = Vector(0.037, 0.037, 0.037), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/props_combine/metal_combinebridge001", skin = 0, bodygroup = {} },
		["bolt1"] = { type = "Model", model = "models/Mechanics/gears2/gear_12t3.mdl", bone = "v_weapon.awm_bolt_action", rel = "", pos = Vector(-0.012, 0.096, 0.444), angle = Angle(-1.151, 88.667, -2.007), size = Vector(0.062, 0.062, 0.062), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/props_combine/metal_combinebridge001", skin = 0, bodygroup = {} },
		["bolt1+"] = { type = "Model", model = "models/mechanics/robotics/a2.mdl", bone = "v_weapon.awm_bolt_action", rel = "bolt1", pos = Vector(0.112, -0.102, -2.747), angle = Angle(-87.757, 63.234, 59.712), size = Vector(0.09, 0.09, 0.052), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/props_combine/metal_combinebridge001", skin = 0, bodygroup = {} },
		["bolt2"] = { type = "Model", model = "models/mechanics/robotics/a2.mdl", bone = "v_weapon.awm_bolt_action", rel = "bolt1", pos = Vector(-0.412, -1.228, -0.343), angle = Angle(-26.402, -72.307, -88.105), size = Vector(0.051, 0.051, 0.051), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/props_combine/metal_combinebridge001", skin = 0, bodygroup = {} },
		["coil"] = { type = "Model", model = "models/props_c17/utilityconnecter006c.mdl", bone = "v_weapon.awm_parent", rel = "base", pos = Vector(-0.104, -17.386, 0.329), angle = Angle(-1.213, -3.213, -90.02), size = Vector(0.103, 0.094, 0.263), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} },
		["coil ball"] = { type = "Model", model = "models/hunter/misc/sphere075x075.mdl", bone = "v_weapon.awm_parent", rel = "base", pos = Vector(0.762, -23.816, 0.386), angle = Angle(-0.214, 8.5, 3.06), size = Vector(0.069, 0.069, 0.069), color = Color(0, 0, 0, 255), surpresslightning = false, bonemerge = false, material = "models/player/shared/ice_player", skin = 0, bodygroup = {} },
		["coil+"] = { type = "Model", model = "models/props_c17/utilityconnecter006c.mdl", bone = "v_weapon.awm_parent", rel = "base", pos = Vector(1.65, -17.183, 0.268), angle = Angle(-0.671, -0.971, -90.012), size = Vector(0.103, 0.094, 0.263), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} },
		["grip"] = { type = "Model", model = "models/props_phx/misc/iron_beam1.mdl", bone = "v_weapon.awm_parent", rel = "base", pos = Vector(-2.011, 6.581, -0.019), angle = Angle(0.923, 25.281, -0.487), size = Vector(0.1, 0.134, 0.105), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/props_canal/canal_bridge_railing_01c", skin = 0, bodygroup = {} },
		["handle"] = { type = "Model", model = "models/hunter/triangles/1x1x1.mdl", bone = "v_weapon.awm_parent", rel = "base", pos = Vector(-0.374, -10.85, 0.282), angle = Angle(-88.289, 167.765, -10.164), size = Vector(0.034, 0.083, 0.069), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/props/CS_militia/roofbeams01", skin = 0, bodygroup = {} },
		["handle+"] = { type = "Model", model = "models/hunter/triangles/1x1x1.mdl", bone = "v_weapon.awm_parent", rel = "base", pos = Vector(-0.351, -5.79, 0.236), angle = Angle(89.746, -84.107, 83.281), size = Vector(0.034, 0.083, 0.069), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/props/CS_militia/roofbeams01", skin = 0, bodygroup = {} },
		["handle1"] = { type = "Model", model = "models/props_phx/misc/iron_beam1.mdl", bone = "v_weapon.awm_parent", rel = "base", pos = Vector(0.56, -8.23, -0.508), angle = Angle(0.087, 89.664, 1.089), size = Vector(0.113, 0.149, 0.16), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/props/CS_militia/roofbeams01", skin = 0, bodygroup = {} },
		["lamp"] = { type = "Model", model = "models/props_combine/combine_light002a.mdl", bone = "v_weapon.awm_parent", rel = "base", pos = Vector(-1.304, -0.006, 0.764), angle = Angle(-92.531, -90.16, -89.903), size = Vector(0.074, 0.074, 0.074), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} },
		["lamp+"] = { type = "Model", model = "models/props_combine/combine_light002a.mdl", bone = "v_weapon.awm_parent", rel = "base", pos = Vector(-1.322, -2.082, 0.705), angle = Angle(-80.627, 86.813, 89.081), size = Vector(0.074, 0.074, 0.074), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} },
		["lamp++"] = { type = "Model", model = "models/props_combine/combine_light002a.mdl", bone = "v_weapon.awm_parent", rel = "base", pos = Vector(-1.312, -1.129, 0.678), angle = Angle(-80.627, 86.813, 89.081), size = Vector(0.074, 0.074, 0.074), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} },
		["sight"] = { type = "Model", model = "models/hunter/tubes/tube1x1x2.mdl", bone = "v_weapon.awm_parent", rel = "base", pos = Vector(3.921, -2.329, 0.199), angle = Angle(1.358, -0.803, -90.041), size = Vector(0.031, 0.031, 0.031), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/gibs/metalgibs/metal_gibs", skin = 0, bodygroup = {} },
		["sight handle"] = { type = "Model", model = "models/props_phx/construct/metal_wire1x2.mdl", bone = "v_weapon.awm_parent", rel = "base", pos = Vector(3.06, -2.973, 0.268), angle = Angle(86.658, -55.111, 143.83501), size = Vector(0.017, 0.015, 0.033), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/gibs/metalgibs/metal_gibs", skin = 0, bodygroup = {} },
		["sight handle+"] = { type = "Model", model = "models/props_phx/construct/metal_wire1x2.mdl", bone = "v_weapon.awm_parent", rel = "base", pos = Vector(3.089, -4.924, 0.228), angle = Angle(86.658, -55.111, 143.836), size = Vector(0.017, 0.015, 0.033), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/gibs/metalgibs/metal_gibs", skin = 0, bodygroup = {} },
		["sight weel"] = { type = "Model", model = "models/Mechanics/gears/gear16x24_small.mdl", bone = "v_weapon.awm_parent", rel = "base", pos = Vector(5.012, -3.847, 0.157), angle = Angle(80.237, 87.869, -89.762), size = Vector(0.048, 0.048, 0.048), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} },
		["sight+"] = { type = "Model", model = "models/props_phx/construct/metal_angle360.mdl", bone = "v_weapon.awm_parent", rel = "base", pos = Vector(4.031, -6.603, 0.296), angle = Angle(6.241, -1.304, 91.143), size = Vector(0.02, 0.02, 0.02), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} },
		["sight++"] = { type = "Model", model = "models/xqm/afterburner1big.mdl", bone = "v_weapon.awm_parent", rel = "base", pos = Vector(3.961, -2.198, 0.198), angle = Angle(4.866, -1.546, -88.753), size = Vector(0.028, 0.028, 0.028), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/gibs/metalgibs/metal_gibs", skin = 0, bodygroup = {} },
		["sight+++"] = { type = "Model", model = "models/xqm/afterburner1big.mdl", bone = "v_weapon.awm_parent", rel = "base", pos = Vector(4.048, -5.536, 0.224), angle = Angle(6.241, -2.313, 91.253), size = Vector(0.028, 0.028, 0.028), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/gibs/metalgibs/metal_gibs", skin = 0, bodygroup = {} },
		["sight++++"] = { type = "Model", model = "models/props_phx/construct/metal_angle360.mdl", bone = "v_weapon.awm_parent", rel = "base", pos = Vector(3.884, -1.183, 0.169), angle = Angle(6.241, -1.304, 91.143), size = Vector(0.02, 0.02, 0.02), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} },
		["stock"] = { type = "Model", model = "models/props_phx/misc/iron_beam1.mdl", bone = "v_weapon.awm_parent", rel = "base", pos = Vector(-1.656, 16.713, -0.399), angle = Angle(-1.715, 46.544, -0.255), size = Vector(0.116, 0.134, 0.14), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/props_canal/canal_bridge_railing_01c", skin = 0, bodygroup = {} },
		["stock+"] = { type = "Model", model = "models/props_phx/misc/iron_beam1.mdl", bone = "v_weapon.awm_parent", rel = "base", pos = Vector(-2.068, 18.772, -0.535), angle = Angle(-0.565, 3.768, -2.128), size = Vector(0.1, 0.146, 0.164), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/props_canal/canal_bridge_railing_01c", skin = 0, bodygroup = {} },
		["tesla"] = { type = "Sprite", sprite = "effects/combine_halo", bone = "v_weapon.awm_parent", rel = "base", pos = Vector(0.674, -23.696, 0.599), size = { x = 12.311, y = 12.311 }, color = Color(29, 0, 255, 255), nocull = true, additive = true, vertexalpha = true, vertexcolor = true, ignorez = false},
		["trigger"] = { type = "Model", model = "models/mechanics/robotics/claw2.mdl", bone = "v_weapon.awm_parent", rel = "base", pos = Vector(-0.895, 4.067, 0.573), angle = Angle(0.189, -58.834, 0.268), size = Vector(0.047, 0.037, 0.047), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/props_canal/canal_bridge_railing_01c", skin = 0, bodygroup = {} },
		["trigger1"] = { type = "Model", model = "models/mechanics/robotics/claw.mdl", bone = "v_weapon.awm_parent", rel = "base", pos = Vector(-0.433, 4.69, 0.432), angle = Angle(-0.341, -78.509, 0.813), size = Vector(0.031, 0.031, 0.031), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/props_canal/canal_bridge_railing_01c", skin = 0, bodygroup = {} }
		}
		
		SWEP.WElements = {
		["base"] = { type = "Model", model = "models/hunter/blocks/cube075x2x075.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(9.48, 1.095, -2.342), angle = Angle(-90.447, 114.459, -155.478), size = Vector(0.079, 0.082, 0.049), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/gibs/metalgibs/metal_gibs", skin = 0, bodygroup = {} },
		["base2"] = { type = "Model", model = "models/props_phx/misc/iron_beam1.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "base", pos = Vector(0.52502, 10.48999, -0.59601), angle = Angle(-0.015, 90.38896, 0.48401), size = Vector(0.37, 0.194, 0.173), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/props_canal/canal_bridge_railing_01c", skin = 0, bodygroup = {} },
		["battery"] = { type = "Model", model = "models/Items/battery.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "base", pos = Vector(-1.93799, -2.614, 0.37704), angle = Angle(1.37701, 178.07001, -89.98599), size = Vector(0.416, 0.33, 0.429), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} },
		["bolt"] = { type = "Model", model = "models/hunter/blocks/cube075x3x075.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "base", pos = Vector(1.40387, -4.42599, -0.00998), angle = Angle(-88.25192, -178.71637, -177.93039), size = Vector(0.046, 0.117, 0.041), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/gibs/metalgibs/metal_gibs", skin = 0, bodygroup = {} },
		["bolt grip"] = { type = "Model", model = "models/hunter/misc/sphere075x075.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "bolt1", pos = Vector(-0.818, -2.693, 0.413), angle = Angle(-2.955, 15.012, -63.318), size = Vector(0.037, 0.037, 0.037), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/props_combine/metal_combinebridge001", skin = 0, bodygroup = {} },
		["bolt1"] = { type = "Model", model = "models/Mechanics/gears2/gear_12t3.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "base", pos = Vector(1.66925, 4.62577, 0.27606), angle = Angle(-1.36753, -0.779, 88.00648), size = Vector(0.062, 0.062, 0.062), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/props_combine/metal_combinebridge001", skin = 0, bodygroup = {} },
		["bolt1+"] = { type = "Model", model = "models/mechanics/robotics/a2.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "bolt1", pos = Vector(0.112, -0.102, -2.747), angle = Angle(-87.757, 63.234, 59.712), size = Vector(0.09, 0.09, 0.052), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/props_combine/metal_combinebridge001", skin = 0, bodygroup = {} },
		["bolt2"] = { type = "Model", model = "models/mechanics/robotics/a2.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "bolt1", pos = Vector(-0.412, -1.228, -0.343), angle = Angle(-26.402, -72.307, -88.105), size = Vector(0.051, 0.051, 0.051), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/props_combine/metal_combinebridge001", skin = 0, bodygroup = {} },
		["coil"] = { type = "Model", model = "models/props_c17/utilityconnecter006c.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "base", pos = Vector(-0.10406, -17.386, 0.32898), angle = Angle(-1.21301, -3.21299, -90.01999), size = Vector(0.103, 0.094, 0.263), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} },
		["coil ball"] = { type = "Model", model = "models/hunter/misc/sphere075x075.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "base", pos = Vector(0.76208, -23.81599, 0.38589), angle = Angle(-0.21403, 8.5, 3.06002), size = Vector(0.069, 0.069, 0.069), color = Color(0, 0, 0, 255), surpresslightning = false, bonemerge = false, material = "models/player/shared/ice_player", skin = 0, bodygroup = {} },
		["coil+"] = { type = "Model", model = "models/props_c17/utilityconnecter006c.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "base", pos = Vector(1.6499, -17.183, 0.26801), angle = Angle(-0.67102, -0.971, -90.01196), size = Vector(0.103, 0.094, 0.263), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} },
		["grip"] = { type = "Model", model = "models/props_phx/misc/iron_beam1.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "base", pos = Vector(-2.01117, 6.58101, -0.01898), angle = Angle(0.92301, 25.28098, -0.48698), size = Vector(0.1, 0.134, 0.105), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/props_canal/canal_bridge_railing_01c", skin = 0, bodygroup = {} },
		["handle"] = { type = "Model", model = "models/hunter/triangles/1x1x1.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "base", pos = Vector(-0.37402, -10.85001, 0.28195), angle = Angle(-88.28898, 167.76506, -10.16391), size = Vector(0.034, 0.083, 0.069), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/props/CS_militia/roofbeams01", skin = 0, bodygroup = {} },
		["handle+"] = { type = "Model", model = "models/hunter/triangles/1x1x1.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "base", pos = Vector(-0.35114, -5.78998, 0.23593), angle = Angle(89.74594, -84.10546, 83.27868), size = Vector(0.034, 0.083, 0.069), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/props/CS_militia/roofbeams01", skin = 0, bodygroup = {} },
		["handle1"] = { type = "Model", model = "models/props_phx/misc/iron_beam1.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "base", pos = Vector(0.56006, -8.23, -0.50803), angle = Angle(0.087, 89.66395, 1.08899), size = Vector(0.113, 0.149, 0.16), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/props/CS_militia/roofbeams01", skin = 0, bodygroup = {} },
		["lamp"] = { type = "Model", model = "models/props_combine/combine_light002a.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "base", pos = Vector(-1.30396, -0.006, 0.76395), angle = Angle(-87.46902, 89.8403, 90.09737), size = Vector(0.074, 0.074, 0.074), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} },
		["lamp+"] = { type = "Model", model = "models/props_combine/combine_light002a.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "base", pos = Vector(-1.32202, -2.082, 0.70505), angle = Angle(-80.62696, 86.81294, 89.08102), size = Vector(0.074, 0.074, 0.074), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} },
		["lamp++"] = { type = "Model", model = "models/props_combine/combine_light002a.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "base", pos = Vector(-1.31207, -1.12898, 0.67789), angle = Angle(-80.62696, 86.81294, 89.08102), size = Vector(0.074, 0.074, 0.074), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} },
		["sight"] = { type = "Model", model = "models/hunter/tubes/tube1x1x2.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "base", pos = Vector(3.9209, -2.32899, 0.19901), angle = Angle(1.358, -0.803, -90.04095), size = Vector(0.031, 0.031, 0.031), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/gibs/metalgibs/metal_gibs", skin = 0, bodygroup = {} },
		["sight handle"] = { type = "Model", model = "models/props_phx/construct/metal_wire1x2.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "base", pos = Vector(3.06006, -2.97299, 0.26804), angle = Angle(86.65796, -55.11124, 143.83524), size = Vector(0.017, 0.015, 0.033), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/gibs/metalgibs/metal_gibs", skin = 0, bodygroup = {} },
		["sight handle+"] = { type = "Model", model = "models/props_phx/construct/metal_wire1x2.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "base", pos = Vector(3.08887, -4.924, 0.22803), angle = Angle(86.65796, -55.11124, 143.83626), size = Vector(0.017, 0.015, 0.033), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/gibs/metalgibs/metal_gibs", skin = 0, bodygroup = {} },
		["sight weel"] = { type = "Model", model = "models/Mechanics/gears/gear16x24_small.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "base", pos = Vector(5.01202, -3.847, 0.15698), angle = Angle(80.23698, 87.86889, -89.76195), size = Vector(0.048, 0.048, 0.048), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} },
		["sight+"] = { type = "Model", model = "models/props_phx/construct/metal_angle360.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "base", pos = Vector(4.03088, -6.60298, 0.29596), angle = Angle(6.241, -1.304, 91.14296), size = Vector(0.02, 0.02, 0.02), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} },
		["sight++"] = { type = "Model", model = "models/xqm/afterburner1big.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "base", pos = Vector(3.961, -2.198, 0.19809), angle = Angle(4.86599, -1.546, -88.75294), size = Vector(0.028, 0.028, 0.028), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/gibs/metalgibs/metal_gibs", skin = 0, bodygroup = {} },
		["sight+++"] = { type = "Model", model = "models/xqm/afterburner1big.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "base", pos = Vector(4.04785, -5.536, 0.22388), angle = Angle(6.24099, -2.313, 91.25302), size = Vector(0.028, 0.028, 0.028), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/gibs/metalgibs/metal_gibs", skin = 0, bodygroup = {} },
		["sight++++"] = { type = "Model", model = "models/props_phx/construct/metal_angle360.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "base", pos = Vector(3.88385, -1.183, 0.16898), angle = Angle(6.241, -1.304, 91.14296), size = Vector(0.02, 0.02, 0.02), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} },
		["stock"] = { type = "Model", model = "models/props_phx/misc/iron_beam1.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "base", pos = Vector(-1.65607, 16.71301, -0.39896), angle = Angle(-1.71501, 46.54397, -0.25497), size = Vector(0.116, 0.134, 0.14), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/props_canal/canal_bridge_railing_01c", skin = 0, bodygroup = {} },
		["stock+"] = { type = "Model", model = "models/props_phx/misc/iron_beam1.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "base", pos = Vector(-2.06799, 18.77201, -0.535), angle = Angle(-0.56503, 3.768, -2.12798), size = Vector(0.1, 0.146, 0.164), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/props_canal/canal_bridge_railing_01c", skin = 0, bodygroup = {} },
		["tesla"] = { type = "Sprite", sprite = "effects/combine_halo", bone = "ValveBiped.Bip01_R_Hand", rel = "base", pos = Vector(0.67395, -23.69598, 0.59894), size = { x = 12.311, y = 12.311 }, color = Color(29, 0, 255, 255), nocull = true, additive = true, vertexalpha = true, vertexcolor = true, ignorez = false},
		["trigger"] = { type = "Model", model = "models/mechanics/robotics/claw2.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "base", pos = Vector(-0.89502, 4.067, 0.57309), angle = Angle(0.189, -58.83397, 0.26803), size = Vector(0.047, 0.037, 0.047), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/props_canal/canal_bridge_railing_01c", skin = 0, bodygroup = {} },
		["trigger1"] = { type = "Model", model = "models/mechanics/robotics/claw.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "base", pos = Vector(-0.43304, 4.68999, 0.43198), angle = Angle(-0.341, -78.50896, 0.81301), size = Vector(0.031, 0.031, 0.031), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/props_canal/canal_bridge_railing_01c", skin = 0, bodygroup = {} }
		}
	SWEP.Slot = 1
	SWEP.SlotPos = 3

	SWEP.ViewModelFlip = false
	SWEP.ViewModelFOV = 60
	
	SWEP.HUD3DBone = "v_weapon.awm_parent"
	SWEP.HUD3DPos = Vector(-1.25, -3.5, -32)
	SWEP.HUD3DAng = Angle(0, 0, 0)
	SWEP.HUD3DScale = 0.02
end

SWEP.Base = "weapon_zs_base"

SWEP.HoldType = "ar2"

SWEP.ViewModel = "models/weapons/cstrike/c_snip_awp.mdl"
SWEP.WorldModel = "models/weapons/w_snip_awp.mdl"
SWEP.TracerName = "tracer_tesla"
SWEP.UseHands = true

SWEP.ReloadSound = Sound("Weapon_AWP.ClipOut")
SWEP.Primary.Sound = Sound("Weapon_Hunter.Single")
SWEP.Primary.Damage = 66
SWEP.Primary.NumShots = 1
SWEP.Primary.Delay = 0.7

SWEP.Primary.ClipSize = 1
SWEP.Primary.Automatic = false
SWEP.Primary.Ammo = "ar2"
GAMEMODE:SetupDefaultClip(SWEP.Primary)

SWEP.ShowViewModel = false
SWEP.ShowWorldModel = false

SWEP.IronSightsPos = Vector(-5.9, 12, 2.3)

SWEP.ConeMax = 0
SWEP.ConeMin = 0
SWEP.Recoil = 0.78
GAMEMODE:SetupAimDefaults(SWEP,SWEP.Primary)
function SWEP:EmitFireSound()
	self:EmitSound(self.Primary.Sound, 80, 75)
	for i=0,3 do
		timer.Simple(i*0.1, function() self:EmitSound("ambient/energy/zap"..math.random(1,9)..".wav", 45, 150,1,CHAN_VOICE + i) end)
	end
end
function SWEP.BulletCallback(attacker, tr, dmginfo)
	if CLIENT then return end
	if attacker and attacker:IsValid() and attacker:WaterLevel() > 1 then
		attacker:TakeSpecialDamage(400, DMG_SHOCK, self, self)
		local ent = ents.Create("prop_electricfield")
		if ent:IsValid() then
			ent:SetPos(attacker:GetPos())
			ent:SetOwner(attacker)
			ent:Spawn()
			ent:SetModelScale(7, 3)
		end
	end
	local ent = tr.Entity
	if ent and ent:IsValid() and ent:IsPlayer() then
		local electro = ent:GiveStatus('static_electric')
		electro:AddTime(2)
		electro.Damager = attacker
		electro.Damage = 3
		if (ent:WaterLevel() >= 1 or tr.MatType == MAT_DIRT  or tr.MatType == MAT_SLOSH) and tr.Hit then
			local ent = ents.Create("prop_electricfield")
			if ent:IsValid() then
				ent:SetPos(tr.HitPos)
				ent:SetOwner(attacker)
				ent:Spawn()
				ent:SetModelScale(6, 2)
			end
			for k,v in pairs(ents.FindInSphere(tr.HitPos, 1028)) do
				if v and v:IsValid() and v:IsPlayer() and v:WaterLevel() >= 1 then
					v:TakeSpecialDamage(50 * v:WaterLevel(), DMG_SHOCK, attacker, self)
				end
			end
		end
	end
end


if SERVER then return end
local color2 = Color(0,0,0)
local color23 = Color(255,255,255)
local a1 = 0
local g = false
function SWEP:PostDrawViewModel(vm)
	if self.BaseClass.PostDrawViewModel then 
		self.BaseClass.PostDrawViewModel(self,vm, pl, wep)
	end
	if not self.HUD3DPos or GAMEMODE.WeaponHUDMode == 1 then return end
	local a = !g and 0 or math.Approach(a1, 255*self:Clip1(), FrameTime()*123)
	if self:Clip1() == 0 then
		g = !g
	else
		g = true
	end
	a1 = a
	for k,v in pairs(self.VElements) do
		if string.sub(k,0,#"lamp") == "lamp" then
			v.color = Color(a,a,a)
		end
	end
end

function SWEP:IsScoped()
	return self:GetIronsights() and self.fIronTime and self.fIronTime + 0.25 <= CurTime()
end
	SWEP.IronsightsMultiplier = 0.25

	function SWEP:GetViewModelPosition(pos, ang)
		if GAMEMODE.DisableScopes then return end

		if self:IsScoped() then
			return pos + ang:Up() * 256, ang
		end

		return self.BaseClass.GetViewModelPosition(self, pos, ang)
	end

	function SWEP:DrawHUDBackground()
		if GAMEMODE.DisableScopes then return end
		if not self:IsScoped() then return end

		self:DrawFuturisticScope()
	end
