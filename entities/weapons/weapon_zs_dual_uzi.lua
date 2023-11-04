AddCSLuaFile()
SWEP.Base = "weapon_zs_base"
SWEP.ViewModel = "models/weapons/cstrike/c_pist_elite.mdl"
SWEP.WorldModel = "models/weapons/w_pist_elite.mdl"
if CLIENT then
	SWEP.TranslateName = "weapon_sprayer2_name"
	SWEP.TranslateDesc = "weapon_sprayer2_desc"
	SWEP.Slot = 2
	SWEP.SlotPos = 1

	SWEP.ViewModelFlip = false
	SWEP.ViewModelFOV = 70
--	SWEP.ViewModelFlip = 1
	SWEP.ViewModelBoneMods = {
		["ValveBiped.Bip01_L_Hand"] = { scale = Vector(1, 1, 1), pos = Vector(0.031, -0.028, 0), angle = Angle(6.84, 0, 0) },
		["ValveBiped.Bip01_R_Hand"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(-5.808, 0, 0) }
	}
	SWEP.HUD3DBone = "v_weapon.elite_right"
	SWEP.HUD3DPos = Vector(0, -6, 2)
	SWEP.HUD3DAng = Angle(180, 0, 0)
	SWEP.HUD3DScale = 0.015

	SWEP.VElements = {
		["uzi1"] = { type = "Model", model = "models/weapons/w_smg_mac10.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(3.793, 0.964, 2.83), angle = Angle(-12.693, -8.724, 180), size = Vector(0.9, 0.9, 0.9), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} },
		["uzi2"] = { type = "Model", model = "models/weapons/w_smg_mac10.mdl", bone = "ValveBiped.Bip01_L_Hand", rel = "", pos = Vector(4.417, 1.616, -2.926), angle = Angle(17.451, -7.045, -3.522), size = Vector(0.9, 0.9, 0.9), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} }
	}
	 
	SWEP.WElements = {
		["uzi"] = { type = "Model", model = "models/weapons/w_smg_mac10.mdl", bone = "ValveBiped.Bip01_L_Hand", rel = "", pos = Vector(3.603, 1.94, -2.357), angle = Angle(0, 0, 0), size = Vector(0.846, 0.846, 0.846), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} }
	}
end


SWEP.HoldType = "duel"
SWEP.UseHands = true
SWEP.ShowViewModel = false
SWEP.ShowWorldModel = true
SWEP.Primary.Sound = Sound("Weapon_MAC10.Single")
SWEP.Primary.Damage = 9
SWEP.Primary.NumShots = 1
SWEP.Primary.Delay = 0.04

SWEP.Primary.ClipSize = 64
SWEP.Primary.Automatic = true
SWEP.Primary.Ammo = "smg1"

GAMEMODE:SetupDefaultClip(SWEP.Primary)

SWEP.Primary.Gesture = ACT_HL2MP_GESTURE_RANGE_ATTACK_SMG1
SWEP.ReloadGesture = ACT_HL2MP_GESTURE_RELOAD_SMG1

SWEP.ConeMax = 1
SWEP.ConeMin = 0.095
SWEP.MovingConeOffset = -0.02
SWEP.Recoil = 0.2
GAMEMODE:SetupAimDefaults(SWEP,SWEP.Primary)
SWEP.WalkSpeed = SPEED_NORMAL



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

