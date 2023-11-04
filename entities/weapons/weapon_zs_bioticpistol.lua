AddCSLuaFile()
local util_SharedRandom = util.SharedRandom
if CLIENT then
	SWEP.TranslateName = "weapon_bioticpistol_name"
	SWEP.TranslateDesc = "weapon_bioticpistol_desc"
	SWEP.Slot = 3
	SWEP.SlotPos = 0
	
	SWEP.ViewModelFlip = false

	SWEP.HUD3DScale = 0.04
	SWEP.HUD3DPos = Vector(3, 0, -8)
	SWEP.ShowViewModel = true
	SWEP.ShowWorldModel = true
	SWEP.ViewModelBoneMods = {}
	
	SWEP.SCKMaterials = {}
	
	
	SWEP.VElements = {
		["biopunk_1"] = { type = "Model", model = "models/props_lab/filecabinet02.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(6.244, 1.442, -3.461), angle = Angle(179.952, -179.744, -8.616), size = Vector(0.25, 0.05, 0.05), color = Color(255, 255, 255, 255), surpresslightning = false, material = "models/zombie_fast/fast_zombie_sheet", skin = 0, bodygroup = {} },
		["biopunk_1++"] = { type = "Model", model = "models/props_lab/pipesystem02e.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(6.24, 1.884, -3.43), angle = Angle(90.612, -158.188, -13.121), size = Vector(0.243, 0.243, 0.243), color = Color(255, 255, 255, 255), surpresslightning = false, material = "models/flesh", skin = 0, bodygroup = {} },
		["biopunk_1+++"] = { type = "Model", model = "models/props_lab/powerbox01a.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(6.23, 1.015, -4.18), angle = Angle(26.037, 44.365, -14.49), size = Vector(0.04, 0.04, 0.04), color = Color(255, 255, 255, 255), surpresslightning = false, material = "models/flesh", skin = 0, bodygroup = {} },
		["biopunk_1++++"] = { type = "Model", model = "models/props_lab/reciever01d.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(2.447, 1.921, 0.003), angle = Angle(93.999, 97.827, -14.866), size = Vector(0.15, 0.15, 0.15), color = Color(255, 255, 255, 255), surpresslightning = false, material = "models/flesh", skin = 0, bodygroup = {} },
		["biopunk_1+++++"] = { type = "Model", model = "models/props_junk/vent001_chunk4.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(4.711, 2.291, -3.535), angle = Angle(-137.95, 76.551, -10.583), size = Vector(0.15, 0.15, 0.15), color = Color(33, 255, 0, 255), surpresslightning = true, material = "models/flesh", skin = 0, bodygroup = {} },
		["biopunk_1++++++"] = { type = "Model", model = "models/props_junk/watermelon01_chunk01b.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(1.61, 1.609, -3.661), angle = Angle(-175.494, -117.404, -9.447), size = Vector(0.15, 0.15, 0.15), color = Color(255, 255, 255, 255), surpresslightning = true, material = "models/flesh", skin = 0, bodygroup = {} },
		["biopunk_1+++++++"] = { type = "Model", model = "models/props_pipes/pipecluster08d_extender64.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(4.151, 2.071, -4.153), angle = Angle(-18.284, 18.477, -15.549), size = Vector(0.03, 0.03, 0.03), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["biopunk_1++++++++"] = { type = "Model", model = "models/zombie/classic_legs.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(4.843, 2.664, -6.344), angle = Angle(20.498, 10.839, -15.786), size = Vector(0.04, 0.04, 0.04), color = Color(12, 255, 0, 255), surpresslightning = false, material = "phoenix_storms/metalset_1-2", skin = 0, bodygroup = {} }
	}
	
	SWEP.WElements = {
		["biopunk_1"] = { type = "Model", model = "models/props_lab/filecabinet02.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(6.244, 1.442, -3.461), angle = Angle(179.952, -179.744, -8.616), size = Vector(0.25, 0.05, 0.05), color = Color(255, 255, 255, 255), surpresslightning = false, material = "models/zombie_fast/fast_zombie_sheet", skin = 0, bodygroup = {} },
		["biopunk_1++"] = { type = "Model", model = "models/props_lab/pipesystem02e.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(6.24, 1.884, -3.43), angle = Angle(90.612, -158.188, -13.121), size = Vector(0.243, 0.243, 0.243), color = Color(255, 255, 255, 255), surpresslightning = false, material = "models/flesh", skin = 0, bodygroup = {} },
		["biopunk_1+++"] = { type = "Model", model = "models/props_lab/powerbox01a.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(6.23, 1.015, -4.18), angle = Angle(26.037, 44.365, -14.49), size = Vector(0.04, 0.04, 0.04), color = Color(255, 255, 255, 255), surpresslightning = false, material = "models/flesh", skin = 0, bodygroup = {} },
		["biopunk_1++++"] = { type = "Model", model = "models/props_lab/reciever01d.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(2.447, 1.921, 0.003), angle = Angle(93.999, 97.827, -14.866), size = Vector(0.15, 0.15, 0.15), color = Color(255, 255, 255, 255), surpresslightning = false, material = "models/flesh", skin = 0, bodygroup = {} },
		["biopunk_1+++++"] = { type = "Model", model = "models/props_junk/vent001_chunk4.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(4.711, 2.291, -3.535), angle = Angle(-137.95, 76.551, -10.583), size = Vector(0.15, 0.15, 0.15), color = Color(33, 255, 0, 255), surpresslightning = true, material = "models/flesh", skin = 0, bodygroup = {} },
		["biopunk_1++++++"] = { type = "Model", model = "models/props_junk/watermelon01_chunk01b.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(1.61, 1.609, -3.661), angle = Angle(-175.494, -117.404, -9.447), size = Vector(0.15, 0.15, 0.15), color = Color(255, 255, 255, 255), surpresslightning = true, material = "models/flesh", skin = 0, bodygroup = {} },
		["biopunk_1+++++++"] = { type = "Model", model = "models/props_pipes/pipecluster08d_extender64.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(4.151, 2.071, -4.153), angle = Angle(-18.284, 18.477, -15.549), size = Vector(0.03, 0.03, 0.03), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["biopunk_1++++++++"] = { type = "Model", model = "models/zombie/classic_legs.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(4.843, 2.664, -6.344), angle = Angle(20.498, 10.839, -15.786), size = Vector(0.04, 0.04, 0.04), color = Color(12, 255, 0, 255), surpresslightning = false, material = "phoenix_storms/metalset_1-2", skin = 0, bodygroup = {} }
	}
	
	

end

SWEP.Base = "weapon_zs_base"
SWEP.UseHands = true
SWEP.HoldType = "pistol"
SWEP.ViewModelFOV = 70
SWEP.ViewModelFlip = false
SWEP.ViewModel = "models/weapons/c_pistol.mdl"
SWEP.WorldModel = "models/weapons/w_pistol.mdl"
SWEP.IronSightsHoldType = "pistol"

SWEP.ReloadDelay = 0.3

SWEP.Primary.Sound = Sound("Weapon_Glock.Single")
SWEP.Primary.Damage = 6
SWEP.Primary.NumShots = 4
SWEP.Primary.Delay = 0.55
SWEP.Recoil = 1.96
SWEP.Primary.ClipSize = 8
SWEP.Primary.Automatic = false
SWEP.Primary.Ammo = "alyxgun"
SWEP.Primary.DefaultClip = 40

SWEP.ConeMax = 0.02
SWEP.ConeMin = 0.015
GAMEMODE:SetupAimDefaults(SWEP,SWEP.Primary)

SWEP.WalkSpeed = SPEED_SLOWER

SWEP.PukeLeft = 0
SWEP.NextPuke = 0

function SWEP:PrimaryAttack()
	if not self:CanPrimaryAttack() then return end
	self:SetNextPrimaryFire(CurTime() + self.Primary.Delay)
	self:EmitFireSound()
	self:TakeAmmo()
	self:SetConeAndFire()
	self:DoRecoil()

	local owner = self:GetOwner()
	self:SendWeaponAnimation()
	owner:DoAttackEvent()
	self.PukeLeft = self.PukeLeft + self.Primary.NumShots
	self:GetOwner():EmitSound("npc/barnacle/barnacle_die2.wav")
	self:GetOwner():EmitSound("physics/body/body_medium_break"..math.random(2, 4)..".wav", 72, math.Rand(85, 95))
	self.IdleAnimation = CurTime() + self:SequenceDuration()
end



function SWEP:Think()



	if self:GetIronsights() and not self:GetOwner():KeyDown(IN_ATTACK2) then
		self:SetIronsights(false)
	end

	local pl = self:GetOwner()
	local cone = self:GetCone()
	if self.PukeLeft > 0 and CurTime() >= self.NextPuke and SERVER then
		self.PukeLeft = self.PukeLeft - 1
		self.NextPuke = CurTime() + 0.02

		local ent = ents.Create("projectile_poisonflesh_shot")
		if ent:IsValid() then
			ent:SetPos(pl:GetShootPos())
			ent:SetOwner(pl)
			ent:Spawn()
			ent.Damage = self.Primary.Damage
			local phys = ent:GetPhysicsObject()
			if phys:IsValid() then
				local cone = math.deg(self:GetCone())
				local eyeang = self:GetOwner():EyeAngles()
				eyeang:RotateAroundAxis(eyeang:Forward(),util_SharedRandom("rotate"..self:EntIndex(), 0, 360))
				eyeang:RotateAroundAxis(eyeang:Up(),util_SharedRandom("bulletangle"..self:EntIndex(), -cone, cone))
				phys:Wake()
				phys:SetVelocityInstantaneous(eyeang:Forward() * 2500)
				phys:EnableGravity(false)
			end
		end
	end

	if self.BaseClass.Think then
		self.BaseClass.Think(self)
	end
end

function SWEP:CanPrimaryAttack()
	if self:GetOwner():IsHolding() or self:GetOwner():GetBarricadeGhosting() then return false end

	if self:Clip1() <= 0 then
		self:EmitSound("Weapon_Shotgun.Empty")
		self:SetNextPrimaryFire(CurTime() + 0.25)
		return false
	end


	return true
end
