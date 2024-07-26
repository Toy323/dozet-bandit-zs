AddCSLuaFile()

SWEP.HoldType = "revolver"
SWEP.ViewModel = "models/weapons/c_357.mdl"
SWEP.WorldModel = "models/weapons/w_357.mdl"
if CLIENT then
	SWEP.TranslateName = "weapon_hx_name"
	SWEP.TranslateDesc = "weapon_hx_desc"
	SWEP.Slot = 3
	SWEP.SlotPos = 0

	SWEP.ViewModelFOV = 70
	SWEP.ViewModelFlip = false
	SWEP.ShowViewModel = false
	SWEP.ShowWorldModel = false
	SWEP.ViewModelBoneMods = {}
	
	SWEP.SCKMaterials = {}
	
	SWEP.IronSightsPos = Vector(-0.4, 0, -0.2)
	SWEP.IronSightsAng = Vector(0, 0, 0)
	
	SWEP.VElements = {
		["e1"] = { type = "Model", model = "models/props_vents/vent_medium_grill001.mdl", bone = "Python", rel = "", pos = Vector(-0.008, 2.772, -4.929), angle = Angle(0, -0.123, -135), size = Vector(0.06, 0.296, 0.271), color = Color(63, 63, 63, 255), surpresslightning = false, material = "phoenix_storms/Fender_white", skin = 0, bodygroup = {} },
		["e1+"] = { type = "Model", model = "models/props_vents/vent_medium_grill001.mdl", bone = "Python", rel = "e1", pos = Vector(0, 0.08197, -0.20798), angle = Angle(0, 0, 0), size = Vector(0.065, 0.219, 0.211), color = Color(146, 15, 15, 255), surpresslightning = false, material = "phoenix_storms/trains/track_beamtop", skin = 0, bodygroup = {} },
		["e1++"] = { type = "Model", model = "models/hunter/blocks/cube1x1x1.mdl", bone = "Python", rel = "e1", pos = Vector(0.00101, 2.36993, -0.36096), angle = Angle(-45.00001, 90, 0.00096), size = Vector(0.032, 0.025, 0.073), color = Color(63, 63, 63, 255), surpresslightning = false, material = "phoenix_storms/Fender_white", skin = 0, bodygroup = {} },
		["e1+++"] = { type = "Model", model = "models/hunter/plates/platehole1x1.mdl", bone = "Python", rel = "e1", pos = Vector(0, 3.15991, 2.82205), angle = Angle(45, 89.99999, 89.99998), size = Vector(0.022, 0.025, 0.413), color = Color(63, 63, 63, 255), surpresslightning = false, material = "phoenix_storms/Fender_white", skin = 0, bodygroup = {} },
		["e1++++"] = { type = "Model", model = "models/props_c17/FurnitureWashingmachine001a.mdl", bone = "Python", rel = "e1", pos = Vector(-0.00098, 2.9599, 0.1951), angle = Angle(-45.00001, 90, 0.00096), size = Vector(0.06, 0.045, 0.079), color = Color(63, 63, 63, 255), surpresslightning = false, material = "phoenix_storms/Fender_white", skin = 0, bodygroup = {} },
		["e1+++++"] = { type = "Model", model = "models/props_c17/light_decklight01_off.mdl", bone = "Python", rel = "e1", pos = Vector(3e-05, 3.29193, 1.46909), angle = Angle(-45.00001, 90, 179.99995), size = Vector(0.08, 0.064, 0.099), color = Color(63, 63, 63, 255), surpresslightning = false, material = "phoenix_storms/Fender_white", skin = 0, bodygroup = {} },
		["e1++++++"] = { type = "Model", model = "models/hunter/tubes/tube4x4x2to2x2.mdl", bone = "Python", rel = "e1", pos = Vector(6e-05, 4.15594, 1.32904), angle = Angle(0, 180, 45), size = Vector(0.015, 0.015, 0.015), color = Color(146, 15, 15, 255), surpresslightning = false, material = "phoenix_storms/trains/track_plate", skin = 0, bodygroup = {} },
		["e1+++++++"] = { type = "Model", model = "models/hunter/tubes/circle2x2.mdl", bone = "Python", rel = "e1", pos = Vector(0, 3.66589, 1.81802), angle = Angle(0, -180, 45), size = Vector(0.015, 0.015, 0.015), color = Color(255, 233, 0, 255), surpresslightning = false, material = "phoenix_storms/trains/track_plateside", skin = 0, bodygroup = {} },
		["e1++++++++"] = { type = "Model", model = "models/hunter/tubes/tube2x2x025.mdl", bone = "Python", rel = "e1", pos = Vector(3e-05, 5.32092, 0.16309), angle = Angle(0, 0, 135), size = Vector(0.03, 0.03, 0.15), color = Color(146, 15, 15, 255), surpresslightning = false, material = "phoenix_storms/trains/track_plate", skin = 0, bodygroup = {} },
		["e1+++++++++"] = { type = "Model", model = "models/hunter/tubes/tube2x2x025.mdl", bone = "Cylinder_release", rel = "e1", pos = Vector(-0.003, 6.612, -1.128), angle = Angle(0.087, -0.087, 135), size = Vector(0.03, 0.03, 0.15), color = Color(146, 15, 15, 255), surpresslightning = false, material = "phoenix_storms/Fender_white", skin = 0, bodygroup = {} },
		["e1++++++++++"] = { type = "Model", model = "models/hunter/tubes/tube1x1x1.mdl", bone = "Python", rel = "e1+++++++++", pos = Vector(0, 0, -0.954), angle = Angle(0, 0, 0), size = Vector(0.055, 0.055, 0.385), color = Color(255, 255, 255, 255), surpresslightning = false, material = "phoenix_storms/trains/track_plateside", skin = 0, bodygroup = {} },
		["e1+++++++++++"] = { type = "Model", model = "models/props_lab/rotato.mdl", bone = "Python", rel = "e1+++++++++", pos = Vector(0, 0, 8.168), angle = Angle(0, -75, 90), size = Vector(0.521, 3.946, 0.521), color = Color(63, 63, 63, 255), surpresslightning = false, material = "phoenix_storms/Fender_white", skin = 0, bodygroup = {} },
		["e1++++++++++++"] = { type = "Model", model = "models/hunter/tubes/tube2x2x025.mdl", bone = "Python", rel = "e1+++++++++", pos = Vector(0, 0, 16.305), angle = Angle(0, 0, 0), size = Vector(0.03, 0.03, 0.15), color = Color(146, 15, 15, 255), surpresslightning = false, material = "phoenix_storms/Fender_white", skin = 0, bodygroup = {} },
		["e1+++++++++++++"] = { type = "Model", model = "models/props_c17/utilityconnecter003.mdl", bone = "Python", rel = "e1", pos = Vector(3e-05, 10.6059, -7.60794), angle = Angle(0, 0, 45), size = Vector(0.477, 0.731, 0.299), color = Color(255, 204, 0, 255), surpresslightning = false, material = "phoenix_storms/Fender_white", skin = 0, bodygroup = {} },
		["e1++++++++++++++"] = { type = "Model", model = "models/Mechanics/gears2/pinion_40t3.mdl", bone = "Python", rel = "e1", pos = Vector(0, 11.02094, -9.18997), angle = Angle(45, 89.99999, 89.99998), size = Vector(0.151, 0.106, 0.055), color = Color(255, 204, 0, 255), surpresslightning = false, material = "phoenix_storms/Fender_white", skin = 0, bodygroup = {} },
		["e1+++++++++++++++"] = { type = "Model", model = "models/mechanics/solid_steel/sheetmetal_box_4.mdl", bone = "Python", rel = "e1", pos = Vector(-3e-05, 3.14191, -2.34891), angle = Angle(45, 89.99999, 89.99998), size = Vector(0.07, 0.043, 0.038), color = Color(255, 204, 0, 255), surpresslightning = false, material = "phoenix_storms/Fender_white", skin = 0, bodygroup = {} },
		["e1++++++++++++++++"] = { type = "Model", model = "models/gibs/manhack_gib06.mdl", bone = "Python", rel = "e1", pos = Vector(0, 3.08295, -2.39603), angle = Angle(45, 89.99999, -89.99998), size = Vector(0.132, 0.132, 1.279), color = Color(255, 204, 0, 255), surpresslightning = false, material = "phoenix_storms/Fender_white", skin = 0, bodygroup = {} },
		["e1+++++++++++++++++"] = { type = "Model", model = "models/props_combine/breenlight.mdl", bone = "Python", rel = "e1+++++++++", pos = Vector(0, -1.511, 16.315), angle = Angle(0, 90, -180), size = Vector(0.198, 0.141, 0.088), color = Color(255, 204, 0, 255), surpresslightning = false, material = "phoenix_storms/Fender_white", skin = 0, bodygroup = {} },
		["e1++++++++++++++++++"] = { type = "Model", model = "models/props_phx/trains/track_128.mdl", bone = "Python", rel = "e1", pos = Vector(0, 6.18695, 1.15103), angle = Angle(45, 89.99999, 0), size = Vector(0.015, 0.006, 0.029), color = Color(63, 63, 63, 255), surpresslightning = false, material = "phoenix_storms/Fender_white", skin = 0, bodygroup = {} },
		["e1+++++++++++++++++++"] = { type = "Model", model = "models/hunter/tubes/tube1x1x1.mdl", bone = "Python", rel = "e1", pos = Vector(0, 4.49194, 0.98706), angle = Angle(0, 0, 135), size = Vector(0.055, 0.055, 0.04), color = Color(255, 255, 255, 255), surpresslightning = false, material = "phoenix_storms/trains/track_plateside", skin = 0, bodygroup = {} },
		["e2"] = { type = "Model", model = "models/weapons/Shotgun_shell.mdl", bone = "Bullet6", rel = "", pos = Vector(1.173, -0.666, 2.25), angle = Angle(90, 3, 0), size = Vector(0.361, 0.807, 0.807), color = Color(255, 255, 255, 255), surpresslightning = false, material = "models/weapons/shell/casing01", skin = 0, bodygroup = {} },
		["e2+"] = { type = "Model", model = "models/props_debris/rebar_smallnorm01c.mdl", bone = "Bullet6", rel = "e2", pos = Vector(-0.957, 0.004, 0.625), angle = Angle(0, 180, 180), size = Vector(0.042, 0.035, 0.035), color = Color(255, 255, 255, 255), surpresslightning = false, material = "models/props_wasteland/rockcliff02c", skin = 0, bodygroup = {} }
	}
	
	SWEP.WElements = {
		["e1"] = { type = "Model", model = "models/props_vents/vent_medium_grill001.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(1.694, 1.268, -1.093), angle = Angle(0, -90, 126.957), size = Vector(0.06, 0.296, 0.271), color = Color(63, 63, 63, 255), surpresslightning = false, material = "phoenix_storms/Fender_white", skin = 0, bodygroup = {} },
		["e1+"] = { type = "Model", model = "models/props_vents/vent_medium_grill001.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "e1", pos = Vector(0, 0.082, -0.208), angle = Angle(0, 0, 0), size = Vector(0.065, 0.219, 0.211), color = Color(146, 15, 15, 255), surpresslightning = false, material = "phoenix_storms/trains/track_beamtop", skin = 0, bodygroup = {} },
		["e1++"] = { type = "Model", model = "models/hunter/blocks/cube1x1x1.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "e1", pos = Vector(0.001, 2.37, -0.361), angle = Angle(-45, 90, 0.001), size = Vector(0.032, 0.025, 0.073), color = Color(63, 63, 63, 255), surpresslightning = false, material = "phoenix_storms/Fender_white", skin = 0, bodygroup = {} },
		["e1+++"] = { type = "Model", model = "models/hunter/plates/platehole1x1.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "e1", pos = Vector(0, 3.16, 2.822), angle = Angle(45, 90, 90), size = Vector(0.022, 0.025, 0.413), color = Color(63, 63, 63, 255), surpresslightning = false, material = "phoenix_storms/Fender_white", skin = 0, bodygroup = {} },
		["e1++++"] = { type = "Model", model = "models/props_c17/FurnitureWashingmachine001a.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "e1", pos = Vector(-0.001, 2.96, 0.195), angle = Angle(-45, 90, 0.001), size = Vector(0.06, 0.045, 0.079), color = Color(63, 63, 63, 255), surpresslightning = false, material = "phoenix_storms/Fender_white", skin = 0, bodygroup = {} },
		["e1+++++"] = { type = "Model", model = "models/props_c17/light_decklight01_off.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "e1", pos = Vector(0, 3.292, 1.469), angle = Angle(-45, 90, 180), size = Vector(0.08, 0.064, 0.099), color = Color(63, 63, 63, 255), surpresslightning = false, material = "phoenix_storms/Fender_white", skin = 0, bodygroup = {} },
		["e1++++++"] = { type = "Model", model = "models/hunter/tubes/tube4x4x2to2x2.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "e1", pos = Vector(0, 4.156, 1.329), angle = Angle(0, 180, 45), size = Vector(0.015, 0.015, 0.015), color = Color(146, 15, 15, 255), surpresslightning = false, material = "phoenix_storms/trains/track_plate", skin = 0, bodygroup = {} },
		["e1+++++++"] = { type = "Model", model = "models/hunter/tubes/circle2x2.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "e1", pos = Vector(0, 3.666, 1.818), angle = Angle(0, -180, 45), size = Vector(0.015, 0.015, 0.015), color = Color(255, 233, 0, 255), surpresslightning = false, material = "phoenix_storms/trains/track_plateside", skin = 0, bodygroup = {} },
		["e1++++++++"] = { type = "Model", model = "models/hunter/tubes/tube2x2x025.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "e1", pos = Vector(0, 5.321, 0.163), angle = Angle(0, 0, 135), size = Vector(0.03, 0.03, 0.15), color = Color(146, 15, 15, 255), surpresslightning = false, material = "phoenix_storms/trains/track_plate", skin = 0, bodygroup = {} },
		["e1+++++++++"] = { type = "Model", model = "models/hunter/tubes/tube2x2x025.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "e1", pos = Vector(-0.003, 6.612, -1.128), angle = Angle(0.087, -0.087, 135), size = Vector(0.03, 0.03, 0.15), color = Color(146, 15, 15, 255), surpresslightning = false, material = "phoenix_storms/Fender_white", skin = 0, bodygroup = {} },
		["e1++++++++++"] = { type = "Model", model = "models/hunter/tubes/tube1x1x1.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "e1+++++++++", pos = Vector(0, 0, -0.954), angle = Angle(0, 0, 0), size = Vector(0.055, 0.055, 0.385), color = Color(255, 255, 255, 255), surpresslightning = false, material = "phoenix_storms/trains/track_plateside", skin = 0, bodygroup = {} },
		["e1+++++++++++"] = { type = "Model", model = "models/props_lab/rotato.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "e1+++++++++", pos = Vector(0, 0, 8.168), angle = Angle(0, -75, 90), size = Vector(0.521, 3.946, 0.521), color = Color(63, 63, 63, 255), surpresslightning = false, material = "phoenix_storms/Fender_white", skin = 0, bodygroup = {} },
		["e1++++++++++++"] = { type = "Model", model = "models/hunter/tubes/tube2x2x025.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "e1+++++++++", pos = Vector(0, 0, 16.305), angle = Angle(0, 0, 0), size = Vector(0.03, 0.03, 0.15), color = Color(146, 15, 15, 255), surpresslightning = false, material = "phoenix_storms/Fender_white", skin = 0, bodygroup = {} },
		["e1+++++++++++++"] = { type = "Model", model = "models/props_c17/utilityconnecter003.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "e1", pos = Vector(0, 10.606, -7.608), angle = Angle(0, 0, 45), size = Vector(0.477, 0.731, 0.299), color = Color(255, 204, 0, 255), surpresslightning = false, material = "phoenix_storms/Fender_white", skin = 0, bodygroup = {} },
		["e1++++++++++++++"] = { type = "Model", model = "models/Mechanics/gears2/pinion_40t3.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "e1", pos = Vector(0, 11.021, -9.19), angle = Angle(45, 90, 90), size = Vector(0.151, 0.106, 0.055), color = Color(255, 204, 0, 255), surpresslightning = false, material = "phoenix_storms/Fender_white", skin = 0, bodygroup = {} },
		["e1+++++++++++++++"] = { type = "Model", model = "models/mechanics/solid_steel/sheetmetal_box_4.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "e1", pos = Vector(0, 3.142, -2.349), angle = Angle(45, 90, 90), size = Vector(0.07, 0.043, 0.038), color = Color(255, 204, 0, 255), surpresslightning = false, material = "phoenix_storms/Fender_white", skin = 0, bodygroup = {} },
		["e1++++++++++++++++"] = { type = "Model", model = "models/gibs/manhack_gib06.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "e1", pos = Vector(0, 3.083, -2.396), angle = Angle(45, 90, -90), size = Vector(0.132, 0.132, 1.279), color = Color(255, 204, 0, 255), surpresslightning = false, material = "phoenix_storms/Fender_white", skin = 0, bodygroup = {} },
		["e1+++++++++++++++++"] = { type = "Model", model = "models/props_combine/breenlight.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "e1+++++++++", pos = Vector(0, -1.511, 16.315), angle = Angle(0, 90, -180), size = Vector(0.198, 0.141, 0.088), color = Color(255, 204, 0, 255), surpresslightning = false, material = "phoenix_storms/Fender_white", skin = 0, bodygroup = {} },
		["e1++++++++++++++++++"] = { type = "Model", model = "models/props_phx/trains/track_128.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "e1", pos = Vector(0, 6.187, 1.151), angle = Angle(45, 90, 0), size = Vector(0.015, 0.006, 0.029), color = Color(63, 63, 63, 255), surpresslightning = false, material = "phoenix_storms/Fender_white", skin = 0, bodygroup = {} },
		["e1+++++++++++++++++++"] = { type = "Model", model = "models/hunter/tubes/tube1x1x1.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "e1", pos = Vector(0, 4.492, 0.987), angle = Angle(0, 0, 135), size = Vector(0.055, 0.055, 0.04), color = Color(255, 255, 255, 255), surpresslightning = false, material = "phoenix_storms/trains/track_plateside", skin = 0, bodygroup = {} }
	}
end


SWEP.ShowViewModel = false
SWEP.ShowWorldModel = false

SWEP.Base = "weapon_zs_base"

SWEP.UseHands = true

SWEP.ReloadSound = Sound("Weapon_AWP.ClipOut")
SWEP.Primary.Damage = 35
SWEP.Primary.NumShots = 1
SWEP.Primary.Delay = 0.3
SWEP.ReloadDelay = SWEP.Primary.Delay
SWEP.ReloadSpeed = 0.8
SWEP.Primary.ClipSize = 1
SWEP.Primary.Automatic = false
SWEP.Primary.Ammo = "357"
SWEP.Primary.DefaultClip = 4
SWEP.Primary.KnockbackScale = 0.1

SWEP.Primary.Gesture = ACT_HL2MP_GESTURE_RANGE_ATTACK_CROSSBOW
SWEP.ReloadGesture = ACT_HL2MP_GESTURE_RELOAD_SHOTGUN

SWEP.ConeMax = 0.008
SWEP.ConeMin = 0.002
SWEP.Recoil = 1.33
SWEP.DefaultRecoil = 2.23
SWEP.MovingConeOffset = 0.14
GAMEMODE:SetupAimDefaults(SWEP,SWEP.Primary)

SWEP.IronSightsPos = Vector(-4.7, 0, -0.8)
SWEP.IronSightsAng = Vector(0, -.20, 0)


SWEP.WalkSpeed = SPEED_SLOWEST

SWEP.TracerName = "Tracer"

SWEP.Primary.Sound = ")weapons/ar2/ar2_altfire.wav"
local function bruh(attacker, tr, dmginfo)
	if SERVER then
		local pos = tr.HitPos

		local effectdata = EffectData()
			effectdata:SetOrigin(pos)
		util.Effect("chemzombieexplode", effectdata, true, true)
		for k,v in pairs(player.FindInSphere( pos, 87 )) do
			if v:Team() ~= attacker:Team() or attacker == v then
				v:TakeDamage(math.max(dmginfo:GetDamage()*0.25,2), attacker, attacker:GetActiveWeapon())
			end
		end
		if math.random(1,6) ~= 2 then
			local self = attacker:GetActiveWeapon()
			local dmg = dmginfo:GetDamage()
			timer.Simple(0, function() attacker:FireBullets({Num = 1, Src = pos+Vector(0,0,1), Dir = (tr.StartPos - tr.HitPos):GetNormal(), Spread = Vector(1, 1, 1), Tracer = 1, TracerName = "Tracer", Force = 7 * 0.1, Damage = dmg*0.7, Callback = self.BulletCallback}) end)
		end
	end
end


function SWEP.BulletCallback(attacker, tr, dmginfo)
	if SERVER then
		local pos = tr.HitPos

		local effectdata = EffectData()
			effectdata:SetOrigin(pos)
		util.Effect("chemzombieexplode", effectdata, true, true)
		for k,v in pairs(player.FindInSphere( pos, 87 )) do
			if v:Team() ~= attacker:Team() or attacker == v then
				v:TakeDamage(math.max(dmginfo:GetDamage()*0.25,2), attacker, attacker:GetActiveWeapon())
			end
		end
		if math.random(1,5) ~= 2 or dmginfo:GetDamage() == 35 then
			local self = attacker:GetActiveWeapon()
			local dmg = dmginfo:GetDamage()
			timer.Simple(0, function() attacker:FireBullets({Num = 1, Src = pos, Dir = (tr.StartPos - tr.HitPos):GetNormal(), Spread = Vector(1, 1, 1), Tracer = 1, TracerName = "Tracer", Force = 7 * 0.1, Damage = dmg*0.7, Callback = bruh}) end)
		end
	end
end
