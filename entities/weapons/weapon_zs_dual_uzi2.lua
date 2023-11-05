AddCSLuaFile()

if CLIENT then
	SWEP.TranslateName = "weapon_silencer2_name"
	SWEP.TranslateDesc = "weapon_silencer2_desc"
	SWEP.Slot = 1
	SWEP.SlotPos = 1

	SWEP.ViewModelFlip = false
	SWEP.ViewModelFOV = 55
	SWEP.ViewModelBoneMods = {
		["ValveBiped.Bip01_L_Hand"] = { scale = Vector(1, 1, 1), pos = Vector(-0.056, 0.7, 0.371), angle = Angle(-6.928, -8.379, 28.998) },
		["ValveBiped.Bip01_R_Hand"] = { scale = Vector(1, 1, 1), pos = Vector(-0.4, -0.288, -0.356), angle = Angle(9.571, 2.583, -42.366) },
		["ValveBiped.Bip01_Spine4"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0.212, 0), angle = Angle(-0.175, 0, 0) }
	}
	SWEP.HUD3DBone = "v_weapon.elite_right"
	SWEP.HUD3DPos = Vector(0, -3, 4)
	SWEP.HUD3DAng = Angle(180, 0, 0)
	SWEP.HUD3DScale = 0.015

	SWEP.VElements = {
		["tmp1"] = { type = "Model", model = "models/weapons/w_smg_tmp.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(6.492, 1.429, 2.176), angle = Angle(-7.335, -6.632, 180), size = Vector(0.8, 0.8, 0.8), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} },
		["tmp1+"] = { type = "Model", model = "models/weapons/w_smg_tmp.mdl", bone = "ValveBiped.Bip01_L_Hand", rel = "", pos = Vector(5.254, 1.165, -2.372), angle = Angle(3.319, 5.289, 0.168), size = Vector(0.8, 0.8, 0.8), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} }
	}
	
	SWEP.WElements = {
		["tmp1"] = { type = "Model", model = "models/weapons/w_smg_tmp.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(5.963, 1.04, 2.008), angle = Angle(0, -4.001, -180), size = Vector(0.729, 0.729, 0.729), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} },
		["tmp1+"] = { type = "Model", model = "models/weapons/w_smg_tmp.mdl", bone = "ValveBiped.Bip01_L_Hand", rel = "", pos = Vector(6.118, 2.057, -1.872), angle = Angle(-2.098, -7.478, -10.31), size = Vector(0.729, 0.729, 0.729), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} }
	}
end

SWEP.Base = "weapon_zs_base"

SWEP.HoldType = "duel"

SWEP.ViewModel = "models/weapons/cstrike/c_pist_elite.mdl"
SWEP.WorldModel = "models/weapons/w_pist_elite.mdl"
SWEP.HoldType = "duel"
SWEP.UseHands = true
SWEP.ShowViewModel = false
SWEP.ShowWorldModel = false
SWEP.Primary.Sound = Sound("Weapon_TMP.Single")
SWEP.Primary.Damage = 9
SWEP.Primary.NumShots = 1
SWEP.Primary.Delay = 0.07

SWEP.Primary.ClipSize = 50
SWEP.Primary.Automatic = true
SWEP.Primary.Ammo = "smg1"

GAMEMODE:SetupDefaultClip(SWEP.Primary)

SWEP.Primary.Gesture = ACT_HL2MP_GESTURE_RANGE_ATTACK_SMG1
SWEP.ReloadGesture = ACT_HL2MP_GESTURE_RELOAD_SMG1

SWEP.ConeMax = 0.12
SWEP.ConeMin = 0.025
SWEP.MovingConeOffset = -0.02
SWEP.Recoil = 0.2
GAMEMODE:SetupAimDefaults(SWEP,SWEP.Primary)
SWEP.WalkSpeed = SPEED_FAST

if not CLIENT then return end

function SWEP:GetTracerOrigin()
	local owner = self:GetOwner()
	if owner:IsValid() then
		local vm = owner:GetViewModel()
		if vm and vm:IsValid() then
			local attachment = vm:GetAttachment(self:Clip1() % 2 + 3)
			if attachment then
				return attachment.Pos
			end
		end
	end
end

