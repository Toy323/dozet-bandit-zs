AddCSLuaFile()

if CLIENT then
	SWEP.TranslateName = "weapon_buststick_name"
	SWEP.TranslateDesc = "weapon_buststick_desc"
	SWEP.ViewModelFOV = 70
	SWEP.ViewModelFlip = false

	SWEP.ShowViewModel = false
	SWEP.ShowWorldModel = false
	SWEP.VElements = {
		["e1"] = { type = "Model", model = "models/hunter/tubes/circle2x2.mdl", bone = "PGM_root", rel = "", pos = Vector(6.024, -0.09, -15.407), angle = Angle(0, 90, 0), size = Vector(0.013, 0.013, 5.974), color = Color(30, 31, 32, 255), surpresslightning = false, material = "phoenix_storms/mrref2", skin = 0, bodygroup = {} },
		["e1+"] = { type = "Model", model = "models/hunter/geometric/para1x1.mdl", bone = "Bone02", rel = "e1", pos = Vector(-0.664, 0.857, -8.841), angle = Angle(0, -90, -90), size = Vector(0.047, 0.047, 0.443), color = Color(255, 37, 44, 255), surpresslightning = false, material = "phoenix_storms/mrref2", skin = 0, bodygroup = {} },
		["e1++"] = { type = "Model", model = "models/props_phx/trains/double_wheels.mdl", bone = "Bone02", rel = "e1", pos = Vector(-0.833, 0, -8.998), angle = Angle(0, -90, -90), size = Vector(0.015, 0.015, 0.018), color = Color(30, 31, 32, 255), surpresslightning = false, material = "phoenix_storms/mrref2", skin = 0, bodygroup = {} },
		["e1+++++++"] = { type = "Model", model = "models/props_phx/misc/iron_beam1.mdl", bone = "Bone02", rel = "e1", pos = Vector(0, 1.616, -0.116), angle = Angle(-90, 90, 0), size = Vector(0.14, 0.137, 0.229), color = Color(255, 37, 44, 255), surpresslightning = false, material = "phoenix_storms/mrref2", skin = 0, bodygroup = {} },
		["e1++++++++"] = { type = "Model", model = "models/hunter/tubes/tube2x2x05.mdl", bone = "Bone02", rel = "e1+++++++", pos = Vector(3.906, 0, 0.426), angle = Angle(0, 180, 90), size = Vector(0.012, 0.012, 0.032), color = Color(0, 0, 0, 255), surpresslightning = false, material = "phoenix_storms/mrref2", skin = 0, bodygroup = {} },
		["e1+++++++++"] = { type = "Model", model = "models/props_phx/misc/iron_beam1.mdl", bone = "Bone02", rel = "e1+++++++", pos = Vector(-0.211, 0, -0.02), angle = Angle(0, 0, 0), size = Vector(0.131, 0.145, 0.14), color = Color(0, 0, 0, 255), surpresslightning = false, material = "phoenix_storms/mrref2", skin = 0, bodygroup = {} },
		["e1++++++++++++"] = { type = "Model", model = "models/hunter/plates/tri1x1.mdl", bone = "Bone02", rel = "e1+++++++", pos = Vector(-4.36, -0.492, 1.173), angle = Angle(0, -180, -90), size = Vector(0.051, 0.046, 0.33), color = Color(255, 37, 44, 255), surpresslightning = false, material = "phoenix_storms/mrref2", skin = 0, bodygroup = {} },
		["e1+++++++++++++"] = { type = "Model", model = "models/hunter/plates/plate1x2.mdl", bone = "Bone02", rel = "e1+++++++", pos = Vector(-6.913, 0.003, 1.54), angle = Angle(0, -90, 180), size = Vector(0.021, 0.064, 0.482), color = Color(255, 37, 44, 255), surpresslightning = false, material = "phoenix_storms/mrref2", skin = 0, bodygroup = {} },
		["e1++++++++++++++"] = { type = "Model", model = "models/mechanics/robotics/l3.mdl", bone = "reload", rel = "", pos = Vector(-0.115, 0.445, 2.275), angle = Angle(90, 153.032, 0), size = Vector(0.035, 0.042, 0.06), color = Color(30, 31, 32, 255), surpresslightning = false, material = "phoenix_storms/mrref2", skin = 0, bodygroup = {} },
		["e1+++++++++++++++"] = { type = "Model", model = "models/props_combine/combineinnerwallcluster1024_001a.mdl", bone = "Bone02", rel = "e1+++++++", pos = Vector(-9.959, 0.001, 1.559), angle = Angle(90, 0, 0), size = Vector(0.005, 0.002, 0.011), color = Color(30, 31, 32, 255), surpresslightning = false, material = "phoenix_storms/mrref2", skin = 0, bodygroup = {} },
		["e1++++++++++++++++"] = { type = "Model", model = "models/props_combine/combineinnerwallcluster1024_001a.mdl", bone = "Bone02", rel = "e1+++++++", pos = Vector(-12.169, 0.003, 1.464), angle = Angle(85.753, -180, 180), size = Vector(0.005, 0.002, 0.008), color = Color(30, 31, 32, 255), surpresslightning = false, material = "phoenix_storms/mrref2", skin = 0, bodygroup = {} },
		["e1+++++++++++++++++"] = { type = "Model", model = "models/props_phx/misc/iron_beam1.mdl", bone = "Bone02", rel = "e1+++++++", pos = Vector(-14.299, 0, 0.171), angle = Angle(0, 0, 0), size = Vector(0.19, 0.137, 0.229), color = Color(255, 37, 44, 255), surpresslightning = false, material = "phoenix_storms/mrref2", skin = 0, bodygroup = {} },
		["e1++++++++++++++++++"] = { type = "Model", model = "models/props_combine/combineinnerwallcluster1024_001a.mdl", bone = "Bone02", rel = "e1+++++++", pos = Vector(-15.443, -0.11, 0.831), angle = Angle(16.224, -180, 0), size = Vector(0.01, 0.002, 0.003), color = Color(30, 31, 32, 255), surpresslightning = false, material = "phoenix_storms/mrref2", skin = 0, bodygroup = {} },
		["e1+++++++++++++++++++"] = { type = "Model", model = "models/hunter/blocks/cube1x1x1.mdl", bone = "megazine", rel = "", pos = Vector(1.667, -1.008, 0.284), angle = Angle(-90, 0, 0), size = Vector(0.1, 0.017, 0.07), color = Color(255, 37, 44, 255), surpresslightning = false, material = "phoenix_storms/mrref2", skin = 0, bodygroup = {} },
		["e1++++++++++++++++++++"] = { type = "Model", model = "models/hunter/misc/roundthing1.mdl", bone = "Bone02", rel = "e1+++++++++++++++++++", pos = Vector(1.605, 0.464, 0.088), angle = Angle(0, -180, 90), size = Vector(0.007, 0.01, 0.019), color = Color(30, 31, 32, 255), surpresslightning = false, material = "phoenix_storms/mrref2", skin = 0, bodygroup = {} },
		["e1+++++++++++++++++++++"] = { type = "Model", model = "models/hunter/misc/roundthing1.mdl", bone = "Bone02", rel = "e1+++++++++++++++++++", pos = Vector(-0.026, 0.464, 0.088), angle = Angle(0, -180, 90), size = Vector(0.007, 0.01, 0.019), color = Color(30, 31, 32, 255), surpresslightning = false, material = "phoenix_storms/mrref2", skin = 0, bodygroup = {} },
		["e1++++++++++++++++++++++"] = { type = "Model", model = "models/hunter/misc/roundthing1.mdl", bone = "Bone02", rel = "e1+++++++++++++++++++", pos = Vector(-1.65, 0.464, 0.088), angle = Angle(0, -180, 90), size = Vector(0.007, 0.01, 0.019), color = Color(30, 31, 32, 255), surpresslightning = false, material = "phoenix_storms/mrref2", skin = 0, bodygroup = {} },
		["e1+++++++++++++++++++++++"] = { type = "Model", model = "models/mechanics/robotics/l3.mdl", bone = "Bone02", rel = "e1+++++++", pos = Vector(-23.206, 0, 0.916), angle = Angle(0, 180, 90), size = Vector(0.063, 0.093, 0.087), color = Color(255, 37, 41, 255), surpresslightning = false, material = "phoenix_storms/mrref2", skin = 0, bodygroup = {} },
		["e1++++++++++++++++++++++++"] = { type = "Model", model = "models/hunter/plates/plate1x2.mdl", bone = "Bone02", rel = "e1+++++++", pos = Vector(-23.374, 0.002, 1.53), angle = Angle(0, -90, 180), size = Vector(0.021, 0.104, 0.482), color = Color(255, 37, 44, 255), surpresslightning = false, material = "phoenix_storms/mrref2", skin = 0, bodygroup = {} },
		["e1+++++++++++++++++++++++++"] = { type = "Model", model = "models/props_phx/rocket1.mdl", bone = "Bone02", rel = "e1+++++++++++++++++++", pos = Vector(2.268, 0, -1.662), angle = Angle(90, 0, 0), size = Vector(0.008, 0.008, 0.008), color = Color(255, 187, 0, 255), surpresslightning = false, material = "phoenix_storms/trains/track_beamtop", skin = 0, bodygroup = {} },
		["e1++++++++++++++++++++++++++"] = { type = "Model", model = "models/props_combine/combine_teleportplatform.mdl", bone = "Bone02", rel = "e1+++++++", pos = Vector(-27.873, 0.001, 1.156), angle = Angle(-90, 0, 0), size = Vector(0.032, 0.019, 0.075), color = Color(30, 31, 32, 255), surpresslightning = false, material = "phoenix_storms/mrref2", skin = 0, bodygroup = {} },
		["e1+++++++++++++++++++++++++++"] = { type = "Model", model = "models/props_lab/hev_case.mdl", bone = "Bone02", rel = "e1+++++++", pos = Vector(-28.313, 0.002, 0.907), angle = Angle(90, 0, 0), size = Vector(0.026, 0.02, 0.096), color = Color(30, 31, 32, 255), surpresslightning = false, material = "phoenix_storms/mrref2", skin = 0, bodygroup = {} },
		["e1++++++++++++++++++++++++++++"] = { type = "Model", model = "models/hunter/plates/plate1x2.mdl", bone = "Bone02", rel = "e1+++++++", pos = Vector(-32.72, 0, 1.428), angle = Angle(0, -90, 180), size = Vector(0.016, 0.076, 0.304), color = Color(255, 37, 44, 255), surpresslightning = false, material = "phoenix_storms/mrref2", skin = 0, bodygroup = {} },
		["e1+++++++++++++++++++++++++++++"] = { type = "Model", model = "models/hunter/plates/plate1x2.mdl", bone = "Bone02", rel = "e1+++++++", pos = Vector(-32.684, 0.001, 1.777), angle = Angle(0, -90, 180), size = Vector(0.024, 0.094, 0.318), color = Color(30, 31, 32, 255), surpresslightning = false, material = "phoenix_storms/mrref2", skin = 0, bodygroup = {} },
		["e1++++++++++++++++++++++++++++++"] = { type = "Model", model = "models/props_combine/breenlight.mdl", bone = "Bone02", rel = "e1+++++++", pos = Vector(-38.721, 0, 0.983), angle = Angle(90, -180, 0), size = Vector(0.352, 0.268, 0.268), color = Color(30, 31, 32, 255), surpresslightning = false, material = "phoenix_storms/mrref2", skin = 0, bodygroup = {} },
		["e1+++++++++++++++++++++++++++++++"] = { type = "Model", model = "models/hunter/plates/plate1x2.mdl", bone = "Bone02", rel = "e1+++++++", pos = Vector(-37.811, 0.001, -0.653), angle = Angle(-90, 90, 0), size = Vector(0.023, 0.074, 0.2), color = Color(255, 37, 44, 255), surpresslightning = false, material = "phoenix_storms/mrref2", skin = 0, bodygroup = {} },
		["e1++++++++++++++++++++++++++++++++"] = { type = "Model", model = "models/props_phx/misc/flakshell_big.mdl", bone = "Bone02", rel = "e1+++++++++++++++++++", pos = Vector(0.553, 0, -1.662), angle = Angle(90, 0, 0), size = Vector(0.021, 0.021, 0.068), color = Color(255, 149, 62, 255), surpresslightning = false, material = "phoenix_storms/trains/track_beamtop", skin = 0, bodygroup = {} },
		["e1+++++++++++++++++++++++++++++++++"] = { type = "Model", model = "models/props_phx/huge/tower.mdl", bone = "reload", rel = "e1++++++++++++++", pos = Vector(-2.654, -0.029, 0.003), angle = Angle(0, 0, 30), size = Vector(0.001, 0.001, 0.002), color = Color(30, 30, 31, 255), surpresslightning = false, material = "phoenix_storms/mrref2", skin = 0, bodygroup = {} },
		["e1+++++++++++++++++++++++++++++++++++"] = { type = "Model", model = "models/mechanics/robotics/a1.mdl", bone = "Bone02", rel = "e1+++++++++++++++++++++++++++++++", pos = Vector(-1.126, 2.823, 0.011), angle = Angle(-90, 90, 0), size = Vector(0.045, 0.15, 0.15), color = Color(255, 255, 255, 255), surpresslightning = false, material = "phoenix_storms/mrref2", skin = 0, bodygroup = {} },
		["e1++++++++++++++++++++++++++++++++++++"] = { type = "Model", model = "models/props_combine/combineinnerwallcluster1024_001a.mdl", bone = "Bone02", rel = "e1+++++++++++++++++++++++++++++++", pos = Vector(-0.493, 1.529, 0.001), angle = Angle(0, 6.877, 90), size = Vector(0.012, 0.001, 0.006), color = Color(255, 32, 44, 255), surpresslightning = false, material = "phoenix_storms/mrref2", skin = 0, bodygroup = {} },
		["e1+++++++++++++++++++++++++++++++++++++"] = { type = "Model", model = "models/mechanics/robotics/a1.mdl", bone = "Bone02", rel = "e1+++++++++++++++++++++++++++++++++++", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(0.05, 0.1, 0.1), color = Color(0, 0, 0, 255), surpresslightning = false, material = "phoenix_storms/mrref2", skin = 0, bodygroup = {} },
		["e1++++++++++++++++++++++++++++++++++++++"] = { type = "Model", model = "models/hunter/plates/plate1x2.mdl", bone = "Bone02", rel = "e1+++++++++++++++++++++++++++++++", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(0.04, 0.074, 0.08), color = Color(255, 255, 255, 255), surpresslightning = false, material = "phoenix_storms/mrref2", skin = 0, bodygroup = {} },
		["e1++++++++++++++++++++++++++++++++++++++++"] = { type = "Model", model = "models/props_phx/wheels/drugster_front.mdl", bone = "Bone02", rel = "e1+++++++++++++++++++++++++++++++++++", pos = Vector(0.615, 0, 0), angle = Angle(90, 0, 0), size = Vector(0.03, 0.03, 0.072), color = Color(255, 32, 44, 255), surpresslightning = false, material = "phoenix_storms/mrref2", skin = 0, bodygroup = {} },
		["e1++++++++++++++++++++++++++++++++++++++++++"] = { type = "Model", model = "models/mechanics/robotics/a1.mdl", bone = "Bone02", rel = "e1+++++++++++++++++++++++++++++++++++++++++++", pos = Vector(2.844, 2.268, 0.025), angle = Angle(-90, 180, 0), size = Vector(0.1, 0.114, 0.144), color = Color(30, 31, 32, 255), surpresslightning = false, material = "phoenix_storms/mrref2", skin = 0, bodygroup = {} },
		["e1+++++++++++++++++++++++++++++++++++++++++++"] = { type = "Model", model = "models/props_combine/combine_barricade_bracket01b.mdl", bone = "Bone02", rel = "e1+++++++", pos = Vector(-36.689, 0, 2.577), angle = Angle(30, 0, -90), size = Vector(0.177, 0.095, 0.103), color = Color(255, 32, 44, 255), surpresslightning = false, material = "phoenix_storms/mrref2", skin = 0, bodygroup = {} },
		["e1++++++++++++++++++++++++++++++++++++++++++++"] = { type = "Model", model = "models/props_phx/trains/double_wheels.mdl", bone = "Bone02", rel = "e1+++++++++++++++++++++++++++++++++++++++++++", pos = Vector(-0.621, 0.918, 1.599), angle = Angle(0, -180, -180), size = Vector(0.046, 0.046, 0.034), color = Color(255, 32, 44, 255), surpresslightning = false, material = "phoenix_storms/mrref2", skin = 0, bodygroup = {} },
		["e1++++++++++++++++++++++++++++++++++++++++++++++"] = { type = "Model", model = "models/props_combine/combine_light002a.mdl", bone = "Bone02", rel = "e1+++++++++++++++++++++++++++++++++++++++++++", pos = Vector(2.399, 4.06, 0.169), angle = Angle(0, -180, 90), size = Vector(0.15, 0.169, 0.129), color = Color(30, 31, 32, 255), surpresslightning = false, material = "phoenix_storms/mrref2", skin = 0, bodygroup = {} },
		["e1+++++++++++++++++++++++++++++++++++++++++++++++"] = { type = "Model", model = "models/props_combine/cell_01_supportsb.mdl", bone = "Bone02", rel = "e1++++++++++++++++++++++++++++++++++++++++++++++++++++", pos = Vector(2.156, -0.001, 0), angle = Angle(0, 0, 0), size = Vector(0.05, 0.02, 0.03), color = Color(255, 255, 255, 255), surpresslightning = false, material = "phoenix_storms/mrref2", skin = 0, bodygroup = {} },
		["e1++++++++++++++++++++++++++++++++++++++++++++++++"] = { type = "Model", model = "models/mechanics/robotics/a1.mdl", bone = "Bone02", rel = "e1+++++++++++++++++++++++++++++++++++++++++++", pos = Vector(16.059, -9.612, 0), angle = Angle(-90, 0, 0), size = Vector(0.086, 0.15, 0.15), color = Color(255, 255, 255, 255), surpresslightning = false, material = "phoenix_storms/mrref2", skin = 0, bodygroup = {} },
		["e1+++++++++++++++++++++++++++++++++++++++++++++++++"] = { type = "Model", model = "models/mechanics/robotics/a1.mdl", bone = "Bone02", rel = "e1++++++++++++++++++++++++++++++++++++++++++++++++", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(0.09, 0.1, 0.1), color = Color(0, 0, 0, 255), surpresslightning = false, material = "phoenix_storms/mrref2", skin = 0, bodygroup = {} },
		["e1++++++++++++++++++++++++++++++++++++++++++++++++++"] = { type = "Model", model = "models/props_phx/wheels/drugster_front.mdl", bone = "Bone02", rel = "e1++++++++++++++++++++++++++++++++++++++++++++++++", pos = Vector(1.106, 0, 0), angle = Angle(90, 0, 0), size = Vector(0.03, 0.03, 0.129), color = Color(255, 32, 44, 255), surpresslightning = false, material = "phoenix_storms/mrref2", skin = 0, bodygroup = {} },
		["e1+++++++++++++++++++++++++++++++++++++++++++++++++++"] = { type = "Model", model = "models/mechanics/robotics/a1.mdl", bone = "Bone02", rel = "e1+++++++++++++++++++++++++++++++++++++++++++", pos = Vector(-0.621, 0.95, 0.025), angle = Angle(-90, -180, 0), size = Vector(0.107, 0.225, 0.225), color = Color(30, 31, 32, 255), surpresslightning = false, material = "phoenix_storms/mrref2", skin = 0, bodygroup = {} },
		["e1++++++++++++++++++++++++++++++++++++++++++++++++++++"] = { type = "Model", model = "models/props_combine/cell_01_supportsb.mdl", bone = "Bone02", rel = "e1+++++++++++++++++++++++++++++++++++++++++++", pos = Vector(-1.158, -0.968, 0.023), angle = Angle(0, 99.889, 90), size = Vector(0.05, 0.026, 0.03), color = Color(255, 32, 44, 255), surpresslightning = false, material = "phoenix_storms/mrref2", skin = 0, bodygroup = {} },
		["e1+++++++++++++++++++++++++++++++++++++++++++++++++++++"] = { type = "Model", model = "models/props_combine/cell_01_supportsb.mdl", bone = "Bone02", rel = "e1+++++++", pos = Vector(-28.207, 0, 3.33), angle = Angle(-83.897, -180, -180), size = Vector(0.05, 0.023, 0.025), color = Color(255, 32, 44, 255), surpresslightning = false, material = "phoenix_storms/mrref2", skin = 0, bodygroup = {} },
		["e1++++++++++++++++++++++++++++++++++++++++++++++++++++++"] = { type = "Model", model = "models/props_combine/cell_01_supportsb.mdl", bone = "Bone02", rel = "e1++++++++++++++++++++++++++++++++++++++++++++++++++++", pos = Vector(1.12, -0.001, 0), angle = Angle(0, 0, 0), size = Vector(0.05, 0.023, 0.03), color = Color(30, 31, 32, 255), surpresslightning = false, material = "phoenix_storms/mrref2", skin = 0, bodygroup = {} },
		["e1+++++++++++++++++++++++++++++++++++++++++++++++++++++++"] = { type = "Model", model = "models/props_combine/cell_01_supportsb.mdl", bone = "Bone02", rel = "e1+++++++++++++++++++++++++++++++++++++++++++++++++++++", pos = Vector(0.724, 0, -0.01), angle = Angle(0, 0, 0), size = Vector(0.05, 0.023, 0.025), color = Color(30, 31, 32, 255), surpresslightning = false, material = "phoenix_storms/mrref2", skin = 0, bodygroup = {} },
		["e1++++++++++++++++++++++++++++++++++++++++++++++++++++++++"] = { type = "Model", model = "models/props_combine/cell_01_supportsb.mdl", bone = "Bone02", rel = "e1+++++++++++++++++++++++++++++++++++++++++++++++++++++", pos = Vector(1.778, 0, -0.013), angle = Angle(0, 0, 0), size = Vector(0.05, 0.02, 0.025), color = Color(255, 255, 255, 255), surpresslightning = false, material = "phoenix_storms/mrref2", skin = 0, bodygroup = {} },
		["e2"] = { type = "Model", model = "models/props_phx/misc/iron_beam1.mdl", bone = "root", rel = "e1", pos = Vector(0, -2.233, 0.24), angle = Angle(-20, 90, 0), size = Vector(0.129, 0.129, 0.179), color = Color(255, 37, 44, 255), surpresslightning = false, material = "phoenix_storms/mrref2", skin = 0, bodygroup = {} },
		["e2+"] = { type = "Model", model = "models/hunter/tubes/tube2x2x025d.mdl", bone = "triger", rel = "", pos = Vector(0.102, 0.956, 0.938), angle = Angle(11.395, -90, 90), size = Vector(0.047, 0.029, 0.029), color = Color(255, 37, 44, 255), surpresslightning = false, material = "phoenix_storms/mrref2", skin = 0, bodygroup = {} }
	}
	
	SWEP.WElements = {
		["e1"] = { type = "Model", model = "models/hunter/tubes/circle2x2.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(2.639, 1.058, 24.502), angle = Angle(-180, -90, 0), size = Vector(0.013, 0.013, 5.974), color = Color(30, 31, 32, 255), surpresslightning = false, material = "phoenix_storms/mrref2", skin = 0, bodygroup = {} },
		["e1+"] = { type = "Model", model = "models/hunter/geometric/para1x1.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "e1", pos = Vector(-0.664, 0.857, -8.841), angle = Angle(0, -90, -90), size = Vector(0.047, 0.047, 0.443), color = Color(255, 37, 44, 255), surpresslightning = false, material = "phoenix_storms/mrref2", skin = 0, bodygroup = {} },
		["e1++++"] = { type = "Model", model = "models/hunter/geometric/tri1x1eq.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "e1", pos = Vector(-0.192, 0.001, -13.796), angle = Angle(90, 180, 0), size = Vector(0.178, 0.042, 0.128), color = Color(255, 255, 255, 255), surpresslightning = false, material = "phoenix_storms/mrref2", skin = 0, bodygroup = {} },
		["e1+++++"] = { type = "Model", model = "models/mechanics/solid_steel/crossbeam_4.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "e1", pos = Vector(0.001, 0.001, -12.14), angle = Angle(0, -45, 0), size = Vector(0.034, 0.034, 0.177), color = Color(255, 255, 255, 255), surpresslightning = false, material = "phoenix_storms/mrref2", skin = 0, bodygroup = {} },
		["e1+++++++"] = { type = "Model", model = "models/props_phx/misc/iron_beam1.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "e1", pos = Vector(0, 0.664, 11.502), angle = Angle(-90, 90, 0), size = Vector(0.14, 0.137, 0.229), color = Color(255, 37, 44, 255), surpresslightning = false, material = "phoenix_storms/mrref2", skin = 0, bodygroup = {} },
		["e1++++++++++"] = { type = "Model", model = "models/wystan/attachments/2cog.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "e1", pos = Vector(-0.368, 3.485, 6.317), angle = Angle(0, 0, -90), size = Vector(0.949, 0.949, 0.949), color = Color(30, 31, 32, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["e1++++++++++++"] = { type = "Model", model = "models/hunter/plates/tri1x1.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "e1", pos = Vector(0.494, -0.443, 15.793), angle = Angle(90, 0, 0), size = Vector(0.051, 0.046, 0.33), color = Color(255, 37, 44, 255), surpresslightning = false, material = "phoenix_storms/mrref2", skin = 0, bodygroup = {} },
		["e1+++++++++++++"] = { type = "Model", model = "models/hunter/plates/plate1x2.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "e1", pos = Vector(0.001, -0.075, 18.416), angle = Angle(0, 0, 90), size = Vector(0.021, 0.064, 0.482), color = Color(255, 37, 44, 255), surpresslightning = false, material = "phoenix_storms/mrref2", skin = 0, bodygroup = {} },
		["e1+++++++++++++++"] = { type = "Model", model = "models/props_combine/combineinnerwallcluster1024_001a.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "e1", pos = Vector(0.001, 0.057, 21.466), angle = Angle(0, -90, 0), size = Vector(0.005, 0.002, 0.011), color = Color(30, 31, 32, 255), surpresslightning = false, material = "phoenix_storms/mrref2", skin = 0, bodygroup = {} },
		["e1+++++++++++++++++"] = { type = "Model", model = "models/props_phx/misc/iron_beam1.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "e1", pos = Vector(0, 0.663, 25.799), angle = Angle(-90, 90, 0), size = Vector(0.19, 0.137, 0.229), color = Color(255, 37, 44, 255), surpresslightning = false, material = "phoenix_storms/mrref2", skin = 0, bodygroup = {} },
		["e1+++++++++++++++++++"] = { type = "Model", model = "models/valgaming/weapons/w_snip_scar20_mag.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "e1", pos = Vector(0, 2.314, 18.641), angle = Angle(-90, 90, 0), size = Vector(1.754, 0.724, 0.724), color = Color(255, 37, 44, 255), surpresslightning = false, material = "phoenix_storms/mrref2", skin = 0, bodygroup = {} },
		["e1++++++++++++++++++++++++"] = { type = "Model", model = "models/hunter/plates/plate1x2.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "e1", pos = Vector(0.001, -0.086, 34.872), angle = Angle(0, 0, 90), size = Vector(0.021, 0.104, 0.482), color = Color(255, 37, 44, 255), surpresslightning = false, material = "phoenix_storms/mrref2", skin = 0, bodygroup = {} },
		["e1++++++++++++++++++++++++++"] = { type = "Model", model = "models/props_combine/combine_teleportplatform.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "e1", pos = Vector(0, -0.46, 39.381), angle = Angle(0, -90, 180), size = Vector(0.032, 0.019, 0.075), color = Color(30, 31, 32, 255), surpresslightning = false, material = "phoenix_storms/mrref2", skin = 0, bodygroup = {} },
		["e1+++++++++++++++++++++++++++"] = { type = "Model", model = "models/props_lab/hev_case.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "e1", pos = Vector(0.001, -0.709, 39.819), angle = Angle(0, 90, 0), size = Vector(0.026, 0.02, 0.096), color = Color(30, 31, 32, 255), surpresslightning = false, material = "phoenix_storms/mrref2", skin = 0, bodygroup = {} },
		["e1+++++++++++++++++++++++++++++"] = { type = "Model", model = "models/hunter/plates/plate1x2.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "e1", pos = Vector(0, 0.161, 44.185), angle = Angle(0, 0, 90), size = Vector(0.024, 0.094, 0.318), color = Color(30, 31, 32, 255), surpresslightning = false, material = "phoenix_storms/mrref2", skin = 0, bodygroup = {} },
		["e1++++++++++++++++++++++++++++++"] = { type = "Model", model = "models/props_combine/breenlight.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "e1", pos = Vector(0, -0.633, 50.222), angle = Angle(0, 90, 180), size = Vector(0.352, 0.268, 0.268), color = Color(30, 31, 32, 255), surpresslightning = false, material = "phoenix_storms/mrref2", skin = 0, bodygroup = {} },
		["e1+++++++++++++++++++++++++++++++"] = { type = "Model", model = "models/hunter/plates/plate1x2.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "e1", pos = Vector(0.001, 3.227, 51.16), angle = Angle(90, 0, 0), size = Vector(0.023, 0.074, 0.2), color = Color(255, 37, 44, 255), surpresslightning = false, material = "phoenix_storms/mrref2", skin = 0, bodygroup = {} },
		["e1++++++++++++++++++++++++++++++++"] = { type = "Model", model = "models/mechanics/solid_steel/crossbeam_4.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "e1", pos = Vector(0.012, 1.5, 51.217), angle = Angle(17.236, -0.092, -89.267), size = Vector(0.023, 0.074, 0.1), color = Color(30, 31, 32, 255), surpresslightning = false, material = "phoenix_storms/mrref2", skin = 0, bodygroup = {} },
		["e1+++++++++++++++++++++++++++++++++"] = { type = "Model", model = "models/mechanics/solid_steel/crossbeam_4.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "e1", pos = Vector(0.013, 3, 51.217), angle = Angle(17.236, -0.092, -89.267), size = Vector(0.023, 0.074, 0.1), color = Color(30, 31, 32, 255), surpresslightning = false, material = "phoenix_storms/mrref2", skin = 0, bodygroup = {} },
		["e1++++++++++++++++++++++++++++++++++"] = { type = "Model", model = "models/mechanics/solid_steel/crossbeam_4.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "e1", pos = Vector(0.012, 4.5, 51.217), angle = Angle(17.236, -0.092, -89.267), size = Vector(0.023, 0.074, 0.1), color = Color(30, 31, 32, 255), surpresslightning = false, material = "phoenix_storms/mrref2", skin = 0, bodygroup = {} },
		["e1+++++++++++++++++++++++++++++++++++"] = { type = "Model", model = "models/mechanics/robotics/a1.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "e1", pos = Vector(-0.01, 6.05, 50.033), angle = Angle(0, 0, -90), size = Vector(0.045, 0.15, 0.15), color = Color(255, 255, 255, 255), surpresslightning = false, material = "phoenix_storms/mrref2", skin = 0, bodygroup = {} },
		["e1++++++++++++++++++++++++++++++++++++"] = { type = "Model", model = "models/props_combine/combineinnerwallcluster1024_001a.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "e1", pos = Vector(0, 6.885, 50.667), angle = Angle(9.529, -90, 180), size = Vector(0.012, 0.001, 0.006), color = Color(255, 32, 44, 255), surpresslightning = false, material = "phoenix_storms/mrref2", skin = 0, bodygroup = {} },
		["e1+++++++++++++++++++++++++++++++++++++"] = { type = "Model", model = "models/mechanics/robotics/a1.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "e1+++++++++++++++++++++++++++++++++++", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(0.05, 0.1, 0.1), color = Color(0, 0, 0, 255), surpresslightning = false, material = "phoenix_storms/mrref2", skin = 0, bodygroup = {} },
		["e1+++++++++++++++++++++++++++++++++++++++"] = { type = "Model", model = "models/gibs/manhack_gib06.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "e1", pos = Vector(-0.024, 5.397, 47.599), angle = Angle(0, -90, -90), size = Vector(0.267, 0.703, 1.902), color = Color(122, 125, 125, 255), surpresslightning = false, material = "phoenix_storms/mrref2", skin = 0, bodygroup = {} },
		["e1+++++++++++++++++++++++++++++++++++++++++"] = { type = "Model", model = "models/hunter/tubes/circle2x2d.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "e1", pos = Vector(-0.023, 6.626, 50.261), angle = Angle(8.616, 90, 90), size = Vector(0.03, 0.137, 0.104), color = Color(30, 31, 32, 255), surpresslightning = false, material = "phoenix_storms/mrref2", skin = 0, bodygroup = {} },
		["e1++++++++++++++++++++++++++++++++++++++++++++"] = { type = "Model", model = "models/props_phx/trains/double_wheels.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "e1", pos = Vector(-1.599, -2.271, 51.27), angle = Angle(0, -90, -90), size = Vector(0.046, 0.046, 0.034), color = Color(255, 32, 44, 255), surpresslightning = false, material = "phoenix_storms/mrref2", skin = 0, bodygroup = {} },
		["e1+++++++++++++++++++++++++++++++++++++++++++++"] = { type = "Model", model = "models/props_combine/cell_01_supportsb.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "e1", pos = Vector(-0.024, -1.734, 45.064), angle = Angle(-90, 90, 0), size = Vector(0.05, 0.02, 0.03), color = Color(121, 125, 125, 255), surpresslightning = false, material = "phoenix_storms/mrref2", skin = 0, bodygroup = {} },
		["e1++++++++++++++++++++++++++++++++++++++++++++++"] = { type = "Model", model = "models/props_combine/combine_light002a.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "e1", pos = Vector(-0.167, -5.291, 53.927), angle = Angle(0, -90, 180), size = Vector(0.15, 0.169, 0.129), color = Color(30, 31, 32, 255), surpresslightning = false, material = "phoenix_storms/mrref2", skin = 0, bodygroup = {} },
		["e1+++++++++++++++++++++++++++++++++++++++++++++++"] = { type = "Model", model = "models/props_combine/cell_01_supportsb.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "e1", pos = Vector(0, -17.943, 38.17), angle = Angle(-34.591, -90, 0), size = Vector(0.05, 0.018, 0.024), color = Color(121, 125, 125, 255), surpresslightning = false, material = "phoenix_storms/mrref2", skin = 0, bodygroup = {} },
		["e1++++++++++++++++++++++++++++++++++++++++++++++++"] = { type = "Model", model = "models/mechanics/robotics/a1.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "e1", pos = Vector(0, -21.992, 40.961), angle = Angle(0, 0, -90), size = Vector(0.086, 0.15, 0.15), color = Color(255, 255, 255, 255), surpresslightning = false, material = "phoenix_storms/mrref2", skin = 0, bodygroup = {} },
		["e1+++++++++++++++++++++++++++++++++++++++++++++++++"] = { type = "Model", model = "models/mechanics/robotics/a1.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "e1++++++++++++++++++++++++++++++++++++++++++++++++", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(0.09, 0.1, 0.1), color = Color(0, 0, 0, 255), surpresslightning = false, material = "phoenix_storms/mrref2", skin = 0, bodygroup = {} },
		["e1+++++++++++++++++++++++++++++++++++++++++++++++++++"] = { type = "Model", model = "models/mechanics/robotics/a1.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "e1", pos = Vector(-0.024, -2.271, 51.236), angle = Angle(0, 0, 90), size = Vector(0.107, 0.225, 0.225), color = Color(30, 31, 32, 255), surpresslightning = false, material = "phoenix_storms/mrref2", skin = 0, bodygroup = {} },
		["e1++++++++++++++++++++++++++++++++++++++++++++++++++++"] = { type = "Model", model = "models/props_combine/cell_01_supportsb.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "e1", pos = Vector(-0.023, -1.734, 47.22), angle = Angle(-90, 90, 0), size = Vector(0.05, 0.026, 0.03), color = Color(255, 32, 44, 255), surpresslightning = false, material = "phoenix_storms/mrref2", skin = 0, bodygroup = {} },
		["e1+++++++++++++++++++++++++++++++++++++++++++++++++++++"] = { type = "Model", model = "models/props_combine/cell_01_supportsb.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "e1", pos = Vector(0, -19.505, 39.241), angle = Angle(-34.591, -90, 0), size = Vector(0.05, 0.023, 0.024), color = Color(255, 32, 44, 255), surpresslightning = false, material = "phoenix_storms/mrref2", skin = 0, bodygroup = {} },
		["e1++++++++++++++++++++++++++++++++++++++++++++++++++++++"] = { type = "Model", model = "models/props_combine/cell_01_supportsb.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "e1", pos = Vector(-0.024, -1.733, 46.102), angle = Angle(-90, 90, 0), size = Vector(0.05, 0.023, 0.03), color = Color(30, 31, 32, 255), surpresslightning = false, material = "phoenix_storms/mrref2", skin = 0, bodygroup = {} },
		["e1+++++++++++++++++++++++++++++++++++++++++++++++++++++++"] = { type = "Model", model = "models/props_combine/cell_01_supportsb.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "e1", pos = Vector(0, -18.799, 38.764), angle = Angle(-34.591, -90, 0), size = Vector(0.05, 0.02, 0.024), color = Color(30, 31, 32, 255), surpresslightning = false, material = "phoenix_storms/mrref2", skin = 0, bodygroup = {} },
		["e1++++++++++++++++++++++++++++++++++++++++++++++++++++++++"] = { type = "Model", model = "models/gibs/manhack_gib06.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "e1", pos = Vector(0, -21.455, 37.6), angle = Angle(17.402, 90, -90), size = Vector(0.62, 0.78, 2.305), color = Color(30, 31, 32, 255), surpresslightning = false, material = "phoenix_storms/mrref2", skin = 0, bodygroup = {} },
		["e1+++++++++++++++++++++++++++++++++++++++++++++++++++++++++"] = { type = "Model", model = "models/gibs/manhack_gib06.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "e1++++++++++++++++++++++++++++++++++++++++++++++++++++++++", pos = Vector(-0.102, 0.097, 0), angle = Angle(0, 0, 0), size = Vector(0.499, 0.78, 2.305), color = Color(122, 125, 125, 255), surpresslightning = false, material = "phoenix_storms/mrref2", skin = 0, bodygroup = {} }
	}
end

SWEP.Base = "weapon_zs_basemelee"

SWEP.DamageType = DMG_CLUB

SWEP.ViewModel = "models/c_bpgm.mdl"
SWEP.WorldModel = "models/weapons/w_pistol.mdl"
SWEP.UseHands = true

SWEP.MeleeDamage = 43
SWEP.MeleeRange = 60
SWEP.MeleeSize = 1.4
SWEP.Stamina = 45
SWEP.UseMelee1 = false

SWEP.StartSwingAnimation = ACT_VM_PRIMARYATTACK
SWEP.HitGesture = ACT_VM_IDLE
SWEP.MissGesture = SWEP.HitGesture

SWEP.SwingRotation = Angle(30, -30, -30)
SWEP.SwingTime = 2
SWEP.HoldType = "melee2"
SWEP.RegenTime = 15

function SWEP:SetupDataTables()
	self:NetworkVar("Bool", 31, "IsBroken")
	self:NetworkVar("Float", 31, "LastBroken")
	if self.BaseClass.SetupDataTables then
		self.BaseClass.SetupDataTables(self)
	end
end

function SWEP:Think()
	if self:GetLastBroken() and self:GetLastBroken() != 0 and self:GetLastBroken() + self.RegenTime <= CurTime() then
		self:RegenBreak()
		self:SetLastBroken(0)
	end
	self.BaseClass.Think(self)
end

function SWEP:RegenBreak()
	self:SendWeaponAnim(ACT_VM_DRAW)
	self.IdleAnimation = CurTime() + self:SequenceDuration()
	self:SetNextPrimaryFire(self.IdleAnimation)
	self:SetIsBroken(false)
end

function SWEP:OnMeleeHit(hitent, hitflesh, tr)
	if not self:GetIsBroken() then
		local edata = EffectData()
			edata:SetOrigin(tr.HitPos)
			edata:SetNormal(tr.HitNormal)
		util.Effect("hit_stone", edata)
		self:SetIsBroken(true)
		self:SetLastBroken(CurTime())
		if hitent and hitent:IsValid() and hitent:IsPlayer() and self:GetOwner() and self:GetOwner():IsValid() and self:GetOwner():IsPlayer() and hitent:Team() ~= self:GetOwner():Team() then
			local status = hitent:GiveStatus("confusion",20)
		end
	else
		hitent:TakeSpecialDamage(self.MeleeDamage*0.5, DMG_SLASH, self:GetOwner(), self, tr.HitPos)
	end
end

function SWEP:PlaySwingSound()
	self:EmitSound("weapons/iceaxe/iceaxe_swing1.wav", 75, math.Rand(35, 45))
end

function SWEP:PlayHitSound()
	self:EmitSound("physics/concrete/rock_impact_hard"..math.random(6)..".wav", 75, math.Rand(86, 90))
end

function SWEP:PlayHitFleshSound()
	self:EmitSound("physics/body/body_medium_break"..math.random(2, 4)..".wav", 75, math.Rand(86, 90))
end

