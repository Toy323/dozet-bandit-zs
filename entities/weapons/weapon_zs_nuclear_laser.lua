AddCSLuaFile()

if CLIENT then
	SWEP.TranslateName = "weapon_radray_name"
	SWEP.TranslateDesc = "weapon_radray_desc"
	SWEP.Slot = 2
	SWEP.SlotPos = 0

	SWEP.ViewModelFlip = false
	SWEP.ViewModelFOV = 60

	SWEP.HUD3DBone = "v_weapon.sg552_Parent"
	SWEP.HUD3DPos = Vector(-2.791, -5.597, -2.984)
	SWEP.HUD3DAng = Angle(0, 0, 0)
	SWEP.HUD3DScale = 0.02

	SWEP.VElements = {
		["barrel"] = { type = "Model", model = "models/xqm/afterburner1huge.mdl", bone = "ValveBiped.Bip01_L_Hand", rel = "base element", pos = Vector(10.99715, 0.034, 0.01009), angle = Angle(63.58595, -88.9679, 87.79799), size = Vector(0.119, 0.119, 0.119), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/props_combine/metal_combinebridge001", skin = 0, bodygroup = {} },
		["barrel1"] = { type = "Model", model = "models/props_phx/construct/metal_angle360.mdl", bone = "ValveBiped.Bip01_L_Hand", rel = "base element", pos = Vector(16.58331, 0.11497, -0.03192), angle = Angle(62.32999, -87.02396, -94.54797), size = Vector(0.096, 0.099, 0.096), color = Color(255, 93, 0, 255), surpresslightning = false, bonemerge = false, material = "models/shiny", skin = 0, bodygroup = {} },
		["base element"] = { type = "Model", model = "models/xqm/cylinderx2.mdl", bone = "ValveBiped.Bip01_L_Hand", rel = "", pos = Vector(7.473, 0.219, 7.521), angle = Angle(-2.14, 6.235, -14.847), size = Vector(1.526, 0.597, 0.597), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/props_combine/metal_combinebridge001", skin = 0, bodygroup = {} },
		["button"] = { type = "Model", model = "models/mechanics/roboticslarge/a2.mdl", bone = "ValveBiped.Bip01_L_Hand", rel = "base element", pos = Vector(-3.23096, -0.74493, -7.09094), angle = Angle(75.02489, -98.12885, 13.78296), size = Vector(0.038, 0.038, 0.038), color = Color(255, 0, 0, 255), surpresslightning = false, bonemerge = false, material = "models/props_combine/metal_combinebridge001", skin = 0, bodygroup = {} },
		["handle"] = { type = "Model", model = "models/hunter/misc/roundthing2.mdl", bone = "ValveBiped.Bip01_L_Hand", rel = "base element", pos = Vector(3.29497, -1.34209, -6.25499), angle = Angle(14.12998, 90.47195, -93.96284), size = Vector(0.067, 0.09, 0.103), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/props_combine/metal_combinebridge001", skin = 0, bodygroup = {} },
		["handle1"] = { type = "Model", model = "models/hunter/tubes/tube1x1x3.mdl", bone = "ValveBiped.Bip01_L_Hand", rel = "base element", pos = Vector(-4.22479, 0.37402, -2.20694), angle = Angle(12.78899, 59.08096, -174.28699), size = Vector(0.04, 0.04, 0.058), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/props_combine/metal_combinebridge001", skin = 0, bodygroup = {} },
		["isotop can"] = { type = "Model", model = "models/Mechanics/gears2/gear_18t3.mdl", bone = "ValveBiped.Bip01_L_Hand", rel = "base element", pos = Vector(-45.35094, -0.07744, 0.17633), angle = Angle(14.66366, 88.61725, -89.12411), size = Vector(0.204, 0.204, 0.204), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/props_combine/metal_combinebridge001", skin = 0, bodygroup = {} },
		["isotop isolation"] = { type = "Model", model = "models/props_phx/construct/windows/window_curve360x2.mdl", bone = "ValveBiped.Bip01_L_Hand", rel = "base element", pos = Vector(-43.22581, -0.24803, -0.0379), angle = Angle(69.59167, -91.46964, -89.52682), size = Vector(0.072, 0.072, 0.17), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} },
		["rad barrel"] = { type = "Model", model = "models/props/de_train/barrel.mdl", bone = "ValveBiped.Bip01_L_Hand", rel = "base element", pos = Vector(14.95107, -0.39296, -4.90199), angle = Angle(69.12097, 81.08297, -84.375), size = Vector(0.124, 0.124, 0.124), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} },
		["rad barrel+"] = { type = "Model", model = "models/props/de_train/barrel.mdl", bone = "ValveBiped.Bip01_L_Hand", rel = "base element", pos = Vector(14.65018, -4.99174, 0.965), angle = Angle(79.18991, -101.34888, 112.23389), size = Vector(0.124, 0.124, 0.124), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} },
		["rad barrel++"] = { type = "Model", model = "models/props/de_train/barrel.mdl", bone = "ValveBiped.Bip01_L_Hand", rel = "base element", pos = Vector(14.99274, 1.1053, 5.3231), angle = Angle(66.7036, 106.40052, -110.26077), size = Vector(0.124, 0.124, 0.124), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} },
		["rad barrel+++"] = { type = "Model", model = "models/props/de_train/barrel.mdl", bone = "ValveBiped.Bip01_L_Hand", rel = "base element", pos = Vector(14.68745, 4.96538, -0.59926), angle = Angle(69.10954, 78.72281, -83.33356), size = Vector(0.124, 0.124, 0.124), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} },
		["rad isotop"] = { type = "Model", model = "models/xqm/cylinderx2.mdl", bone = "ValveBiped.Bip01_L_Hand", rel = "base element", pos = Vector(-27.27765, 0.00482, -0.01537), angle = Angle(0, 1e-05, -2e-05), size = Vector(1.008, 0.467, 0.467), color = Color(255, 93, 0, 255), surpresslightning = false, bonemerge = false, material = "models/shiny", skin = 0, bodygroup = {} },
		["rad light"] = { type = "Sprite", sprite = "effects/combine_halo", bone = "ValveBiped.Bip01_L_Hand", rel = "base element", pos = Vector(15.16701, 0.38805, 0.48701), size = { x = 26.061, y = 26.061 }, color = Color(255, 93, 0, 255), nocull = true, additive = true, vertexalpha = true, vertexcolor = true, ignorez = false},
		["rad light+"] = { type = "Sprite", sprite = "effects/combine_halo", bone = "ValveBiped.Bip01_L_Hand", rel = "base element", pos = Vector(-35.8606, 0.23793, 1.04141), size = { x = 26.061, y = 26.061 }, color = Color(255, 93, 0, 255), nocull = true, additive = true, vertexalpha = true, vertexcolor = true, ignorez = false},
		["screen"] = { type = "Model", model = "models/props_combine/combine_intmonitor001.mdl", bone = "ValveBiped.Bip01_L_Hand", rel = "base element", pos = Vector(0.74455, -6.82271, -0.80666), angle = Angle(24.85596, -174.70732, 165.92757), size = Vector(0.111, 0.111, 0.111), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} },
		["screen handle"] = { type = "Model", model = "models/phxtended/bar1x45a.mdl", bone = "ValveBiped.Bip01_L_Hand", rel = "base element", pos = Vector(0.08443, -0.72655, -7.12589), angle = Angle(43.59032, -9.85044, 15.68103), size = Vector(0.165, 0.165, 0.165), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} },
		["tube"] = { type = "Model", model = "models/props_pipes/pipe03_lcurve01_long.mdl", bone = "ValveBiped.Bip01_L_Hand", rel = "base element", pos = Vector(4.92297, 4.55096, -0.59088), angle = Angle(-79.36903, 50.30305, 137.25174), size = Vector(0.089, 0.089, 0.089), color = Color(0, 0, 0, 255), surpresslightning = false, bonemerge = false, material = "models/props_combine/metal_combinebridge001", skin = 0, bodygroup = {} },
		["tube+"] = { type = "Model", model = "models/props_pipes/pipe03_lcurve01_long.mdl", bone = "ValveBiped.Bip01_L_Hand", rel = "base element", pos = Vector(3.66284, -4.2231, 0.69705), angle = Angle(78.93298, -105.88287, 13.47502), size = Vector(0.089, 0.089, 0.089), color = Color(0, 0, 0, 255), surpresslightning = false, bonemerge = false, material = "models/props_combine/metal_combinebridge001", skin = 0, bodygroup = {} },
		["tube++"] = { type = "Model", model = "models/props_pipes/pipe03_lcurve01_long.mdl", bone = "ValveBiped.Bip01_L_Hand", rel = "base element", pos = Vector(4.237, 0.62007, 3.87608), angle = Angle(0.06901, -93.38789, 9.25999), size = Vector(0.089, 0.089, 0.089), color = Color(0, 0, 0, 255), surpresslightning = false, bonemerge = false, material = "models/props_combine/metal_combinebridge001", skin = 0, bodygroup = {} },
		["tube+++"] = { type = "Model", model = "models/props_pipes/pipe03_lcurve01_long.mdl", bone = "ValveBiped.Bip01_L_Hand", rel = "base element", pos = Vector(5.48003, -0.86482, -4.17993), angle = Angle(9.98497, 84.58298, -176.632), size = Vector(0.089, 0.089, 0.089), color = Color(0, 0, 0, 255), surpresslightning = false, bonemerge = false, material = "models/props_combine/metal_combinebridge001", skin = 0, bodygroup = {} }
		}
		
		SWEP.WElements = {
		["barrel"] = { type = "Model", model = "models/xqm/afterburner1huge.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "base element", pos = Vector(10.997, 0.034, 0.01), angle = Angle(63.586, -88.968, 87.798), size = Vector(0.119, 0.119, 0.119), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/props_combine/metal_combinebridge001", skin = 0, bodygroup = {} },
		["barrel1"] = { type = "Model", model = "models/props_phx/construct/metal_angle360.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "base element", pos = Vector(16.583, 0.115, -0.032), angle = Angle(62.33, -87.024, -94.548), size = Vector(0.096, 0.099, 0.096), color = Color(255, 93, 0, 255), surpresslightning = false, bonemerge = false, material = "models/shiny", skin = 0, bodygroup = {} },
		["base element"] = { type = "Model", model = "models/xqm/cylinderx2.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(7.912, 2.211, -7.463), angle = Angle(-1.42, 3.524, 159.534), size = Vector(1.526, 0.597, 0.597), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/props_combine/metal_combinebridge001", skin = 0, bodygroup = {} },
		["button"] = { type = "Model", model = "models/mechanics/roboticslarge/a2.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "base element", pos = Vector(-3.231, -0.745, -7.091), angle = Angle(75.025, -98.129, 13.783), size = Vector(0.038, 0.038, 0.038), color = Color(255, 0, 0, 255), surpresslightning = false, bonemerge = false, material = "models/props_combine/metal_combinebridge001", skin = 0, bodygroup = {} },
		["handle"] = { type = "Model", model = "models/hunter/misc/roundthing2.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "base element", pos = Vector(3.295, -1.342, -6.255), angle = Angle(14.13, 90.472, -93.963), size = Vector(0.067, 0.09, 0.103), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/props_combine/metal_combinebridge001", skin = 0, bodygroup = {} },
		["handle1"] = { type = "Model", model = "models/hunter/tubes/tube1x1x3.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "base element", pos = Vector(-4.225, 0.374, -2.207), angle = Angle(12.789, 59.081, -174.287), size = Vector(0.04, 0.04, 0.058), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/props_combine/metal_combinebridge001", skin = 0, bodygroup = {} },
		["isotop can"] = { type = "Model", model = "models/Mechanics/gears2/gear_18t3.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "base element", pos = Vector(-45.351, -0.077, 0.176), angle = Angle(14.664, 88.617, -89.124), size = Vector(0.204, 0.204, 0.204), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/props_combine/metal_combinebridge001", skin = 0, bodygroup = {} },
		["isotop isolation"] = { type = "Model", model = "models/props_phx/construct/windows/window_curve360x2.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "base element", pos = Vector(-43.226, -0.248, -0.038), angle = Angle(69.592, -91.47, -89.527), size = Vector(0.072, 0.072, 0.17), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} },
		["rad barrel"] = { type = "Model", model = "models/props/de_train/barrel.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "base element", pos = Vector(14.951, -0.393, -4.902), angle = Angle(69.121, 81.083, -84.375), size = Vector(0.124, 0.124, 0.124), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} },
		["rad barrel+"] = { type = "Model", model = "models/props/de_train/barrel.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "base element", pos = Vector(14.65, -4.992, 0.965), angle = Angle(79.19, -101.349, 112.234), size = Vector(0.124, 0.124, 0.124), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} },
		["rad barrel++"] = { type = "Model", model = "models/props/de_train/barrel.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "base element", pos = Vector(14.993, 1.105, 5.323), angle = Angle(66.704, 106.401, -110.261), size = Vector(0.124, 0.124, 0.124), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} },
		["rad barrel+++"] = { type = "Model", model = "models/props/de_train/barrel.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "base element", pos = Vector(14.687, 4.965, -0.599), angle = Angle(69.11, 78.723, -83.334), size = Vector(0.124, 0.124, 0.124), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} },
		["rad isotop"] = { type = "Model", model = "models/xqm/cylinderx2.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "base element", pos = Vector(-27.278, 0.005, -0.015), angle = Angle(0, 0, 0), size = Vector(1.008, 0.467, 0.467), color = Color(255, 93, 0, 255), surpresslightning = false, bonemerge = false, material = "models/shiny", skin = 0, bodygroup = {} },
		["rad light"] = { type = "Sprite", sprite = "effects/combine_halo", bone = "ValveBiped.Bip01_R_Hand", rel = "base element", pos = Vector(15.167, 0.388, 0.487), size = { x = 26.061, y = 26.061 }, color = Color(255, 93, 0, 255), nocull = true, additive = true, vertexalpha = true, vertexcolor = true, ignorez = false},
		["rad light+"] = { type = "Sprite", sprite = "effects/combine_halo", bone = "ValveBiped.Bip01_R_Hand", rel = "base element", pos = Vector(-35.861, 0.238, 1.041), size = { x = 26.061, y = 26.061 }, color = Color(255, 93, 0, 255), nocull = true, additive = true, vertexalpha = true, vertexcolor = true, ignorez = false},
		["screen"] = { type = "Model", model = "models/props_combine/combine_intmonitor001.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "base element", pos = Vector(0.745, -6.823, -0.807), angle = Angle(24.856, -174.707, 165.92799), size = Vector(0.111, 0.111, 0.111), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} },
		["screen handle"] = { type = "Model", model = "models/phxtended/bar1x45a.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "base element", pos = Vector(0.084, -0.727, -7.126), angle = Angle(43.59, -9.85, 15.681), size = Vector(0.165, 0.165, 0.165), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} },
		["tube"] = { type = "Model", model = "models/props_pipes/pipe03_lcurve01_long.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "base element", pos = Vector(4.923, 4.551, -0.591), angle = Angle(-79.369, 50.303, 137.252), size = Vector(0.089, 0.089, 0.089), color = Color(0, 0, 0, 255), surpresslightning = false, bonemerge = false, material = "models/props_combine/metal_combinebridge001", skin = 0, bodygroup = {} },
		["tube+"] = { type = "Model", model = "models/props_pipes/pipe03_lcurve01_long.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "base element", pos = Vector(3.663, -4.223, 0.697), angle = Angle(78.933, -105.883, 13.475), size = Vector(0.089, 0.089, 0.089), color = Color(0, 0, 0, 255), surpresslightning = false, bonemerge = false, material = "models/props_combine/metal_combinebridge001", skin = 0, bodygroup = {} },
		["tube++"] = { type = "Model", model = "models/props_pipes/pipe03_lcurve01_long.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "base element", pos = Vector(4.237, 0.62, 3.876), angle = Angle(0.069, -93.388, 9.26), size = Vector(0.089, 0.089, 0.089), color = Color(0, 0, 0, 255), surpresslightning = false, bonemerge = false, material = "models/props_combine/metal_combinebridge001", skin = 0, bodygroup = {} },
		["tube+++"] = { type = "Model", model = "models/props_pipes/pipe03_lcurve01_long.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "base element", pos = Vector(5.48, -0.865, -4.18), angle = Angle(9.985, 84.583, -176.632), size = Vector(0.089, 0.089, 0.089), color = Color(0, 0, 0, 255), surpresslightning = false, bonemerge = false, material = "models/props_combine/metal_combinebridge001", skin = 0, bodygroup = {} }
		}
end

SWEP.Base = "weapon_zs_base"

SWEP.HoldType = "rpg"

SWEP.ShowViewModel = false
SWEP.ShowWorldModel = false

SWEP.ViewModel = "models/weapons/c_rpg.mdl"
SWEP.WorldModel = "models/weapons/w_rocket_launcher.mdl"
SWEP.UseHands = true

SWEP.Primary.Sound = "ambient/machines/teleport1.wav"
SWEP.Primary.Damage = 70
SWEP.Primary.NumShots = 1
SWEP.Primary.Delay = 1.78
SWEP.Primary.ClipSize = 5

SWEP.Recoil = 2
SWEP.DefaultRecoil = 2
SWEP.Primary.Automatic = true
SWEP.Primary.Ammo = "ar2"
SWEP.TracerName = "tracer_radray"

GAMEMODE:SetupDefaultClip(SWEP.Primary)

function SWEP:IsScoped()
	return self:GetIronsights() and self.fIronTime and self.fIronTime + 0.25 <= CurTime()
end

SWEP.Primary.Gesture = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2
SWEP.ReloadGesture = ACT_HL2MP_GESTURE_RELOAD_AR2

SWEP.ConeMax = 0.006
SWEP.ConeMin = 0.004
SWEP.MovingConeOffset = 0.11
GAMEMODE:SetupAimDefaults(SWEP,SWEP.Primary)

SWEP.WalkSpeed = SPEED_SLOW
SWEP.IronSightsPos = Vector(-2.52, 3.819, 3.599)
SWEP.IronSightsAng = Vector(0, 0, 0)

function SWEP:IsScoped()
	return self:GetIronsights() and self.fIronTime and self.fIronTime + 0.25 <= CurTime()
end

function SWEP:EmitFireSound()
	local rand = math.random(1,3)
	self:EmitSound("ambient/energy/zap"..math.random(5, 9)..".wav", 95, math.random(77, 122), 0.7)
	self:GetOwner():EmitSound("ambient/machines/teleport1.wav", 40, 200)
end
function SWEP:SecondaryAttack()
	if not self:CanSecondaryAttack() or self:Clip1() < 5 then return end
	local owner = self:GetOwner()
	local pos = owner:GetPos()
	self:SetNextSecondaryFire(CurTime() + 3)
	if SERVER then
		local g = ents.Create("env_radcloud")
		g:SetPos(pos)
		g:Spawn()
		g:SetOwner(owner)
	end
	self:TakePrimaryAmmo(5)
end
function SWEP.BulletCallback(attacker, tr, dmginfo)
	if CLIENT or !tr.Entity or !tr.Entity:IsPlayer() then return end
	local self = attacker:GetActiveWeapon()
	local g = tr.Entity
	timer.Create("RANDOMOUT"..tr.Entity:Name(), 0.6, 3, 
	function()
		if g and g:IsValid() then
			g:TakeDamage(7, attacker, self)
		end
	end)
end

