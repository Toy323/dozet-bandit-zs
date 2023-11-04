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
		["50AE"] = { type = "Model", model = "models/props_borealis/bluebarrel001.mdl", bone = "v_weapon.magazine_right", rel = "mag", pos = Vector(0.082, -1.661, -0.134), angle = Angle(-2.6, 95.875, 178.47099), size = Vector(0.015, -0.018, -0.021), color = Color(178, 140, 37, 255), surpresslightning = false, bonemerge = false, material = "phoenix_storms/mat/mat_phx_metallic2", skin = 0, bodygroup = {} },
		["50AE+"] = { type = "Model", model = "models/props_borealis/bluebarrel001.mdl", bone = "v_weapon.magazine_right", rel = "mag+", pos = Vector(-0.119, -1.579, -0.128), angle = Angle(-2.6, 96.739, 180), size = Vector(0.015, -0.018, -0.021), color = Color(178, 140, 37, 255), surpresslightning = false, bonemerge = false, material = "phoenix_storms/mat/mat_phx_metallic2", skin = 0, bodygroup = {} },
		["deagle"] = { type = "Model", model = "models/weapons/w_pist_deagle.mdl", bone = "ValveBiped.Bip01_L_Hand", rel = "", pos = Vector(2.373, 1.686, -1.672), angle = Angle(0, 0, 0), size = Vector(0.947, 1.146, 0.947), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} },
		["deagle1"] = { type = "Model", model = "models/weapons/w_pist_deagle.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(3.023, 1.489, 2.232), angle = Angle(1.131, 2.636, 178.505), size = Vector(0.947, 1.279, 0.947), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} },
		["mag"] = { type = "Model", model = "models/hunter/blocks/cube075x2x1.mdl", bone = "v_weapon.magazine_right", rel = "", pos = Vector(3.267, -2.331, -3.497), angle = Angle(-3.735, -11.869, -1.988), size = Vector(0.02, 0.033, 0.033), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/gibs/metalgibs/metal_gibs", skin = 0, bodygroup = {} },
		["mag+"] = { type = "Model", model = "models/hunter/blocks/cube075x2x1.mdl", bone = "v_weapon.magazine_left", rel = "", pos = Vector(0.115, -1.483, -3.441), angle = Angle(2.674, 13.864, 1.526), size = Vector(0.02, 0.033, 0.033), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/gibs/metalgibs/metal_gibs", skin = 0, bodygroup = {} }
	}
	
	SWEP.WElements = {
		["deagle 1"] = { type = "Model", model = "models/weapons/w_pist_deagle.mdl", bone = "ValveBiped.Bip01_L_Hand", rel = "", pos = Vector(2.881, 0.808, -1.871), angle = Angle(-1.707, -2.842, 0.054), size = Vector(0.95, 0.95, 0.95), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} },
		["deagle 2"] = { type = "Model", model = "models/weapons/w_pist_deagle.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(3.406, 0.663, 2.258), angle = Angle(0, -4.465, 180), size = Vector(0.95, 0.95, 0.95), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} }
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

