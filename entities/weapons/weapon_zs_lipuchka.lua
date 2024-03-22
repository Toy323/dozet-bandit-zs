AddCSLuaFile()

if CLIENT then
	SWEP.TranslateName = "weapon_lipuchka_name"
	SWEP.TranslateDesc = "weapon_lipuchka_desc"
	SWEP.Slot = 3
	SWEP.SlotPos = 0

	SWEP.ViewModelFOV = 70
	SWEP.ViewModelFlip = false
	SWEP.ShowViewModel = false
	SWEP.ShowWorldModel = false
	SWEP.ViewModelBoneMods = {
		["ValveBiped.Bip01_Spine4"] = { scale = Vector(0.915, 0.915, 0.915), pos = Vector(-6.759, -1.257, 3.383), angle = Angle(2.735, -0.955, -1.147) },
		["ValveBiped.Bip01_L_Forearm"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) }
	}
	
	SWEP.SCKMaterials = {}
	
	SWEP.IronSightsPos = Vector(0.36, 0, 0.2)
	SWEP.IronSightsAng = Vector(0, 0, 0)
	
	SWEP.VElements = {
		["barrel"] = { type = "Model", model = "models/props_phx/gears/bevel12.mdl", bone = "ValveBiped.Bip01_L_Hand", rel = "", pos = Vector(12.958, 1.633, 7.04), angle = Angle(17.147, 86.427, 88.098), size = Vector(0.477, 0.477, 0.477), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} },
		["goo"] = { type = "Model", model = "models/xqm/cylinderx1medium.mdl", bone = "ValveBiped.Bip01_L_Hand", rel = "", pos = Vector(7.573, 1.584, 7.218), angle = Angle(-0.268, 177.82001, 83.455), size = Vector(0.428, 0.225, 0.225), color = Color(0, 255, 55, 255), surpresslightning = false, bonemerge = false, material = "models/props/cs_office/clouds", skin = 0, bodygroup = {} },
		["goo+"] = { type = "Model", model = "models/xqm/cylinderx1medium.mdl", bone = "ValveBiped.Bip01_L_Hand", rel = "", pos = Vector(7.573, 1.584, 7.218), angle = Angle(-0.268, 177.82001, 83.455), size = Vector(0.428, 0.225, 0.225), color = Color(0, 255, 55, 255), surpresslightning = false, bonemerge = false, material = "models/props/cs_office/clouds", skin = 0, bodygroup = {} },
		["goo++"] = { type = "Model", model = "models/xqm/cylinderx1medium.mdl", bone = "ValveBiped.Bip01_L_Hand", rel = "", pos = Vector(7.573, 1.584, 7.218), angle = Angle(-0.268, 177.82001, 83.455), size = Vector(0.428, 0.225, 0.225), color = Color(0, 255, 55, 255), surpresslightning = false, bonemerge = false, material = "models/props/cs_office/clouds", skin = 0, bodygroup = {} },
		["grip"] = { type = "Model", model = "models/props_phx/construct/metal_plate_curve360x2.mdl", bone = "ValveBiped.Bip01_L_Hand", rel = "", pos = Vector(3.279, 1.386, 3.581), angle = Angle(-3.243, 71.389, 177.711), size = Vector(0.018, 0.019, 0.071), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} },
		["grip1"] = { type = "Model", model = "models/props_phx/construct/metal_dome360.mdl", bone = "ValveBiped.Bip01_L_Hand", rel = "", pos = Vector(3.169, 1.245, 5.177), angle = Angle(5.031, 61.096, 177.416), size = Vector(0.039, 0.039, 0.039), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} },
		["gun"] = { type = "Model", model = "models/xqm/cylinderx1medium.mdl", bone = "ValveBiped.Bip01_L_Hand", rel = "", pos = Vector(-1.608, 1.115, 7.029), angle = Angle(-1.346, 177.00301, 85.409), size = Vector(0.597, 0.261, 0.261), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} },
		["hydravlic"] = { type = "Model", model = "models/props_c17/playground_teetertoter_stan.mdl", bone = "ValveBiped.Bip01_L_Hand", rel = "", pos = Vector(8.998, 4.294, 6.885), angle = Angle(-1.585, 180, -97.587), size = Vector(0.291, 0.145, 0.098), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} },
		["hydravlic+"] = { type = "Model", model = "models/props_c17/playground_teetertoter_stan.mdl", bone = "ValveBiped.Bip01_L_Hand", rel = "", pos = Vector(9.575, -0.806, 5.132), angle = Angle(1.12, -179.77699, 124.499), size = Vector(0.292, 0.215, 0.058), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} },
		["hydravlic++"] = { type = "Model", model = "models/props_c17/playground_teetertoter_stan.mdl", bone = "ValveBiped.Bip01_L_Hand", rel = "", pos = Vector(9.42, -0.268, 9.012), angle = Angle(-2.833, 180, 36.751), size = Vector(0.291, 0.145, 0.098), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} },
		["isolation"] = { type = "Model", model = "models/props_phx/construct/windows/window_curve360x2.mdl", bone = "ValveBiped.Bip01_L_Hand", rel = "", pos = Vector(5.357, 1.412, 7.173), angle = Angle(1.723, 86.719, 89.428), size = Vector(0.063, 0.063, 0.082), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} },
		["m grip"] = { type = "Model", model = "models/Mechanics/gears2/pinion_20t1.mdl", bone = "ValveBiped.Bip01_L_Hand", rel = "monitor+", pos = Vector(-0.565, -0.397, 1.173), angle = Angle(56.193, 151.461, -81.562), size = Vector(0.046, 0.046, 0.046), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} },
		["monitor"] = { type = "Model", model = "models/hunter/plates/plate1x1.mdl", bone = "ValveBiped.Bip01_L_Hand", rel = "monitor+", pos = Vector(0.018, -0.007, -0.3), angle = Angle(0.295, -0.018, -0.063), size = Vector(0.033, 0.046, 0.012), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/props_combine/combine_interface_disp", skin = 0, bodygroup = {} },
		["monitor+"] = { type = "Model", model = "models/hunter/blocks/cube075x1x025.mdl", bone = "ValveBiped.Bip01_L_Hand", rel = "", pos = Vector(0.365, -2.493, 4.331), angle = Angle(12.033, 64.872, 86.42), size = Vector(0.051, 0.051, 0.051), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/props_combine/metal_combinebridge001", skin = 0, bodygroup = {} },
		["r grip"] = { type = "Model", model = "models/props_phx/construct/metal_dome360.mdl", bone = "ValveBiped.Bip01_L_Hand", rel = "", pos = Vector(-8.425, 0.874, 6.848), angle = Angle(6.422, 91.196, -87.127), size = Vector(0.069, 0.066, 0.066), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} },
		["r grip2"] = { type = "Model", model = "models/hunter/blocks/cube05x1x05.mdl", bone = "ValveBiped.Bip01_L_Hand", rel = "", pos = Vector(-11.829, 2.249, 7), angle = Angle(-77.966, -47.555, -73.584), size = Vector(0.02, 0.02, 0.061), color = Color(255, 0, 0, 255), surpresslightning = false, bonemerge = false, material = "models/props/cs_assault/metal_stairs1", skin = 0, bodygroup = {} },
		["r grip2+"] = { type = "Model", model = "models/props_phx/construct/metal_plate_curve360x2.mdl", bone = "ValveBiped.Bip01_L_Hand", rel = "", pos = Vector(-15.071, 2.882, 6.688), angle = Angle(-77.966, -47.555, -73.584), size = Vector(0.02, 0.02, 0.061), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} },
		["sludge"] = { type = "Model", model = "models/props_phx/construct/metal_plate_curve360x2.mdl", bone = "ValveBiped.Bip01_L_Hand", rel = "", pos = Vector(1.196, 9.93, 5.708), angle = Angle(75.958, -112.074, 48.281), size = Vector(0.029, 0.029, 0.082), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} },
		["sludge2"] = { type = "Model", model = "models/props/de_train/barrel.mdl", bone = "ValveBiped.Bip01_L_Hand", rel = "", pos = Vector(-0.892, 6.461, 6.323), angle = Angle(-78.481, 53.524, 119.991), size = Vector(0.203, 0.203, 0.203), color = Color(50, 161, 33, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} },
		["valve"] = { type = "Model", model = "models/props_pipes/valvewheel002.mdl", bone = "ValveBiped.Bip01_L_Hand", rel = "", pos = Vector(-1.364, 5.734, 6.503), angle = Angle(11.617, 71.036, 176.60001), size = Vector(0.342, 0.342, 0.342), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} }
	}
	
	SWEP.WElements = {
		["barrel"] = { type = "Model", model = "models/props_phx/gears/bevel12.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "gun", pos = Vector(-14.56934, 0.34985, 0.21722), angle = Angle(77.42485, 94.35417, -95.03561), size = Vector(0.477, 0.477, 0.477), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} },
		["goo"] = { type = "Model", model = "models/xqm/cylinderx1medium.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "gun", pos = Vector(-9.19482, 0.0278, 0.00961), angle = Angle(-0.72816, 1.13992, -1.95834), size = Vector(0.428, 0.225, 0.225), color = Color(0, 255, 55, 255), surpresslightning = false, bonemerge = false, material = "models/props/cs_office/clouds", skin = 0, bodygroup = {} },
		["goo+"] = { type = "Model", model = "models/xqm/cylinderx1medium.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "gun", pos = Vector(-9.19479, 0.02783, 0.00961), angle = Angle(-0.72816, 1.13992, -1.95834), size = Vector(0.428, 0.225, 0.225), color = Color(0, 255, 55, 255), surpresslightning = false, bonemerge = false, material = "models/props/cs_office/clouds", skin = 0, bodygroup = {} },
		["goo++"] = { type = "Model", model = "models/xqm/cylinderx1medium.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "gun", pos = Vector(-9.19479, 0.02783, 0.00961), angle = Angle(-0.72816, 1.13992, -1.95837), size = Vector(0.428, 0.225, 0.225), color = Color(0, 255, 55, 255), surpresslightning = false, bonemerge = false, material = "models/props/cs_office/clouds", skin = 0, bodygroup = {} },
		["grip"] = { type = "Model", model = "models/props_phx/construct/metal_plate_curve360x2.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "grip1", pos = Vector(-0.209, -0.093, 1.589), angle = Angle(11.126, -4.613, 0.18), size = Vector(0.018, 0.019, 0.071), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} },
		["grip1"] = { type = "Model", model = "models/props_phx/construct/metal_dome360.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "gun", pos = Vector(5.358, 1.918, 0.519), angle = Angle(-77.056, 179.293, -84.878), size = Vector(0.039, 0.039, 0.039), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} },
		["gun"] = { type = "Model", model = "models/xqm/cylinderx1medium.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(14.882, 1.024, -1.048), angle = Angle(-2.146, 178.705, 164.769), size = Vector(0.597, 0.261, 0.261), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} },
		["hydravlic"] = { type = "Model", model = "models/props_c17/playground_teetertoter_stan.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "gun", pos = Vector(-10.75131, 0.18567, -2.64343), angle = Angle(-3.00555, -0.00036, 176.92749), size = Vector(0.291, 0.145, 0.098), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} },
		["hydravlic+"] = { type = "Model", model = "models/props_c17/playground_teetertoter_stan.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "gun", pos = Vector(-11.01959, 2.34985, 2.32242), angle = Angle(-3.01162, 2.71756, 39.15501), size = Vector(0.292, 0.215, 0.058), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} },
		["hydravlic++"] = { type = "Model", model = "models/props_c17/playground_teetertoter_stan.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "gun", pos = Vector(-10.98412, -1.56323, 2.08972), angle = Angle(-3.10303, -1.24631, -48.80105), size = Vector(0.291, 0.145, 0.098), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} },
		["isolation"] = { type = "Model", model = "models/props_phx/construct/windows/window_curve360x2.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "gun", pos = Vector(-6.97243, 0.02507, 0.06586), angle = Angle(87.10658, -96.43801, 97.19465), size = Vector(0.063, 0.063, 0.082), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} },
		["m grip"] = { type = "Model", model = "models/Mechanics/gears2/pinion_20t1.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "monitor+", pos = Vector(-0.565, -0.397, 1.173), angle = Angle(56.193, 151.461, -81.562), size = Vector(0.046, 0.046, 0.046), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} },
		["monitor"] = { type = "Model", model = "models/hunter/plates/plate1x1.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "monitor+", pos = Vector(0.018, -0.007, -0.3), angle = Angle(0.295, -0.018, -0.063), size = Vector(0.033, 0.046, 0.012), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/props_combine/combine_interface_disp", skin = 0, bodygroup = {} },
		["monitor+"] = { type = "Model", model = "models/hunter/blocks/cube075x1x025.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "gun", pos = Vector(-1.71776, 3.02682, 3.47516), angle = Angle(66.78812, 161.26309, -166.75456), size = Vector(0.051, 0.051, 0.051), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/props_combine/metal_combinebridge001", skin = 0, bodygroup = {} },
		["r grip"] = { type = "Model", model = "models/props_phx/construct/metal_dome360.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "gun", pos = Vector(6.82266, 0.01135, -0.11694), angle = Angle(85.54025, 25.79348, 158.82193), size = Vector(0.069, 0.066, 0.066), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} },
		["r grip2"] = { type = "Model", model = "models/hunter/blocks/cube05x1x05.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "gun", pos = Vector(10.14563, -0.34224, -1.64462), angle = Angle(-12.96508, -97.40183, 59.74041), size = Vector(0.02, 0.02, 0.061), color = Color(255, 0, 0, 255), surpresslightning = false, bonemerge = false, material = "models/props/cs_assault/metal_stairs1", skin = 0, bodygroup = {} },
		["r grip2+"] = { type = "Model", model = "models/props_phx/construct/metal_plate_curve360x2.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "gun", pos = Vector(13.35652, -0.17047, -2.46277), angle = Angle(-12.96508, -97.40183, 59.74036), size = Vector(0.02, 0.02, 0.061), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} },
		["sludge"] = { type = "Model", model = "models/props_phx/construct/metal_plate_curve360x2.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "gun", pos = Vector(-3.22911, 0.69984, -8.74042), angle = Angle(-8.67287, 86.72397, 28.92983), size = Vector(0.029, 0.029, 0.082), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} },
		["sludge2"] = { type = "Model", model = "models/props/de_train/barrel.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "gun", pos = Vector(-0.97766, 0.30249, -5.34259), angle = Angle(5.01463, -95.01655, 153.60181), size = Vector(0.203, 0.203, 0.203), color = Color(50, 161, 33, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} },
		["valve"] = { type = "Model", model = "models/props_pipes/valvewheel002.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "gun", pos = Vector(-0.47266, 0.16727, -4.62817), angle = Angle(72.61366, 156.53607, -70.87062), size = Vector(0.342, 0.342, 0.342), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} }
	}
	

end

SWEP.Base = "weapon_zs_base"

SWEP.HoldType = "physgun"
SWEP.ViewModel = "models/weapons/c_physcannon.mdl"
SWEP.WorldModel = "models/weapons/w_physics.mdl"

SWEP.UseHands = true
SWEP.ShowViewModel = false
SWEP.ShowWorldModel = false

SWEP.ReloadSound = Sound("Weapon_AWP.ClipOut")
SWEP.Primary.Sound = Sound("npc/env_headcrabcanister/launch.wav")
SWEP.Primary.Damage = 36
SWEP.Primary.NumShots = 1
SWEP.Primary.Delay = 0.26
SWEP.Recoil = 0.79
SWEP.DefaultRecoil = 0.89
SWEP.Primary.ClipSize = 12
SWEP.Primary.Automatic = true
SWEP.Primary.Ammo = "XBowBolt"
SWEP.Primary.DefaultClip = 52
SWEP.ReloadSpeed = 1.25
SWEP.Primary.Gesture = ACT_HL2MP_GESTURE_RANGE_ATTACK_CROSSBOW
SWEP.ReloadGesture = ACT_HL2MP_GESTURE_RELOAD_SHOTGUN

SWEP.ConeMax = 0.003
SWEP.ConeMin = 0.001

GAMEMODE:SetupAimDefaults(SWEP,SWEP.Primary)

SWEP.IronSightsPos = Vector(-7.4, 20, 1.3)
SWEP.IronSightsAng = Vector(0, 0, 0)

SWEP.WalkSpeed = SPEED_SLOWER
SWEP.IgnoreDamageScaling = true
SWEP.TracerName = "AR2Tracer"

function SWEP:EmitFireSound(omega)
	self:EmitSound("npc/waste_scanner/grenade_fire.wav", 75 * (omega and 2 or 1), math.random(182, 228), 0.4, CHAN_WEAPON + 20)
	self:EmitSound("^weapons/mortar/mortar_fire1.wav", 70, math.random(65, 77) * (omega and 3 or 1), 0.65)
	self:EmitSound("npc/barnacle/barnacle_gulp2.wav", 70, 70* (omega and 3 or 1), 0.85, CHAN_WEAPON + 21)
end

function SWEP:PrimaryAttack()
	if not self:CanPrimaryAttack() then return end
	self:SetNextPrimaryFire(CurTime() + self.Primary.Delay)
	self:EmitFireSound()	
	self:TakeAmmo()
	local dmg = self.Primary.Damage
	self:SetConeAndFire()
	self:DoRecoil()

	local owner = self:GetOwner()
	--owner:MuzzleFlash()
	self:SendWeaponAnimation()
	owner:DoAttackEvent()
	local aimvec = owner:GetAimVector()
	if SERVER then
		local ent = ents.Create("projectile_lipuchka")
		if ent:IsValid() then
			ent:SetPos(owner:GetShootPos())
			ent:SetAngles(aimvec:Angle())
			ent:SetOwner(owner)
			ent:Spawn()
			ent.Damage = self.Primary.Damage
			local phys = ent:GetPhysicsObject()
			if phys:IsValid() then
				phys:Wake()
				phys:SetVelocity(aimvec *2300)
			end
			--ent:SetVelocity(aimvec *2200)
		end
    end
	self.IdleAnimation = CurTime() + self:SequenceDuration()
end
function SWEP:GetMagazineChange()
	return self:GetDTFloat(22)
end
function SWEP:SetMagazineChange(number)
	return self:SetDTFloat(22,math.Clamp(number,0,1))
end
function SWEP:SecondaryAttack()
end
function SWEP:Think()
	if self.BaseClass.Think then
		self.BaseClass.Think(self)
	end
	local owner = self:GetOwner()
	if owner:KeyDown(IN_ATTACK2) and self:Clip1() > 0 and (self.NextSliz or 1) < CurTime() then
		local mag = self:GetMagazineChange()
		self:SetMagazineChange(mag+0.01)
		if mag == 1 then
			self.NextSliz = CurTime() + 2
			if SERVER then
				local aimvec = owner:GetAimVector()
				local ent = ents.Create("projectile_lipuchka")
				if ent:IsValid() then
					ent:SetPos(owner:GetShootPos())
					ent:SetAngles(aimvec:Angle())
					ent:SetOwner(owner)
					ent:Spawn()
					local base2 = self:Clip1()
					ent:SetDTInt(12,ent:GetDTInt(12)+base2)
					ent:SetModelScale(ent:GetModelScale()+0.2*base2)
					ent.Damage = self.Primary.Damage + 4 * base2
					local phys = ent:GetPhysicsObject()
					if phys:IsValid() then
						phys:Wake()
						phys:SetVelocity(aimvec *2300)
					end
				end
			end
			self:EmitFireSound(true)	
			self:SetConeAndFire()
			self:DoRecoil()
			self:SetClip1(0)
			self:SendWeaponAnimation()
			owner:DoAttackEvent()
			self:Reload()
			self:SetMagazineChange(0)
			self.IdleAnimation = CurTime() + self:SequenceDuration()
		end
	else
		self:SetMagazineChange(self:GetMagazineChange()-0.05)
	end
end
function SWEP:EmitReloadSound()
	if IsFirstTimePredicted() then
		timer.Simple(0.3, function() 
		self:EmitSound("player/footsteps/mud"..math.random(3)..".wav", 70, 22, 0.85, CHAN_WEAPON + 23)	
		timer.Create("dsaadsWaterDripping",0.19,6, function() self:EmitSound("ambient/water/drip"..math.random(4)..".wav", 40, 52, 0.25, CHAN_WEAPON + 22) end)
		end)
	end
end


if SERVER then return end
SWEP.oldGoo = SWEP.VElements['goo'].size
function SWEP:PreDrawViewModel(vm)
	if self.ShowViewModel == false then
		render.SetBlend(0)
	end
	local mag = self:GetMagazineChange()
	for k,v in pairs(self.VElements) do
		if string.sub(k,0,3) == "goo" then
			if mag == 0 then
				v.color.g = math.Approach(v.color.g,255+(self:Clip1()-self.Primary.ClipSize)*19,4)
			else
				v.color.g = math.Approach(v.color.g,mag*255,2)
			end
		end
	end
	local bone = self.ViewModelBoneMods["ValveBiped.Bip01_L_Forearm"].pos
	if self:Clip1() == 0 or self:GetReloadStart()+1.8>= CurTime() then
		bone.x = math.Approach(bone.x,0.719,0.01)
		bone.y = math.Approach(bone.y,3.234,0.12)
		bone.z = math.Approach(bone.z,1.437,0.06)
	else
		bone.x = math.Approach(bone.x,0,0.09)
		bone.y = math.Approach(bone.y,0,0.07)
		bone.z = math.Approach(bone.z,0,0.05)
	end
end
--math.Approach()
function SWEP:DrawWorldModel()
	local mag = self:GetMagazineChange()
	for k,v in pairs(self.WElements) do
		if string.sub(k,0,3) == "goo" then
			if mag == 0 then
				v.color.g = math.Approach(v.color.g,255+(self:Clip1()-self.Primary.ClipSize)*19,4)
			else
				v.color.g = math.Approach(v.color.g,mag*255,2)
			end
		elseif k == "sludge2" then
			if self:GetReloadStart()+2.8>= CurTime() then
				local pos = v.modelEnt:GetPos()
				local emitter = ParticleEmitter( pos )
				emitter:SetNearClip(24, 32)
				local particle = emitter:Add("effects/blood2", pos )
				if particle then
					particle:SetDieTime( 3 )
					particle:SetStartSize( math.Rand(1,3) )
					particle:SetEndSize(1)
					particle:SetColor( 0, 255, 25 )
					particle:SetStartAlpha( 120  )
					particle:SetEndAlpha( 12 )
					particle:SetRoll( math.random( 0, 360 ) )
					particle:SetVelocity(VectorRand(-10,15))
				end
			end
		end
	end
	self.BaseClass.DrawWorldModel(self)
end
function SWEP:PostDrawViewModel(vm)
	local isspectated = (self:GetOwner():IsPlayer() and MySelf:GetObserverMode() == OBS_MODE_IN_EYE and MySelf:GetObserverTarget() == self:GetOwner())

	if self.ShowViewModel == false then
		render.SetBlend(1)
	end

	if not self.HUD3DPos or GAMEMODE.WeaponHUDMode == 1 or isspectated then return end

	local pos, ang = GetHUD3DPos(self,vm)
	if pos then
		self:Draw3DHUD(vm, pos, ang)
	end
end
