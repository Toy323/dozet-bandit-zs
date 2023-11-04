AddCSLuaFile()

if CLIENT then
	SWEP.TranslateName = "weapon_deagle2_name"
	SWEP.TranslateDesc = "weapon_deagle2_desc"
	SWEP.Slot = 1
	SWEP.SlotPos = 1

	SWEP.ViewModelFlip = false
	SWEP.ViewModelFOV = 55
	SWEP.ViewModelBoneMods = {
		["ValveBiped.Bip01_L_Finger1"] = { scale = Vector(1, 1, 1), pos = Vector(-1.047, 0, 0), angle = Angle(0, 0, 0) },
		["ValveBiped.Bip01_L_Hand"] = { scale = Vector(0.825, 0.825, 0.825), pos = Vector(-1.243, -2.474, 0.036), angle = Angle(-4.22, -5.174, 15.443) },
		["ValveBiped.Bip01_R_Hand"] = { scale = Vector(0.978, 0.978, 0.978), pos = Vector(-0.237, -4.484, 0.304), angle = Angle(3.321, -5.28, -13.303) },
		["ValveBiped.Bip01_Spine4"] = { scale = Vector(1, 1, 1), pos = Vector(0, 1.078, 0), angle = Angle(0, 0, 0) }
	}
	SWEP.HUD3DBone = "v_weapon.elite_right"
	SWEP.HUD3DPos = Vector(0, -1, 2)
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

SWEP.Base = "weapon_zs_base"

SWEP.HoldType = "duel"

SWEP.ViewModel = "models/weapons/cstrike/c_pist_elite.mdl"
SWEP.WorldModel = "models/weapons/w_pist_elite.mdl"
SWEP.UseHands = true
SWEP.ShowViewModel = false
SWEP.ShowWorldModel = false
SWEP.Primary.Sound = Sound("Weapon_Deagle.Single")
SWEP.Primary.Damage = 26
SWEP.Primary.NumShots = 1
SWEP.Primary.Delay = 0.14
SWEP.Primary.KnockbackScale = 2
SWEP.Recoil = 2
SWEP.Primary.ClipSize = 14
SWEP.Primary.Automatic = false
SWEP.Primary.Ammo = "pistol"
GAMEMODE:SetupDefaultClip(SWEP.Primary)

SWEP.ConeMax = 0.014
SWEP.ConeMin = 0.009
SWEP.MovingConeOffset = 0.15
GAMEMODE:SetupAimDefaults(SWEP,SWEP.Primary)


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

