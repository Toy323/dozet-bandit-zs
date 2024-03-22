AddCSLuaFile()

if CLIENT then
	SWEP.TranslateName = "weapon_m_4_1_name"
	SWEP.TranslateDesc = "weapon_m_4_1_desc"
	SWEP.Slot = 2
	SWEP.SlotPos = 0

	SWEP.ViewModelFlip = false
	SWEP.ViewModelFOV = 64


	SWEP.HUD3DBone = "v_weapon.m4_Parent"
	SWEP.HUD3DPos = Vector(-2, -5, -6)
	SWEP.HUD3DAng = Angle(0, 0, 0)
	SWEP.HUD3DScale = 0.015

	SWEP.ViewModelBoneMods = {
		["ValveBiped.Bip01_L_Hand"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0.183, 0), angle = Angle(0.158, -10.621, 19.894) },
		["ValveBiped.Bip01_L_UpperArm"] = { scale = Vector(1, 1, 1), pos = Vector(1.638, -0.017, 1.233), angle = Angle(0, 0, 0) },
		["ValveBiped.Bip01_R_Hand"] = { scale = Vector(1, 1.004, 1), pos = Vector(0, 0.241, 0), angle = Angle(0, 0, 0) },
		["ValveBiped.Bip01_Spine4"] = { scale = Vector(1, 0.981, 1), pos = Vector(-4.271, 0.413, 4.927), angle = Angle(-0.674, 16.709, -0.143) },
		["v_weapon.m4_Parent"] = { scale = Vector(1, 1, 1), pos = Vector(-3.993, 0.405, -0.265), angle = Angle(-1.073, -0.022, 4.63) }
	}
	
	SWEP.SCKMaterials = {}
	
	SWEP.IronSightsPos = Vector(-0.4, 0, 0.8)
	SWEP.IronSightsAng = Vector(0, 0, 0)
	
	SWEP.VElements = {
		["g barrel"] = { type = "Model", model = "models/props_phx/gears/bevel24.mdl", bone = "v_weapon.m4_Parent", rel = "granade launcher", pos = Vector(1.74316, 0.01392, 0.07813), angle = Angle(0.79032, -90.01599, -83.67812), size = Vector(0.048, 0.048, 0.048), color = Color(72, 72, 72, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} },
		["g grip"] = { type = "Model", model = "models/hunter/tubes/tube4x4x025.mdl", bone = "v_weapon.m4_Parent", rel = "granade launcher", pos = Vector(-2.66406, -0.02808, -0.01221), angle = Angle(-79.77793, -44.41296, 136.468), size = Vector(0.012, 0.012, 0.009), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/gibs/metalgibs/metal_gibs", skin = 0, bodygroup = {} },
		["g grip+"] = { type = "Model", model = "models/hunter/tubes/tube4x4x025.mdl", bone = "v_weapon.m4_Parent", rel = "g grip", pos = Vector(-0.343, -0.057, 2.477), angle = Angle(0, 0, 0), size = Vector(0.012, 0.012, 0.009), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/gibs/metalgibs/metal_gibs", skin = 0, bodygroup = {} },
		["g grip++"] = { type = "Model", model = "models/hunter/tubes/tube4x4x025.mdl", bone = "v_weapon.m4_Parent", rel = "g grip", pos = Vector(-0.252, -0.024, 1.859), angle = Angle(0, 0, 0), size = Vector(0.012, 0.012, 0.009), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/gibs/metalgibs/metal_gibs", skin = 0, bodygroup = {} },
		["g grip+++"] = { type = "Model", model = "models/hunter/tubes/tube4x4x025.mdl", bone = "v_weapon.m4_Parent", rel = "g grip", pos = Vector(-0.208, -0.016, 1.529), angle = Angle(0.005, 0, -1.044), size = Vector(0.012, 0.012, 0.009), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/gibs/metalgibs/metal_gibs", skin = 0, bodygroup = {} },
		["g grip++++"] = { type = "Model", model = "models/hunter/tubes/tube4x4x025.mdl", bone = "v_weapon.m4_Parent", rel = "g grip", pos = Vector(-0.164, -0.029, 1.203), angle = Angle(0.296, 1.258, -0.797), size = Vector(0.012, 0.012, 0.009), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/gibs/metalgibs/metal_gibs", skin = 0, bodygroup = {} },
		["g grip+++++"] = { type = "Model", model = "models/hunter/tubes/tube4x4x025.mdl", bone = "v_weapon.m4_Parent", rel = "g grip", pos = Vector(-0.295, -0.04, 2.174), angle = Angle(0, 0, 0), size = Vector(0.012, 0.012, 0.009), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/gibs/metalgibs/metal_gibs", skin = 0, bodygroup = {} },
		["g grip++++++"] = { type = "Model", model = "models/hunter/tubes/tube4x4x025.mdl", bone = "v_weapon.m4_Parent", rel = "g grip", pos = Vector(-0.077, 0.013, 0.427), angle = Angle(0, 0, 0), size = Vector(0.012, 0.012, 0.009), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/gibs/metalgibs/metal_gibs", skin = 0, bodygroup = {} },
		["g grip+++++++"] = { type = "Model", model = "models/hunter/tubes/tube4x4x025.mdl", bone = "v_weapon.m4_Parent", rel = "g grip", pos = Vector(-0.112, -0.007, 0.826), angle = Angle(0, 0, 0), size = Vector(0.012, 0.012, 0.009), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/gibs/metalgibs/metal_gibs", skin = 0, bodygroup = {} },
		["g grip++++++++"] = { type = "Model", model = "models/hunter/tubes/tube4x4x025.mdl", bone = "v_weapon.m4_Parent", rel = "g grip", pos = Vector(0.056, 0.02, -0.409), angle = Angle(0, 0, 0), size = Vector(0.012, 0.012, 0.009), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/gibs/metalgibs/metal_gibs", skin = 0, bodygroup = {} },
		["granade launcher"] = { type = "Model", model = "models/xqm/cylinderx2big.mdl", bone = "v_weapon.m4_Parent", rel = "", pos = Vector(0.264, -1.569, -12.631), angle = Angle(-90.362, 110.687, -64.762), size = Vector(0.107, 0.062, 0.057), color = Color(109, 109, 109, 255), surpresslightning = false, bonemerge = false, material = "models/gibs/metalgibs/metal_gibs", skin = 0, bodygroup = {} },
		["holder"] = { type = "Model", model = "models/props_phx/misc/iron_beam1.mdl", bone = "v_weapon.m4_Parent", rel = "granade launcher", pos = Vector(-3.004, 1.63, -0.442), angle = Angle(0.604, 179.67599, 4.004), size = Vector(0.121, 0.125, 0.121), color = Color(109, 109, 109, 255), surpresslightning = false, bonemerge = false, material = "models/gibs/metalgibs/metal_gibs", skin = 0, bodygroup = {} },
		["holder2"] = { type = "Model", model = "models/hunter/misc/roundthing2.mdl", bone = "v_weapon.m4_Parent", rel = "granade launcher", pos = Vector(-5.726, 1.338, 0.2), angle = Angle(85.691, 52.921, -53.909), size = Vector(0.024, 0.013, 0.036), color = Color(109, 109, 109, 255), surpresslightning = false, bonemerge = false, material = "models/gibs/metalgibs/metal_gibs", skin = 0, bodygroup = {} },
		["plank"] = { type = "Model", model = "models/Mechanics/gears2/pinion_20t2.mdl", bone = "v_weapon.m4_Parent", rel = "sight", pos = Vector(-0.02, -2.475, 1.226), angle = Angle(-74.448, 96.552, 99.007), size = Vector(0.051, 0.051, 0.051), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} },
		["rib+"] = { type = "Model", model = "models/phxtended/tri1x1.mdl", bone = "v_weapon.m4_Parent", rel = "sight", pos = Vector(0.39307, -1.49487, 0.05811), angle = Angle(1.23867, -177.84352, -5.40528), size = Vector(0.006, 0.006, 0.006), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} },
		["rib++"] = { type = "Model", model = "models/phxtended/tri1x1.mdl", bone = "v_weapon.m4_Parent", rel = "sight", pos = Vector(-0.40479, -1.46924, 0.08301), angle = Angle(-0.47194, 1.94248, -179.38588), size = Vector(0.006, 0.006, 0.006), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} },
		["rib+++"] = { type = "Model", model = "models/phxtended/tri1x1.mdl", bone = "v_weapon.m4_Parent", rel = "sight", pos = Vector(-0.38379, -0.77368, 0.08496), angle = Angle(-0.47194, 1.94248, -179.38588), size = Vector(0.006, 0.006, 0.006), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} },
		["rib++++"] = { type = "Model", model = "models/phxtended/tri1x1.mdl", bone = "v_weapon.m4_Parent", rel = "sight", pos = Vector(-0.40088, -2.23926, 0.12305), angle = Angle(-0.47194, 1.94249, -179.38588), size = Vector(0.006, 0.006, 0.006), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} },
		["rib+++++"] = { type = "Model", model = "models/phxtended/tri1x1.mdl", bone = "v_weapon.m4_Parent", rel = "sight", pos = Vector(0.39111, -0.76367, 0.07275), angle = Angle(1.23867, -177.84352, -5.4052), size = Vector(0.006, 0.006, 0.006), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} },
		["rib++++++"] = { type = "Model", model = "models/phxtended/tri1x1.mdl", bone = "v_weapon.m4_Parent", rel = "sight", pos = Vector(0.39697, -2.27307, 0.05127), angle = Angle(1.23867, -177.84352, -5.40517), size = Vector(0.006, 0.006, 0.006), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} },
		["sight"] = { type = "Model", model = "models/props_phx/construct/metal_wire1x2b.mdl", bone = "v_weapon.m4_Parent", rel = "", pos = Vector(0.761, -8.769, -11.588), angle = Angle(1.772, 175.97, -15.544), size = Vector(0.02, 0.042, 0.025), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} },
		["target"] = { type = "Model", model = "models/phxtended/bar1x45b.mdl", bone = "v_weapon.m4_Parent", rel = "sight", pos = Vector(-0.62402, 0.14404, -0.09668), angle = Angle(-4.317, -90.74, -0.193), size = Vector(0.019, 0.021, 0.029), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} },
		["trigger"] = { type = "Model", model = "models/mechanics/robotics/claw2.mdl", bone = "v_weapon.m4_Parent", rel = "granade launcher", pos = Vector(-6.89502, 0.5957, 0.20654), angle = Angle(-0.89787, 0.35137, 178.65416), size = Vector(0.017, 0.017, 0.017), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/gibs/metalgibs/metal_gibs", skin = 0, bodygroup = {} },
		["trigger circle"] = { type = "Model", model = "models/squad/sf_tubes/sf_tube1x270.mdl", bone = "v_weapon.m4_Parent", rel = "granade launcher", pos = Vector(-5.93555, 0.1709, 0.02979), angle = Angle(1.78602, -149.37036, 2.10705), size = Vector(0.018, 0.017, 0.018), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/gibs/metalgibs/metal_gibs", skin = 0, bodygroup = {} }
	}
	
	SWEP.WElements = {
		["g barrel"] = { type = "Model", model = "models/props_phx/gears/bevel24.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "granade launcher", pos = Vector(1.743, 0.014, 0.078), angle = Angle(0.79, -90.016, -83.678), size = Vector(0.048, 0.048, 0.048), color = Color(72, 72, 72, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} },
		["g grip"] = { type = "Model", model = "models/hunter/tubes/tube4x4x025.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "granade launcher", pos = Vector(-2.664, -0.028, -0.012), angle = Angle(-79.778, -44.413, 136.468), size = Vector(0.012, 0.012, 0.009), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/gibs/metalgibs/metal_gibs", skin = 0, bodygroup = {} },
		["g grip+"] = { type = "Model", model = "models/hunter/tubes/tube4x4x025.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "g grip", pos = Vector(-0.343, -0.057, 2.477), angle = Angle(0, 0, 0), size = Vector(0.012, 0.012, 0.009), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/gibs/metalgibs/metal_gibs", skin = 0, bodygroup = {} },
		["g grip++"] = { type = "Model", model = "models/hunter/tubes/tube4x4x025.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "g grip", pos = Vector(-0.252, -0.024, 1.859), angle = Angle(0, 0, 0), size = Vector(0.012, 0.012, 0.009), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/gibs/metalgibs/metal_gibs", skin = 0, bodygroup = {} },
		["g grip+++"] = { type = "Model", model = "models/hunter/tubes/tube4x4x025.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "g grip", pos = Vector(-0.208, -0.016, 1.529), angle = Angle(0.005, 0, -1.044), size = Vector(0.012, 0.012, 0.009), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/gibs/metalgibs/metal_gibs", skin = 0, bodygroup = {} },
		["g grip++++"] = { type = "Model", model = "models/hunter/tubes/tube4x4x025.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "g grip", pos = Vector(-0.164, -0.029, 1.203), angle = Angle(0.296, 1.258, -0.797), size = Vector(0.012, 0.012, 0.009), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/gibs/metalgibs/metal_gibs", skin = 0, bodygroup = {} },
		["g grip+++++"] = { type = "Model", model = "models/hunter/tubes/tube4x4x025.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "g grip", pos = Vector(-0.295, -0.04, 2.174), angle = Angle(0, 0, 0), size = Vector(0.012, 0.012, 0.009), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/gibs/metalgibs/metal_gibs", skin = 0, bodygroup = {} },
		["g grip++++++"] = { type = "Model", model = "models/hunter/tubes/tube4x4x025.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "g grip", pos = Vector(-0.077, 0.013, 0.427), angle = Angle(0, 0, 0), size = Vector(0.012, 0.012, 0.009), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/gibs/metalgibs/metal_gibs", skin = 0, bodygroup = {} },
		["g grip+++++++"] = { type = "Model", model = "models/hunter/tubes/tube4x4x025.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "g grip", pos = Vector(-0.112, -0.007, 0.826), angle = Angle(0, 0, 0), size = Vector(0.012, 0.012, 0.009), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/gibs/metalgibs/metal_gibs", skin = 0, bodygroup = {} },
		["g grip++++++++"] = { type = "Model", model = "models/hunter/tubes/tube4x4x025.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "g grip", pos = Vector(0.056, 0.02, -0.409), angle = Angle(0, 0, 0), size = Vector(0.012, 0.012, 0.009), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/gibs/metalgibs/metal_gibs", skin = 0, bodygroup = {} },
		["granade launcher"] = { type = "Model", model = "models/xqm/cylinderx2big.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(18.512, 0.852, -2.935), angle = Angle(-167.87601, 180, -88.928), size = Vector(0.107, 0.062, 0.057), color = Color(109, 109, 109, 255), surpresslightning = false, bonemerge = false, material = "models/gibs/metalgibs/metal_gibs", skin = 0, bodygroup = {} },
		["holder"] = { type = "Model", model = "models/props_phx/misc/iron_beam1.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "granade launcher", pos = Vector(-3.004, 1.63, -0.442), angle = Angle(0.604, 179.67599, 4.004), size = Vector(0.121, 0.125, 0.121), color = Color(109, 109, 109, 255), surpresslightning = false, bonemerge = false, material = "models/gibs/metalgibs/metal_gibs", skin = 0, bodygroup = {} },
		["holder2"] = { type = "Model", model = "models/hunter/misc/roundthing2.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "granade launcher", pos = Vector(-5.726, 1.338, 0.2), angle = Angle(85.691, 52.921, -53.909), size = Vector(0.024, 0.013, 0.036), color = Color(109, 109, 109, 255), surpresslightning = false, bonemerge = false, material = "models/gibs/metalgibs/metal_gibs", skin = 0, bodygroup = {} },
		["rib+"] = { type = "Model", model = "models/phxtended/tri1x1.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "sight", pos = Vector(0.393, -1.495, 0.058), angle = Angle(1.239, -177.84399, -5.405), size = Vector(0.006, 0.006, 0.006), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} },
		["rib++"] = { type = "Model", model = "models/phxtended/tri1x1.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "sight", pos = Vector(-0.405, -1.469, 0.083), angle = Angle(-0.472, 1.942, -179.386), size = Vector(0.006, 0.006, 0.006), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} },
		["rib+++"] = { type = "Model", model = "models/phxtended/tri1x1.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "sight", pos = Vector(-0.384, -0.774, 0.085), angle = Angle(-0.472, 1.942, -179.386), size = Vector(0.006, 0.006, 0.006), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} },
		["rib++++"] = { type = "Model", model = "models/phxtended/tri1x1.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "sight", pos = Vector(-0.401, -2.239, 0.123), angle = Angle(-0.472, 1.942, -179.386), size = Vector(0.006, 0.006, 0.006), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} },
		["rib+++++"] = { type = "Model", model = "models/phxtended/tri1x1.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "sight", pos = Vector(0.39, -0.764, 0.073), angle = Angle(1.239, -177.84399, -5.405), size = Vector(0.006, 0.006, 0.006), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} },
		["rib++++++"] = { type = "Model", model = "models/phxtended/tri1x1.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "sight", pos = Vector(0.396, -2.273, 0.051), angle = Angle(1.239, -177.84399, -5.405), size = Vector(0.006, 0.006, 0.006), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} },
		["sight"] = { type = "Model", model = "models/props_phx/construct/metal_wire1x2b.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(15.86, 0.563, -9.981), angle = Angle(7.405, 97.804, 108.173), size = Vector(0.02, 0.042, 0.025), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} },
		["target"] = { type = "Model", model = "models/phxtended/bar1x45b.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "sight", pos = Vector(-0.625, 0.144, -0.097), angle = Angle(-4.317, -90.74, -0.193), size = Vector(0.019, 0.021, 0.029), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} },
		["trigger"] = { type = "Model", model = "models/mechanics/robotics/claw2.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "granade launcher", pos = Vector(-6.895, 0.596, 0.207), angle = Angle(-0.898, 0.351, 178.65401), size = Vector(0.017, 0.017, 0.017), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/gibs/metalgibs/metal_gibs", skin = 0, bodygroup = {} },
		["trigger circle"] = { type = "Model", model = "models/squad/sf_tubes/sf_tube1x270.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "granade launcher", pos = Vector(-5.936, 0.171, 0.03), angle = Angle(1.786, -149.37, 2.107), size = Vector(0.018, 0.017, 0.018), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/gibs/metalgibs/metal_gibs", skin = 0, bodygroup = {} }
	}
end

SWEP.Base = "weapon_zs_base"

SWEP.HoldType = "ar2"
SWEP.IronSightsHoldType = "smg"
SWEP.ViewModel = "models/weapons/cstrike/c_rif_m4a1.mdl"
SWEP.WorldModel = "models/weapons/w_rif_m4a1.mdl"
SWEP.UseHands = true

SWEP.Primary.Sound = Sound("Weapon_m4a1.Single")
SWEP.Primary.Damage = 14
SWEP.Primary.NumShots = 1
SWEP.Primary.Delay = 0.1

SWEP.Primary.ClipSize = 25
SWEP.Primary.Automatic = true
SWEP.Primary.Ammo = "ar2"
GAMEMODE:SetupDefaultClip(SWEP.Primary)

SWEP.Primary.Gesture = ACT_HL2MP_GESTURE_RANGE_ATTACK_SHOTGUN
SWEP.ReloadGesture = ACT_HL2MP_GESTURE_RELOAD_SMG1

SWEP.ConeMax = 0.22
SWEP.ConeMin = 0.03
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
local math_random = math.random
function SWEP:SecondaryAttack()
	if self:GetDamages() >= 150 then
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
		self:SetDamages(self:GetDamages()-150)
	end
end
function SWEP.BulletCallback(attacker, tr, dmginfo)
	if CLIENT or !tr.Entity or !tr.Entity:IsPlayer() then return end
	local self = attacker:GetActiveWeapon()
	self:SetDamages(math.min(455,dmginfo:GetDamage()+self:GetDamages()))
end
if CLIENT then
	local colBG = Color(16, 16, 16, 90)
local colRed = Color(220, 0, 0, 230)
local colYellow = Color(56, 160, 0, 230)
local colWhite = Color(220, 220, 220, 230)
	local function drawers(self,clip, spare, maxclip, wid, hei, x, y, requiredclip, noclip, onlyclip,lowthreshold, is3d, pos, ang, hud3dscale)
				cam.Start3D2D(pos, ang, (hud3dscale and hud3dscale or 0.01) / 2)
				draw.RoundedBoxEx(16, x, y, wid, hei, colBG, true, false, true, false)
				local font = "ZS3D2DFont"
				local grenades = math.max(math.Round(self:GetDamages()/150,3)-0.033,0)
				draw.SimpleTextBlurry((grenades*100).."%",font, x + wid * 0.5, y + hei * 0.5, grenades == 0 and colRed or grenades == 3 and colYellow or colWhite, TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
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
	end
	
	
end