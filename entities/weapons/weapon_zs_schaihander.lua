AddCSLuaFile()

if CLIENT then
	SWEP.TranslateName = "weapon_schwhander_name"
	SWEP.TranslateDesc = "weapon_schwhander_desc"
	SWEP.ViewModelFlip = false
	SWEP.ViewModelFOV = 70

	SWEP.ShowViewModel = false
	SWEP.ShowWorldModel = false

	SWEP.ViewModelBoneMods = {
		["ValveBiped.Bip01_L_Finger01"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 8.787, 0) },
		["ValveBiped.Bip01_L_Finger02"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 20.789, 0) },
		["ValveBiped.Bip01_L_Finger1"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(-13.079, -53.081, 0) },
		["ValveBiped.Bip01_L_Finger11"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, -59.958, 0) },
		["ValveBiped.Bip01_L_Finger12"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, -55.195, 0) },
		["ValveBiped.Bip01_L_Finger2"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(-7.951, -47.887, 0) },
		["ValveBiped.Bip01_L_Finger21"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, -60.039, 0) },
		["ValveBiped.Bip01_L_Finger22"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(8.703, -86.301, 0) },
		["ValveBiped.Bip01_L_Finger3"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0.118), angle = Angle(-1.943, -38.262, 0) },
		["ValveBiped.Bip01_L_Finger31"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(5.642, -50.021, 12.086) },
		["ValveBiped.Bip01_L_Finger32"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, -108.526, 0) },
		["ValveBiped.Bip01_L_Finger4"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(3.539, -51.483, 0) },
		["ValveBiped.Bip01_L_Finger41"] = { scale = Vector(1, 1, 1), pos = Vector(0.289, -0.211, -0.117), angle = Angle(15.4, -37.345, 8.033) },
		["ValveBiped.Bip01_L_Finger42"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(5.74, -148.07001, 0) },
		["ValveBiped.Bip01_L_Hand"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 0, 9.655) },
		["ValveBiped.Bip01_L_UpperArm"] = { scale = Vector(1, 1, 1), pos = Vector(2.53, 0.095, -1.822), angle = Angle(38.716, -130.91299, -46.213) },
		["ValveBiped.Bip01_R_Finger1"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, -7.695, 0) },
		["ValveBiped.Bip01_R_Finger12"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, -26.11, 0) },
		["ValveBiped.Bip01_R_Finger2"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(4.018, -13.929, 0) },
		["ValveBiped.Bip01_R_Finger21"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, -0.475, 0) },
		["ValveBiped.Bip01_R_Finger22"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, -26.281, 0) },
		["ValveBiped.Bip01_R_Finger3"] = { scale = Vector(1.147, 1.147, 1.147), pos = Vector(0, 0, -0.187), angle = Angle(-0.751, -11.941, 3.791) },
		["ValveBiped.Bip01_R_Finger31"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, -18.637, 0) },
		["ValveBiped.Bip01_R_Finger32"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, -22.654, 0) },
		["ValveBiped.Bip01_R_Finger4"] = { scale = Vector(1.094, 1.094, 1.094), pos = Vector(0, 0, -0.045), angle = Angle(0, -25.216, 0) },
		["ValveBiped.Bip01_R_Finger41"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, -4.148, 0) },
		["ValveBiped.Bip01_R_Finger42"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, -44.065, 0) },
		["ValveBiped.Bip01_R_Hand"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(21.851, -9.66, 0) },
		["ValveBiped.Bip01_R_UpperArm"] = { scale = Vector(1, 1, 1), pos = Vector(-1.834, 9.596, 9.391), angle = Angle(0, 0, 0) },
		["ValveBiped.Bip01_Spine4"] = { scale = Vector(1, 1, 1), pos = Vector(3.595, 5.579, -3.58), angle = Angle(20.677, -6.745, -6.382) }
		}
		
		SWEP.SCKMaterials = {"wood/woodstair002c",}
		
		SWEP.IronSightsPos = Vector(-0.16, 0, 0.08)
		SWEP.IronSightsAng = Vector(0, 0, 0)
		
		SWEP.VElements = {
		["blade0+"] = { type = "Model", model = "models/hunter/blocks/cube05x1x025.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "cross+", pos = Vector(0.001, 0, 1.498), angle = Angle(90, 180, 0), size = Vector(0.33, 0.04, 0.008), color = Color(218, 218, 218, 255), surpresslightning = true, bonemerge = false, material = "phoenix_storms/grey_steel", skin = 0, bodygroup = {} },
		["blade0++"] = { type = "Model", model = "models/hunter/tubes/circle2x2d.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "blade0++++", pos = Vector(-0.819, 0.47, 0.055), angle = Angle(0, 150, 180), size = Vector(0.02, 0.05, 0.035), color = Color(218, 218, 218, 255), surpresslightning = true, bonemerge = false, material = "phoenix_storms/grey_steel", skin = 0, bodygroup = {} },
		["blade0+++"] = { type = "Model", model = "models/hunter/tubes/circle2x2d.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "blade0++++", pos = Vector(-0.819, -0.47, 0.055), angle = Angle(0, -150, 0), size = Vector(0.02, 0.05, 0.035), color = Color(218, 218, 218, 255), surpresslightning = true, bonemerge = false, material = "phoenix_storms/grey_steel", skin = 0, bodygroup = {} },
		["blade0++++"] = { type = "Model", model = "models/hunter/geometric/tri1x1eq.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "cross+", pos = Vector(0.055, 0, 5.008), angle = Angle(-90, -180, 0), size = Vector(0.04, 0.04, 0.037), color = Color(218, 218, 218, 255), surpresslightning = true, bonemerge = false, material = "phoenix_storms/grey_steel", skin = 0, bodygroup = {} },
		["blade0++++++"] = { type = "Model", model = "models/hunter/geometric/tri1x1eq.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "cross+", pos = Vector(-0.014, 0, 52.497), angle = Angle(-90, 0, 0), size = Vector(0.2, 0.04, 0.01), color = Color(218, 218, 218, 255), surpresslightning = true, bonemerge = false, material = "phoenix_storms/grey_steel", skin = 0, bodygroup = {} },
		["blade1+"] = { type = "Model", model = "models/hunter/triangles/1x1x5.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "blade0++++++", pos = Vector(23.368, 0.474, 0.04), angle = Angle(0, -180, 0), size = Vector(0.197, 0.02, 0.001), color = Color(218, 218, 218, 255), surpresslightning = true, bonemerge = false, material = "phoenix_storms/grey_steel", skin = 0, bodygroup = {} },
		["blade2+"] = { type = "Model", model = "models/hunter/triangles/1x1x5.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "blade0++++++", pos = Vector(23.373, 0.471, -0.01), angle = Angle(0, 0, -180), size = Vector(0.197, 0.02, 0.001), color = Color(218, 218, 218, 255), surpresslightning = true, bonemerge = false, material = "phoenix_storms/grey_steel", skin = 0, bodygroup = {} },
		["blade3+"] = { type = "Model", model = "models/hunter/triangles/1x1x5.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "blade0++++++", pos = Vector(23.368, -0.475, 0.04), angle = Angle(0, 0, 0), size = Vector(0.197, 0.02, 0.001), color = Color(218, 218, 218, 255), surpresslightning = true, bonemerge = false, material = "phoenix_storms/grey_steel", skin = 0, bodygroup = {} },
		["blade4+"] = { type = "Model", model = "models/hunter/triangles/1x1x5.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "blade0++++++", pos = Vector(23.371, -0.474, -0.01), angle = Angle(0, -180, 180), size = Vector(0.197, 0.02, 0.001), color = Color(218, 218, 218, 255), surpresslightning = true, bonemerge = false, material = "phoenix_storms/grey_steel", skin = 0, bodygroup = {} },
		["cross+"] = { type = "Model", model = "models/props_c17/gravestone_cross001a.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "handle++++++", pos = Vector(0, 0.001, 6.24), angle = Angle(0, 90, 0), size = Vector(0.017, 0.03, 0.03), color = Color(72, 72, 72, 255), surpresslightning = false, bonemerge = false, material = "phoenix_storms/grey_steel", skin = 0, bodygroup = {} },
		["guard"] = { type = "Model", model = "models/hunter/tubes/tube4x4x025d.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "handle++++++", pos = Vector(0, -0.35, 10.276), angle = Angle(45, 0, 90), size = Vector(0.07, 0.07, 0.06), color = Color(72, 72, 72, 255), surpresslightning = false, bonemerge = false, material = "phoenix_storms/dome", skin = 0, bodygroup = {} },
		["guard+"] = { type = "Model", model = "models/hunter/tubes/tube4x4x025d.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "guard", pos = Vector(-0.136, 0.136, 0.176), angle = Angle(0, 0, 0), size = Vector(0.07, 0.07, 0.03), color = Color(72, 72, 72, 255), surpresslightning = false, bonemerge = false, material = "phoenix_storms/grey_steel", skin = 0, bodygroup = {} },
		["guard++"] = { type = "Model", model = "models/hunter/misc/shell2x2.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "guard", pos = Vector(-6.487, -0.005, 0.351), angle = Angle(0, 179.929, 90), size = Vector(0.013, 0.013, 0.013), color = Color(36, 36, 36, 255), surpresslightning = false, bonemerge = false, material = "phoenix_storms/dome", skin = 0, bodygroup = {} },
		["guard+++"] = { type = "Model", model = "models/hunter/misc/shell2x2.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "guard", pos = Vector(0.002, 6.484, 0.351), angle = Angle(0, 90, 90), size = Vector(0.013, 0.013, 0.013), color = Color(36, 36, 36, 255), surpresslightning = false, bonemerge = false, material = "phoenix_storms/dome", skin = 0, bodygroup = {} },
		["handle++"] = { type = "Model", model = "models/hunter/tubes/tube4x4x2to2x2.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "handle++++++", pos = Vector(0, 0.001, -7.577), angle = Angle(0, 90, -180), size = Vector(0.003, 0.005, 0.08), color = Color(182, 182, 182, 255), surpresslightning = false, bonemerge = false, material = "wood/woodstair002c", skin = 0, bodygroup = {} },
		["handle+++"] = { type = "Model", model = "models/hunter/misc/shell2x2.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "handle++++++", pos = Vector(0, 0.001, -11.84), angle = Angle(0, 0, 180), size = Vector(0.014, 0.014, 0.014), color = Color(72, 72, 72, 255), surpresslightning = false, bonemerge = false, material = "phoenix_storms/dome", skin = 0, bodygroup = {} },
		["handle++++++"] = { type = "Model", model = "models/hunter/tubes/tube2x2x2.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(2.998, 1.571, -0.812), angle = Angle(5.367, -2.577, 169.144), size = Vector(0.01, 0.006, 0.08), color = Color(145, 145, 145, 255), surpresslightning = false, bonemerge = false, material = "wood/woodstair002c", skin = 0, bodygroup = {} },
		["handle+++++++"] = { type = "Model", model = "models/hunter/tubes/tube2x2x025b.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "guard", pos = Vector(-4.57, 4.57, 0.965), angle = Angle(-45, -45, -90), size = Vector(0.025, 0.025, 0.018), color = Color(72, 72, 72, 255), surpresslightning = false, bonemerge = false, material = "phoenix_storms/grey_steel", skin = 0, bodygroup = {} },
		["handle++++++++"] = { type = "Model", model = "models/hunter/tubes/tube2x2x025b.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "guard", pos = Vector(-4.57, 4.57, -0.264), angle = Angle(45, 135, 90), size = Vector(0.025, 0.025, 0.018), color = Color(72, 72, 72, 255), surpresslightning = false, bonemerge = false, material = "phoenix_storms/grey_steel", skin = 0, bodygroup = {} },
		["handle+++++++++"] = { type = "Model", model = "models/hunter/tubes/tube2x2x025b.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "guard", pos = Vector(-4.04, 5.099, -0.264), angle = Angle(45, 135, 90), size = Vector(0.02, 0.01, 0.018), color = Color(72, 72, 72, 255), surpresslightning = false, bonemerge = false, material = "phoenix_storms/grey_steel", skin = 0, bodygroup = {} },
		["handle++++++++++"] = { type = "Model", model = "models/hunter/tubes/tube2x2x025b.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "guard", pos = Vector(-5.099, 4.037, -0.265), angle = Angle(45, 135, 90), size = Vector(0.01, 0.02, 0.018), color = Color(72, 72, 72, 255), surpresslightning = false, bonemerge = false, material = "phoenix_storms/grey_steel", skin = 0, bodygroup = {} },
		["handle+++++++++++"] = { type = "Model", model = "models/hunter/tubes/tube2x2x025b.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "guard", pos = Vector(-4.038, 5.099, 0.962), angle = Angle(-45, -45, -90), size = Vector(0.01, 0.02, 0.018), color = Color(72, 72, 72, 255), surpresslightning = false, bonemerge = false, material = "phoenix_storms/grey_steel", skin = 0, bodygroup = {} },
		["handle++++++++++++"] = { type = "Model", model = "models/hunter/tubes/tube2x2x025b.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "guard", pos = Vector(-5.099, 4.038, 0.962), angle = Angle(-45, -45, -90), size = Vector(0.02, 0.01, 0.018), color = Color(72, 72, 72, 255), surpresslightning = false, bonemerge = false, material = "phoenix_storms/grey_steel", skin = 0, bodygroup = {} }
		}
		
		SWEP.WElements = {
		["blade0+"] = { type = "Model", model = "models/hunter/blocks/cube05x1x025.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "cross+", pos = Vector(0.001, 0, 1.498), angle = Angle(90, 180, 0), size = Vector(0.33, 0.04, 0.008), color = Color(218, 218, 218, 255), surpresslightning = true, bonemerge = false, material = "phoenix_storms/grey_steel", skin = 0, bodygroup = {} },
		["blade0++"] = { type = "Model", model = "models/hunter/tubes/circle2x2d.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "blade0++++", pos = Vector(-0.819, 0.47, 0.055), angle = Angle(0, 150, 180), size = Vector(0.02, 0.05, 0.035), color = Color(218, 218, 218, 255), surpresslightning = true, bonemerge = false, material = "phoenix_storms/grey_steel", skin = 0, bodygroup = {} },
		["blade0+++"] = { type = "Model", model = "models/hunter/tubes/circle2x2d.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "blade0++++", pos = Vector(-0.819, -0.47, 0.055), angle = Angle(0, -150, 0), size = Vector(0.02, 0.05, 0.035), color = Color(218, 218, 218, 255), surpresslightning = true, bonemerge = false, material = "phoenix_storms/grey_steel", skin = 0, bodygroup = {} },
		["blade0++++"] = { type = "Model", model = "models/hunter/geometric/tri1x1eq.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "cross+", pos = Vector(0.055, 0, 5.008), angle = Angle(-90, -180, 0), size = Vector(0.04, 0.04, 0.037), color = Color(218, 218, 218, 255), surpresslightning = true, bonemerge = false, material = "phoenix_storms/grey_steel", skin = 0, bodygroup = {} },
		["blade0++++++"] = { type = "Model", model = "models/hunter/geometric/tri1x1eq.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "cross+", pos = Vector(-0.014, 0, 52.497), angle = Angle(-90, 0, 0), size = Vector(0.2, 0.04, 0.01), color = Color(218, 218, 218, 255), surpresslightning = true, bonemerge = false, material = "phoenix_storms/grey_steel", skin = 0, bodygroup = {} },
		["blade1+"] = { type = "Model", model = "models/hunter/triangles/1x1x5.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "blade0++++++", pos = Vector(23.368, 0.474, 0.04), angle = Angle(0, -180, 0), size = Vector(0.197, 0.02, 0.001), color = Color(218, 218, 218, 255), surpresslightning = true, bonemerge = false, material = "phoenix_storms/grey_steel", skin = 0, bodygroup = {} },
		["blade2+"] = { type = "Model", model = "models/hunter/triangles/1x1x5.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "blade0++++++", pos = Vector(23.373, 0.471, -0.01), angle = Angle(0, 0, -180), size = Vector(0.197, 0.02, 0.001), color = Color(218, 218, 218, 255), surpresslightning = true, bonemerge = false, material = "phoenix_storms/grey_steel", skin = 0, bodygroup = {} },
		["blade3+"] = { type = "Model", model = "models/hunter/triangles/1x1x5.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "blade0++++++", pos = Vector(23.368, -0.475, 0.04), angle = Angle(0, 0, 0), size = Vector(0.197, 0.02, 0.001), color = Color(218, 218, 218, 255), surpresslightning = true, bonemerge = false, material = "phoenix_storms/grey_steel", skin = 0, bodygroup = {} },
		["blade4+"] = { type = "Model", model = "models/hunter/triangles/1x1x5.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "blade0++++++", pos = Vector(23.371, -0.474, -0.01), angle = Angle(0, -180, 180), size = Vector(0.197, 0.02, 0.001), color = Color(218, 218, 218, 255), surpresslightning = true, bonemerge = false, material = "phoenix_storms/grey_steel", skin = 0, bodygroup = {} },
		["cross+"] = { type = "Model", model = "models/props_c17/gravestone_cross001a.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "handle++++++", pos = Vector(0, 0.001, 6.24), angle = Angle(0, 90, 0), size = Vector(0.017, 0.03, 0.03), color = Color(72, 72, 72, 255), surpresslightning = false, bonemerge = false, material = "phoenix_storms/grey_steel", skin = 0, bodygroup = {} },
		["guard"] = { type = "Model", model = "models/hunter/tubes/tube4x4x025d.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "handle++++++", pos = Vector(0, -0.35, 10.276), angle = Angle(45, 0, 90), size = Vector(0.07, 0.07, 0.06), color = Color(72, 72, 72, 255), surpresslightning = false, bonemerge = false, material = "phoenix_storms/dome", skin = 0, bodygroup = {} },
		["guard+"] = { type = "Model", model = "models/hunter/tubes/tube4x4x025d.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "guard", pos = Vector(-0.136, 0.136, 0.176), angle = Angle(0, 0, 0), size = Vector(0.07, 0.07, 0.03), color = Color(72, 72, 72, 255), surpresslightning = false, bonemerge = false, material = "phoenix_storms/grey_steel", skin = 0, bodygroup = {} },
		["guard++"] = { type = "Model", model = "models/hunter/misc/shell2x2.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "guard", pos = Vector(-6.487, -0.005, 0.351), angle = Angle(0, 179.929, 90), size = Vector(0.013, 0.013, 0.013), color = Color(36, 36, 36, 255), surpresslightning = false, bonemerge = false, material = "phoenix_storms/dome", skin = 0, bodygroup = {} },
		["guard+++"] = { type = "Model", model = "models/hunter/misc/shell2x2.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "guard", pos = Vector(0.002, 6.484, 0.351), angle = Angle(0, 90, 90), size = Vector(0.013, 0.013, 0.013), color = Color(36, 36, 36, 255), surpresslightning = false, bonemerge = false, material = "phoenix_storms/dome", skin = 0, bodygroup = {} },
		["handle++"] = { type = "Model", model = "models/hunter/tubes/tube4x4x2to2x2.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "handle++++++", pos = Vector(0, 0.001, -7.577), angle = Angle(0, 90, -180), size = Vector(0.003, 0.005, 0.08), color = Color(182, 182, 182, 255), surpresslightning = false, bonemerge = false, material = "wood/woodstair002c", skin = 0, bodygroup = {} },
		["handle+++"] = { type = "Model", model = "models/hunter/misc/shell2x2.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "handle++++++", pos = Vector(0, 0.001, -11.84), angle = Angle(0, 0, 180), size = Vector(0.014, 0.014, 0.014), color = Color(72, 72, 72, 255), surpresslightning = false, bonemerge = false, material = "phoenix_storms/dome", skin = 0, bodygroup = {} },
		["handle++++++"] = { type = "Model", model = "models/hunter/tubes/tube2x2x2.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(2.998, 1.571, -0.812), angle = Angle(5.367, -2.577, 169.144), size = Vector(0.01, 0.006, 0.08), color = Color(145, 145, 145, 255), surpresslightning = false, bonemerge = false, material = "wood/woodstair002c", skin = 0, bodygroup = {} },
		["handle+++++++"] = { type = "Model", model = "models/hunter/tubes/tube2x2x025b.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "guard", pos = Vector(-4.57, 4.57, 0.965), angle = Angle(-45, -45, -90), size = Vector(0.025, 0.025, 0.018), color = Color(72, 72, 72, 255), surpresslightning = false, bonemerge = false, material = "phoenix_storms/grey_steel", skin = 0, bodygroup = {} },
		["handle++++++++"] = { type = "Model", model = "models/hunter/tubes/tube2x2x025b.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "guard", pos = Vector(-4.57, 4.57, -0.264), angle = Angle(45, 135, 90), size = Vector(0.025, 0.025, 0.018), color = Color(72, 72, 72, 255), surpresslightning = false, bonemerge = false, material = "phoenix_storms/grey_steel", skin = 0, bodygroup = {} },
		["handle+++++++++"] = { type = "Model", model = "models/hunter/tubes/tube2x2x025b.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "guard", pos = Vector(-4.04, 5.099, -0.264), angle = Angle(45, 135, 90), size = Vector(0.02, 0.01, 0.018), color = Color(72, 72, 72, 255), surpresslightning = false, bonemerge = false, material = "phoenix_storms/grey_steel", skin = 0, bodygroup = {} },
		["handle++++++++++"] = { type = "Model", model = "models/hunter/tubes/tube2x2x025b.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "guard", pos = Vector(-5.099, 4.037, -0.265), angle = Angle(45, 135, 90), size = Vector(0.01, 0.02, 0.018), color = Color(72, 72, 72, 255), surpresslightning = false, bonemerge = false, material = "phoenix_storms/grey_steel", skin = 0, bodygroup = {} },
		["handle+++++++++++"] = { type = "Model", model = "models/hunter/tubes/tube2x2x025b.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "guard", pos = Vector(-4.038, 5.099, 0.962), angle = Angle(-45, -45, -90), size = Vector(0.01, 0.02, 0.018), color = Color(72, 72, 72, 255), surpresslightning = false, bonemerge = false, material = "phoenix_storms/grey_steel", skin = 0, bodygroup = {} },
		["handle++++++++++++"] = { type = "Model", model = "models/hunter/tubes/tube2x2x025b.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "guard", pos = Vector(-5.099, 4.038, 0.962), angle = Angle(-45, -45, -90), size = Vector(0.02, 0.01, 0.018), color = Color(72, 72, 72, 255), surpresslightning = false, bonemerge = false, material = "phoenix_storms/grey_steel", skin = 0, bodygroup = {} }
		}
end


SWEP.Base = "weapon_zs_basemelee"

SWEP.HoldType = "melee2"
SWEP.DamageType = DMG_SLASH
SWEP.ViewModel = "models/weapons/c_crowbar.mdl"
SWEP.WorldModel = "models/weapons/w_crowbar.mdl"
SWEP.ShowWorldModel = false
SWEP.ShowViewModel = false
SWEP.UseHands = true
SWEP.HitDecal = "Manhackcut"

SWEP.NextLmao = 0

SWEP.MeleeDamage = 43
SWEP.MeleeRange = 76
SWEP.MeleeSize = 6

SWEP.Stamina = 33

SWEP.WalkSpeed = SPEED_SLOWEST - 25

SWEP.Primary.Delay = 1.8
SWEP.SwingTime = 0.8
SWEP.SwingRotation = Angle(0, -10, 0)
SWEP.SwingOffset = Vector(0, -6, 0)
SWEP.HitAnim = ACT_VM_MISSCENTER
SWEP.SwingHoldType = "melee"

SWEP.ChargeSound = "player/suit_sprint.wav"

function SWEP:PlaySwingSound()
	local scale = 1
	if self:GetDTFloat(22) + 0.6 < CurTime() then
		scale = 2
	end
	self:EmitSound("weapons/iceaxe/iceaxe_swing1.wav", 75, math.random(35, 45)*scale)
end

function SWEP:PlayHitSound()
	self:EmitSound("ambient/machines/slicer"..math.random(4)..".wav", 75)
end

function SWEP:HaveAbility()
	if !self:CanPrimaryAttack() then return end
	self.Stamina = 100
	self:SetParryTime(CurTime()+0.2)
	self:SetDTFloat(22, CurTime())
	self.AlwaysHitsHead = true
	self.MeleeDamage = 220
	self:PrimaryAttack()
	timer.Simple(self.SwingTime + 0.2, function(arguments)
		if !self:IsValid() then return end
		self.Stamina = 33
		self.AlwaysHitsHead = false
		self.UsedParry = false
		
		self.MeleeDamage = 43
	end)
end
SWEP.HoldingTime = 0 
function SWEP:Think()
	local owner = self:GetOwner()
	if self:IsSwinging() and self:GetSwingEnd()-0.2	<= CurTime() and owner:KeyDown(IN_ATTACK) then
		self:SetSwingEnd(CurTime()+0.1)
		self.HoldingTime = self.HoldingTime + 0.1
		if self.HoldingTime > 1 then
			owner:AddStamina(-0.07)
		end
	else
		self.HoldingTime = 0
	end
	self.BaseClass.Think(self)
end

if CLIENT then
	SWEP.RotBLOCK = 9
	SWEP.RotBLOCK_Left = 19
	local texGradDown = surface.GetTextureID("VGUI/gradient_down")
	function SWEP:DrawHUD()
		local scrW = ScrW()
		local scrH = ScrH()
		local width = 200
		local height = 30

		draw.SimpleText((string.upper(input.LookupBinding( '+menu' ) or "q") or "Q").." - Специальная атака.", "ZSHUDFontSmallest", x, y)
		if self.BaseClass.DrawHUD then
			self.BaseClass.DrawHUD(self)
		end
	end
end