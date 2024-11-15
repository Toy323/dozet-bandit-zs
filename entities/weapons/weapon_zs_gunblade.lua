AddCSLuaFile()

if CLIENT then
	SWEP.TranslateName = "weapon_gunblade_name"
	SWEP.TranslateDesc = "weapon_gunblade_desc"
	SWEP.HoldType = "melee2"
	SWEP.ViewModelFOV = 70
	SWEP.ViewModelFlip = false
	SWEP.ShowViewModel = false
	SWEP.ShowWorldModel = false
	SWEP.ViewModelBoneMods = {
	["Python"] = { scale = Vector(1, 1, 1), pos = Vector(9.582, -9.319, 3.593), angle = Angle(-12.975, -0.899, -57.747) },
	["ValveBiped.Bip01_L_Hand"] = { scale = Vector(0.01, 0.01, 0.01), pos = Vector(0, 0, 220), angle = Angle(0, 0, 0) },
	["ValveBiped.Bip01_L_UpperArm"] = { scale = Vector(0.01, 0.01, 0.01), pos = Vector(30, -30, 0), angle = Angle(0, 0, 0) },
	["ValveBiped.Bip01_Spine4"] = { scale = Vector(1, 1, 1), pos = Vector(8.48, -6.209, 2.382), angle = Angle(4.389, 21.591, 0) }
	}
	
	SWEP.SCKMaterials = {"texadmin", "test_speakers/miwoodm", "metal/metalwall030a",}
	
	SWEP.IronSightsPos = Vector(2.2, 0, -0.44)
	SWEP.IronSightsAng = Vector(0, 0, 0)
	
	SWEP.VElements = {
	["darova+"] = { type = "Model", model = "models/hunter/blocks/cube075x075x075.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "handle++++++++++++++++++++++++", pos = Vector(0, -0.331, 11.381), angle = Angle(0, -90, 0), size = Vector(0.022, 0.022, 0.022), color = Color(255, 255, 255, 20), surpresslightning = false, bonemerge = false, material = "texadmin", skin = 0, bodygroup = {} },
	["handle"] = { type = "Model", model = "models/props_combine/headcrabcannister01a.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(3.262, 1.205, -1.434), angle = Angle(-83.213, -9.965, -120), size = Vector(0.047, 0.047, 0.047), color = Color(145, 145, 145, 255), surpresslightning = false, bonemerge = false, material = "test_speakers/miwoodm", skin = 0, bodygroup = {} },
	["handle+"] = { type = "Model", model = "models/props_combine/headcrabcannister01a.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "handle", pos = Vector(1.794, -0.067, 0), angle = Angle(0, 5, 58.551), size = Vector(0.048, 0.04, 0.04), color = Color(145, 145, 145, 255), surpresslightning = false, bonemerge = false, material = "test_speakers/miwoodm", skin = 0, bodygroup = {} },
	["handle++"] = { type = "Model", model = "models/props_combine/headcrabcannister01a.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "handle", pos = Vector(-2.348, -0.002, 0.05), angle = Angle(0, 180, 0.819), size = Vector(0.035, 0.045, 0.045), color = Color(145, 145, 145, 255), surpresslightning = false, bonemerge = false, material = "test_speakers/miwoodm", skin = 0, bodygroup = {} },
	["handle+++"] = { type = "Model", model = "models/props_wasteland/chimneypipe02a.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "handle", pos = Vector(-0.683, -0.005, -0.023), angle = Angle(-59.21, 90, -94), size = Vector(0.04, 0.05, 0.05), color = Color(109, 109, 109, 255), surpresslightning = false, bonemerge = false, material = "metal/metalwall030a", skin = 0, bodygroup = {} },
	["handle+++++++++"] = { type = "Model", model = "models/props_junk/gascan001a.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "handle", pos = Vector(3.565, -1.417, 0.707), angle = Angle(-58.929, 91.571, 60.855), size = Vector(0.19, 0.07, 0.2), color = Color(109, 109, 109, 255), surpresslightning = false, bonemerge = false, material = "metal/metalwall030a", skin = 0, bodygroup = {} },
	["handle++++++++++"] = { type = "Model", model = "models/props_c17/gravestone002a.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "handle+++++++++++", pos = Vector(0, 0.811, -3.439), angle = Angle(0, 0, 0), size = Vector(0.2, 0.062, 0.114), color = Color(109, 109, 109, 255), surpresslightning = false, bonemerge = false, material = "metal/metalwall030a", skin = 0, bodygroup = {} },
	["handle+++++++++++"] = { type = "Model", model = "models/props_junk/gascan001a.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "handle", pos = Vector(5.359, -0.486, 0.117), angle = Angle(-58.925, 91.502, 41.664), size = Vector(0.2, 0.2, 0.16), color = Color(109, 109, 109, 255), surpresslightning = false, bonemerge = false, material = "metal/metalwall030a", skin = 0, bodygroup = {} },
	["handle++++++++++++"] = { type = "Model", model = "models/hunter/misc/platehole1x1d.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "handle+++++++++++", pos = Vector(0, -1.588, -5.436), angle = Angle(-62.248, -90, -90), size = Vector(0.12, 0.12, 0.25), color = Color(109, 109, 109, 255), surpresslightning = false, bonemerge = false, material = "metal/metalwall030a", skin = 0, bodygroup = {} },
	["handle+++++++++++++"] = { type = "Model", model = "models/hunter/plates/tri2x1.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "handle+++++++++++++++", pos = Vector(-1.003, 0.742, -0.247), angle = Angle(4.591, 135.185, -4.606), size = Vector(0.05, 0.05, 0.05), color = Color(182, 182, 182, 255), surpresslightning = false, bonemerge = false, material = "metal/metalwall030a", skin = 0, bodygroup = {} },
	["handle++++++++++++++"] = { type = "Model", model = "models/props_junk/gascan001a.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "handle+++++++++++", pos = Vector(0, 0.142, 2.771), angle = Angle(0, -180, 130), size = Vector(0.21, 0.13, 0.16), color = Color(109, 109, 109, 255), surpresslightning = false, bonemerge = false, material = "metal/metalwall030a", skin = 0, bodygroup = {} },
	["handle+++++++++++++++"] = { type = "Model", model = "models/Mechanics/gears/gear16x12_small.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "handle+++++++++", pos = Vector(0.177, -0.859, 2.415), angle = Angle(90, 0, 0), size = Vector(0.061, 0.061, 0.061), color = Color(218, 218, 218, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} },
	["handle++++++++++++++++"] = { type = "Model", model = "models/hunter/plates/tri2x1.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "handle+++++++++++++++", pos = Vector(-1.005, 0.739, 0.473), angle = Angle(-4.591, 135.185, 4.606), size = Vector(0.05, 0.05, 0.05), color = Color(182, 182, 182, 255), surpresslightning = false, bonemerge = false, material = "metal/metalwall030a", skin = 0, bodygroup = {} },
	["handle+++++++++++++++++"] = { type = "Model", model = "models/props_c17/display_cooler01a.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "handle+++++++++++", pos = Vector(0, 1.745, 4.042), angle = Angle(0, 0, 50), size = Vector(0.016, 0.06, 0.1), color = Color(109, 109, 109, 255), surpresslightning = false, bonemerge = false, material = "metal/metalwall030a", skin = 0, bodygroup = {} },
	["handle+++++++++++++++++++++++"] = { type = "Model", model = "models/hunter/blocks/cube075x075x075.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "handle+++++++++++++++++", pos = Vector(0, 0.145, 5.557), angle = Angle(0, 0, 0), size = Vector(0.045, 0.05, 0.3), color = Color(80, 80, 80, 255), surpresslightning = true, bonemerge = false, material = "metal/metalwall030a", skin = 0, bodygroup = {} },
	["handle++++++++++++++++++++++++"] = { type = "Model", model = "models/hunter/misc/roundthing2.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "handle+++++++++++++++++++++++", pos = Vector(0, -0.318, -5.387), angle = Angle(0, 0, 0), size = Vector(0.033, 0.016, 0.247), color = Color(36, 36, 36, 255), surpresslightning = false, bonemerge = false, material = "phoenix_storms/dome", skin = 0, bodygroup = {} },
	["handle+++++++++++++++++++++++++"] = { type = "Model", model = "models/hunter/tubes/tube2x2x025.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "handle++++++++++++++++++++++++", pos = Vector(0, -0.331, 11.392), angle = Angle(0, 0, 0), size = Vector(0.013, 0.013, 0.117), color = Color(36, 36, 36, 255), surpresslightning = false, bonemerge = false, material = "phoenix_storms/dome", skin = 0, bodygroup = {} },
	["handle++++++++++++++++++++++++++"] = { type = "Model", model = "models/hunter/tubes/circle2x2.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "handle++++++++++++++++++++++++", pos = Vector(0, -0.331, 11.71), angle = Angle(0, 0, 0), size = Vector(0.012, 0.012, 0.012), color = Color(0, 0, 0, 255), surpresslightning = false, bonemerge = false, material = "cs_havana/cohrt", skin = 0, bodygroup = {} },
	["handle+++++++++++++++++++++++++++"] = { type = "Model", model = "models/hunter/tubes/tube2x2x025.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "handle++++++++++++++++++++++++", pos = Vector(0, -0.331, 11.558), angle = Angle(0, 0, 0), size = Vector(0.012, 0.012, 0.117), color = Color(36, 36, 36, 255), surpresslightning = false, bonemerge = false, material = "phoenix_storms/dome", skin = 0, bodygroup = {} },
	["handle++++++++++++++++++++++++++++"] = { type = "Model", model = "models/hunter/blocks/cube075x075x075.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "handle", pos = Vector(2.571, 0.129, -0.211), angle = Angle(-29.61, -107.496, 171.147), size = Vector(0.035, 0.01, 0.05), color = Color(109, 109, 109, 255), surpresslightning = false, bonemerge = false, material = "metal/metalwall030a", skin = 0, bodygroup = {} },
	["handle+++++++++++++++++++++++++++++"] = { type = "Model", model = "models/Mechanics/gears/gear16x12_small.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "handle++++++++++++++++++++++++++++++", pos = Vector(-0.81, 0, -1.01), angle = Angle(0, 0, 0), size = Vector(0.04, 0.04, 0.33), color = Color(109, 109, 109, 255), surpresslightning = false, bonemerge = false, material = "metal/metalwall030a", skin = 0, bodygroup = {} },
	["handle++++++++++++++++++++++++++++++"] = { type = "Model", model = "models/hunter/blocks/cube075x075x075.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "handle++++++++++++++++++++++++++++", pos = Vector(-0.354, -0.881, 0), angle = Angle(0, 85.901, 0), size = Vector(0.06, 0.01, 0.049), color = Color(109, 109, 109, 255), surpresslightning = false, bonemerge = false, material = "metal/metalwall030a", skin = 0, bodygroup = {} },
	["handle+++++++++++++++++++++++++++++++"] = { type = "Model", model = "models/props_combine/combine_bridge_b.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "handle+++++++++++++++++", pos = Vector(0, -1.617, 34.101), angle = Angle(90, 90, 0), size = Vector(0.07, 0.013, 0.021), color = Color(80, 80, 80, 255), surpresslightning = true, bonemerge = false, material = "metal/metalwall030a", skin = 0, bodygroup = {} },
	["handle++++++++++++++++++++++++++++++++"] = { type = "Model", model = "models/Mechanics/gears/gear16x12_small.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "handle++++++++++++++++++++++++++++++", pos = Vector(0.83, 0, 0.571), angle = Angle(0, 0, 0), size = Vector(0.04, 0.04, 0.07), color = Color(109, 109, 109, 255), surpresslightning = false, bonemerge = false, material = "metal/metalwall030a", skin = 0, bodygroup = {} },
	["handle+++++++++++++++++++++++++++++++++"] = { type = "Model", model = "models/Mechanics/gears/gear16x12_small.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "handle++++++++++++++++++++++++++++++", pos = Vector(0.83, 0, -1.01), angle = Angle(0, 0, 0), size = Vector(0.04, 0.04, 0.07), color = Color(109, 109, 109, 255), surpresslightning = false, bonemerge = false, material = "metal/metalwall030a", skin = 0, bodygroup = {} },
	["handle+++++++++++++++++++++++++++++++++++"] = { type = "Model", model = "models/hunter/plates/platehole1x1.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "handle+++++++++++", pos = Vector(0, 14.7, 5.53), angle = Angle(39.924, -90, -90), size = Vector(0.355, 0.13, 0.051), color = Color(218, 218, 218, 255), surpresslightning = true, bonemerge = false, material = "phoenix_storms/grey_steel", skin = 0, bodygroup = {} },
	["handle++++++++++++++++++++++++++++++++++++"] = { type = "Model", model = "models/hunter/blocks/cube2x2x2.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "handle+++++++++++++++++++++++++++++++++++", pos = Vector(0.798, 5.462, 0), angle = Angle(0, 90, 0), size = Vector(0.015, 0.25, 0.001), color = Color(218, 218, 218, 255), surpresslightning = true, bonemerge = false, material = "phoenix_storms/grey_steel", skin = 0, bodygroup = {} },
	["handle+++++++++++++++++++++++++++++++++++++"] = { type = "Model", model = "models/hunter/tubes/circle4x4d.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "handle+++++++++++++++++++++++++++++++++++", pos = Vector(12.655, 6.174, 0), angle = Angle(0, 180, 0), size = Vector(0.15, 0.015, 0.03), color = Color(218, 218, 218, 255), surpresslightning = true, bonemerge = false, material = "phoenix_storms/grey_steel", skin = 0, bodygroup = {} },
	["handle++++++++++++++++++++++++++++++++++++++"] = { type = "Model", model = "models/hunter/tubes/circle4x4d.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "handle+++++++++++++++++++++++++++++++++++", pos = Vector(12.655, 6.174, 0), angle = Angle(0, 180, 0), size = Vector(0.15, 0.03, 0.02), color = Color(255, 255, 255, 255), surpresslightning = true, bonemerge = false, material = "phoenix_storms/grey_steel", skin = 0, bodygroup = {} },
	["handle+++++++++++++++++++++++++++++++++++++++"] = { type = "Model", model = "models/hunter/plates/platehole1x1.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "handle+++++++++++++++++++++++++++++++++++", pos = Vector(-3.114, 0.527, 0), angle = Angle(0, 0, 0), size = Vector(0.28, 0.089, 0.03), color = Color(255, 255, 255, 255), surpresslightning = true, bonemerge = false, material = "phoenix_storms/grey_steel", skin = 0, bodygroup = {} },
	["handle++++++++++++++++++++++++++++++++++++++++"] = { type = "Model", model = "models/hunter/plates/platehole1x1.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "handle+++++++++++++++++++++++++++++++++++", pos = Vector(0.036, 3.373, 0), angle = Angle(180, 0, 0), size = Vector(0.266, 0.029, 0.03), color = Color(255, 255, 255, 255), surpresslightning = true, bonemerge = false, material = "phoenix_storms/grey_steel", skin = 0, bodygroup = {} },
	["handle+++++++++++++++++++++++++++++++++++++++++"] = { type = "Model", model = "models/hunter/blocks/cube1x1x1.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "handle+++++++++++++++++++++++++++++++++++", pos = Vector(0.798, 4.514, 0), angle = Angle(0, 90, 0), size = Vector(0.01, 0.5, 0.001), color = Color(255, 255, 255, 255), surpresslightning = true, bonemerge = false, material = "phoenix_storms/grey_steel", skin = 0, bodygroup = {} }
	}
	
	SWEP.WElements = {
	["darova+"] = { type = "Model", model = "models/hunter/blocks/cube075x075x075.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "handle++++++++++++++++++++++++", pos = Vector(0, -0.331, 11.381), angle = Angle(0, -90, 0), size = Vector(0.022, 0.022, 0.022), color = Color(255, 255, 255, 20), surpresslightning = false, bonemerge = false, material = "texadmin", skin = 0, bodygroup = {} },
	["handle"] = { type = "Model", model = "models/props_combine/headcrabcannister01a.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(3, 0, 2), angle = Angle(-120, 60, -20), size = Vector(0.047, 0.047, 0.047), color = Color(145, 145, 145, 255), surpresslightning = false, bonemerge = false, material = "test_speakers/miwoodm", skin = 0, bodygroup = {} },
	["handle++"] = { type = "Model", model = "models/props_combine/headcrabcannister01a.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "handle", pos = Vector(-2.348, -0.002, 0.05), angle = Angle(0, 180, 0.819), size = Vector(0.035, 0.045, 0.045), color = Color(145, 145, 145, 255), surpresslightning = false, bonemerge = false, material = "test_speakers/miwoodm", skin = 0, bodygroup = {} },
	["handle+++"] = { type = "Model", model = "models/props_wasteland/chimneypipe02a.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "handle", pos = Vector(-0.683, -0.005, -0.023), angle = Angle(-59.21, 90, -94), size = Vector(0.04, 0.05, 0.05), color = Color(109, 109, 109, 255), surpresslightning = false, bonemerge = false, material = "metal/metalwall030a", skin = 0, bodygroup = {} },
	["handle+++++++++"] = { type = "Model", model = "models/props_junk/gascan001a.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "handle", pos = Vector(3.565, -1.417, 0.707), angle = Angle(-58.929, 91.571, 60.855), size = Vector(0.19, 0.07, 0.2), color = Color(109, 109, 109, 255), surpresslightning = false, bonemerge = false, material = "metal/metalwall030a", skin = 0, bodygroup = {} },
	["handle++++++++++"] = { type = "Model", model = "models/props_c17/gravestone002a.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "handle+++++++++++", pos = Vector(0, 0.811, -3.439), angle = Angle(0, 0, 0), size = Vector(0.2, 0.062, 0.114), color = Color(109, 109, 109, 255), surpresslightning = false, bonemerge = false, material = "metal/metalwall030a", skin = 0, bodygroup = {} },
	["handle+++++++++++"] = { type = "Model", model = "models/props_junk/gascan001a.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "handle", pos = Vector(5.359, -0.486, 0.117), angle = Angle(-58.925, 91.502, 41.664), size = Vector(0.2, 0.2, 0.16), color = Color(109, 109, 109, 255), surpresslightning = false, bonemerge = false, material = "metal/metalwall030a", skin = 0, bodygroup = {} },
	["handle++++++++++++"] = { type = "Model", model = "models/hunter/misc/platehole1x1d.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "handle+++++++++++", pos = Vector(0, -1.588, -5.436), angle = Angle(-62.248, -90, -90), size = Vector(0.12, 0.12, 0.25), color = Color(109, 109, 109, 255), surpresslightning = false, bonemerge = false, material = "metal/metalwall030a", skin = 0, bodygroup = {} },
	["handle+++++++++++++"] = { type = "Model", model = "models/hunter/plates/tri2x1.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "handle+++++++++++++++", pos = Vector(-1.003, 0.742, -0.247), angle = Angle(4.591, 135.185, -4.606), size = Vector(0.05, 0.05, 0.05), color = Color(182, 182, 182, 255), surpresslightning = false, bonemerge = false, material = "metal/metalwall030a", skin = 0, bodygroup = {} },
	["handle++++++++++++++"] = { type = "Model", model = "models/props_junk/gascan001a.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "handle+++++++++++", pos = Vector(0, 0.142, 2.771), angle = Angle(0, -180, 130), size = Vector(0.21, 0.13, 0.16), color = Color(109, 109, 109, 255), surpresslightning = false, bonemerge = false, material = "metal/metalwall030a", skin = 0, bodygroup = {} },
	["handle+++++++++++++++"] = { type = "Model", model = "models/Mechanics/gears/gear16x12_small.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "handle+++++++++", pos = Vector(0.177, -0.859, 2.415), angle = Angle(90, 0, 0), size = Vector(0.061, 0.061, 0.061), color = Color(218, 218, 218, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} },
	["handle++++++++++++++++"] = { type = "Model", model = "models/hunter/plates/tri2x1.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "handle+++++++++++++++", pos = Vector(-1.005, 0.739, 0.473), angle = Angle(-4.591, 135.185, 4.606), size = Vector(0.05, 0.05, 0.05), color = Color(182, 182, 182, 255), surpresslightning = false, bonemerge = false, material = "metal/metalwall030a", skin = 0, bodygroup = {} },
	["handle+++++++++++++++++"] = { type = "Model", model = "models/props_c17/display_cooler01a.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "handle+++++++++++", pos = Vector(0, 1.745, 4.042), angle = Angle(0, 0, 50), size = Vector(0.016, 0.06, 0.1), color = Color(109, 109, 109, 255), surpresslightning = false, bonemerge = false, material = "metal/metalwall030a", skin = 0, bodygroup = {} },
	["handle+++++++++++++++++++++++"] = { type = "Model", model = "models/hunter/blocks/cube075x075x075.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "handle+++++++++++++++++", pos = Vector(0, 0.145, 5.557), angle = Angle(0, 0, 0), size = Vector(0.045, 0.05, 0.3), color = Color(80, 80, 80, 255), surpresslightning = true, bonemerge = false, material = "metal/metalwall030a", skin = 0, bodygroup = {} },
	["handle++++++++++++++++++++++++"] = { type = "Model", model = "models/hunter/misc/roundthing2.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "handle+++++++++++++++++++++++", pos = Vector(0, -0.318, -5.387), angle = Angle(0, 0, 0), size = Vector(0.033, 0.016, 0.247), color = Color(36, 36, 36, 255), surpresslightning = false, bonemerge = false, material = "phoenix_storms/dome", skin = 0, bodygroup = {} },
	["handle+++++++++++++++++++++++++"] = { type = "Model", model = "models/hunter/tubes/tube2x2x025.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "handle++++++++++++++++++++++++", pos = Vector(0, -0.331, 11.392), angle = Angle(0, 0, 0), size = Vector(0.013, 0.013, 0.117), color = Color(36, 36, 36, 255), surpresslightning = false, bonemerge = false, material = "phoenix_storms/dome", skin = 0, bodygroup = {} },
	["handle+++++++++++++++++++++++++++++++"] = { type = "Model", model = "models/props_combine/combine_bridge_b.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "handle+++++++++++++++++", pos = Vector(0, -1.617, 34.101), angle = Angle(90, 90, 0), size = Vector(0.07, 0.013, 0.021), color = Color(80, 80, 80, 255), surpresslightning = true, bonemerge = false, material = "metal/metalwall030a", skin = 0, bodygroup = {} },
	["handle+++++++++++++++++++++++++++++++++++"] = { type = "Model", model = "models/hunter/plates/platehole1x1.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "handle+++++++++++", pos = Vector(0, 14.7, 5.53), angle = Angle(39.924, -90, -90), size = Vector(0.355, 0.13, 0.051), color = Color(218, 218, 218, 255), surpresslightning = true, bonemerge = false, material = "phoenix_storms/grey_steel", skin = 0, bodygroup = {} },
	["handle++++++++++++++++++++++++++++++++++++"] = { type = "Model", model = "models/hunter/blocks/cube2x2x2.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "handle+++++++++++++++++++++++++++++++++++", pos = Vector(0.798, 5.462, 0), angle = Angle(0, 90, 0), size = Vector(0.015, 0.25, 0.001), color = Color(218, 218, 218, 255), surpresslightning = true, bonemerge = false, material = "phoenix_storms/grey_steel", skin = 0, bodygroup = {} },
	["handle+++++++++++++++++++++++++++++++++++++"] = { type = "Model", model = "models/hunter/tubes/circle4x4d.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "handle+++++++++++++++++++++++++++++++++++", pos = Vector(12.655, 6.174, 0), angle = Angle(0, 180, 0), size = Vector(0.15, 0.015, 0.03), color = Color(218, 218, 218, 255), surpresslightning = true, bonemerge = false, material = "phoenix_storms/grey_steel", skin = 0, bodygroup = {} },
	["handle++++++++++++++++++++++++++++++++++++++"] = { type = "Model", model = "models/hunter/tubes/circle4x4d.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "handle+++++++++++++++++++++++++++++++++++", pos = Vector(12.655, 6.174, 0), angle = Angle(0, 180, 0), size = Vector(0.15, 0.03, 0.02), color = Color(255, 255, 255, 255), surpresslightning = true, bonemerge = false, material = "phoenix_storms/grey_steel", skin = 0, bodygroup = {} },
	["handle+++++++++++++++++++++++++++++++++++++++"] = { type = "Model", model = "models/hunter/plates/platehole1x1.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "handle+++++++++++++++++++++++++++++++++++", pos = Vector(-3.114, 0.527, 0), angle = Angle(0, 0, 0), size = Vector(0.28, 0.089, 0.03), color = Color(255, 255, 255, 255), surpresslightning = true, bonemerge = false, material = "phoenix_storms/grey_steel", skin = 0, bodygroup = {} },
	["handle++++++++++++++++++++++++++++++++++++++++"] = { type = "Model", model = "models/hunter/plates/platehole1x1.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "handle+++++++++++++++++++++++++++++++++++", pos = Vector(0.036, 3.373, 0), angle = Angle(180, 0, 0), size = Vector(0.266, 0.029, 0.03), color = Color(255, 255, 255, 255), surpresslightning = true, bonemerge = false, material = "phoenix_storms/grey_steel", skin = 0, bodygroup = {} },
	["handle+++++++++++++++++++++++++++++++++++++++++"] = { type = "Model", model = "models/hunter/blocks/cube1x1x1.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "handle+++++++++++++++++++++++++++++++++++", pos = Vector(0.798, 4.514, 0), angle = Angle(0, 90, 0), size = Vector(0.01, 0.5, 0.001), color = Color(255, 255, 255, 255), surpresslightning = true, bonemerge = false, material = "phoenix_storms/grey_steel", skin = 0, bodygroup = {} }
	}
end

SWEP.MeleeDamage = 23
SWEP.MeleeRange = 55
SWEP.MeleeSize = 1.5
SWEP.MeleeKnockBack = 32


SWEP.Base = "weapon_zs_basemelee"

SWEP.ViewModel = "models/weapons/c_357.mdl"
SWEP.WorldModel = "models/weapons/w_pistol.mdl"
SWEP.UseHands = true

SWEP.HoldType = "melee2"

SWEP.Stamina = 12

SWEP.Primary.Delay = 0.6
SWEP.WalkSpeed = SPEED_FAST

SWEP.SwingTime = 1.21	
SWEP.SwingRotation = Angle(90, 10, -40)
SWEP.SwingOffset = Vector(0, 0, -20)

SWEP.HitDecal = "Manhackcut"

function SWEP:PlaySwingSound()
	self:EmitSound("weapons/iceaxe/iceaxe_swing1.wav", 75, math.random(135, 160))
end

function SWEP:PlayHitSound()
	self:EmitSound("weapons/melee/golfclub/golf_hit-0"..math.random(4)..".ogg")
end

function SWEP:PlayHitFleshSound()
	self:EmitSound("physics/body/body_medium_break"..math.random(2, 4)..".wav")
end
function SWEP.BulletCallback(attacker, tr, dmginfo)
	if SERVER then
		local ent = tr.Entity
		if ent and ent:IsPlayer() then
			ent:GiveStatus("confusion",20)
		end
	end
end

function SWEP:ShootBullets(dmg, numbul, cone)
	local owner = self:GetOwner()

	-- Do animations
	owner:DoAttackEvent()

	-- Data collection
	if owner and owner:IsValid() and owner:IsPlayer() and self.IsFirearm and SERVER then
		owner.ShotsFired = owner.ShotsFired + numbul
		owner.LastShotWeapon = self:GetClass()
	end
	if IsFirstTimePredicted() then
		owner:FireBullets({Num = numbul, Src = owner:GetShootPos(), Dir = owner:GetAimVector(), Spread = Vector(cone, cone, 0), Tracer = 1, TracerName = self.TracerName, Force = dmg * 0.1, Damage = dmg, Callback = self.BulletCallback})
	end
end
SWEP.BumBah = Sound("Weapon_Hunter.Single")
function SWEP:HaveAbility()
	if self:GetDTFloat(13) < CurTime() then
		timer.Simple(0.6, function() 
			if IsValid(self) then
				self:ShootBullets(70, 1, math.random(0.02,0.1)) 
				self:EmitSound(self.BumBah)

				self:GetOwner():ViewPunch(Angle(math.Rand(-20 * 2, 0), math.Rand(-1, 20), 0))
			end
		end)
		self:SetDTFloat(13, CurTime() + 12) 
		self:SetDTFloat(12, CurTime() + 1.6) 
	end
end
if CLIENT then
	local ghostlerp = 0
	local ghostlerp1 = 0
	SWEP.RotBLOCK = 22
	SWEP.RotBLOCK_Left = 18
	function SWEP:GetViewModelPosition(pos, ang)
		if self:IsSwinging() then
			local rot = self.SwingRotation
			local offset = self.SwingOffset

			ang = Angle(ang.pitch, ang.yaw, ang.roll) -- Copy

			local swingend = self:GetSwingEnd()-0.1
			local delta = self.SwingTime - math.Clamp(swingend - CurTime(), 0, self.SwingTime)
			local power = CosineInterpolation(0, 1, delta / self.SwingTime)

			if power >= 0.95 then
				power = (1 - power) ^ 0.5 * 2
			end

			pos = pos + offset.x * power * ang:Right() + offset.y * power * ang:Forward() + offset.z * power * ang:Up()

			ang:RotateAroundAxis(ang:Right(), rot.pitch * power)
			ang:RotateAroundAxis(ang:Up(), rot.yaw * power)
			ang:RotateAroundAxis(ang:Forward(), rot.roll * power)
		end

		if self:GetDTFloat(12) > CurTime() then
			ang = Angle(ang.pitch, ang.yaw, ang.roll) 

			ang:RotateAroundAxis(ang:Right(), -25)
			ang:RotateAroundAxis(ang:Up(), -55)
			ang:RotateAroundAxis(ang:Forward(), -50)
		end

		if self:GetOwner():GetBarricadeGhosting() then
			ghostlerp = math.min(1, ghostlerp + FrameTime() * 4)
		elseif ghostlerp > 0 then
			ghostlerp = math.max(0, ghostlerp - FrameTime() * 5)
		end
		if not self:GetBlock() then
			ghostlerp1 = math.max(0, ghostlerp1 - FrameTime() * 3)
		elseif self:GetBlock() then
			ghostlerp1 = math.min(1, ghostlerp1 + FrameTime() * 2)
		end

		if ghostlerp > 0 then
			pos = pos + 3.5 * ghostlerp * ang:Up()
			ang:RotateAroundAxis(ang:Right(), -30 * ghostlerp)
		end
		if ghostlerp1 > 0 then
			pos = pos - (self.RotBLOCK or 3.5) * ghostlerp1 * ang:Up()
			if self.RotBLOCK_Left then
				pos = pos - (self.RotBLOCK_Left or 3.5) * ghostlerp1 * ang:Right()
			end
			ang:RotateAroundAxis(ang:Right(), 20 * ghostlerp1)
			ang:RotateAroundAxis(ang:Forward(), 20 * ghostlerp1)
		end

		return pos, ang
	end
	local function doemit( self, pos )
		if math.random() < .58 then return end
		local emitter = ParticleEmitter( pos )
		emitter:SetNearClip(24, 32)
		local particle = emitter:Add("effects/blood2", pos + VectorRand():GetNormalized() )
		if particle then
			particle:SetDieTime( math.Rand( 0.65, 0.95 ) + 2 )
			particle:SetStartSize( math.Rand( 0.5, 1) )
			particle:SetEndSize(0)
			particle:SetColor( math.random(240,255 ),  math.random(240,255 ),  math.random(240,255 ) )
			particle:SetStartAlpha( 135 + ( 2 ) )
			particle:SetEndAlpha( 0 )
			particle:SetRoll( math.random( 0, 360 ) )
			particle:SetAirResistance(500)
			particle:SetGravity( -Vector( 0, 0, -math.Rand( 180, 210 ) ) + VectorRand() * 1.5 )
		end
	
	end
	function SWEP:PreDrawViewModel(vm)
		if self.ShowViewModel == false then
			render.SetBlend(0)
		end

		local bone = self.ViewModelBoneMods["ValveBiped.Bip01_Spine4"].pos
		local swingend = self:GetSwingEnd()-0.1
		local delta = self.SwingTime - math.Clamp(swingend - CurTime(), 0, self.SwingTime)
		local power = CosineInterpolation(0, 1, delta / self.SwingTime)
		if self:GetDTFloat(12) > CurTime() then
			bone.x = math.Approach(bone.x,-6.48,2)
			bone.y = math.Approach(bone.y,12,1)
			bone.z = math.Approach(bone.z,13.382,1)
			return
		end
		if self:GetDTFloat(13) > CurTime()  then
			local v = self.VElements['handle+++++++++++++++++++++++++++++++++++++']
			local topos, toang = self:GetBoneOrientation( self.VElements, v, vm ) 
			for i=1,2 do
				doemit( self, topos + toang:Forward() * v.pos.x + toang:Right() * v.pos.y + toang:Up() * (v.pos.z-14)  )
			end
		end
		if power>0.5 then
			bone.x = math.Approach(bone.x,8.48,0.8)
			bone.y = math.Approach(bone.y,-6.209,0.8)
			bone.z = math.Approach(bone.z,2.382,0.7)
			if power > 0.9 and power ~= 1 then
				bone.x = math.Approach(bone.x,8.48,4)
				bone.y = math.Approach(bone.y,7,3)
				bone.z = math.Approach(bone.z,-63,2)
			end
		else
			bone.x = math.Approach(bone.x,2,1)
			bone.y = math.Approach(bone.y,-7,1)
			bone.z = math.Approach(bone.z,2.3,1)
		end
	end

end