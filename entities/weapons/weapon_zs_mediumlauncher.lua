AddCSLuaFile()

if CLIENT then
	SWEP.TranslateName = "weapon_medlaunch_name"
	SWEP.TranslateDesc = "weapon_medlaunch_desc"
	SWEP.Slot = 3
	SWEP.SlotPos = 0
	SWEP.ViewModelFOV = 50
	SWEP.ViewModelFlip = false

	SWEP.ViewModelFOV = 70
	SWEP.ViewModelFlip = false

	SWEP.HUD3DBone = "v_weapon.M3_PARENT"
	SWEP.HUD3DPos = Vector(-3, -5, -5)
	SWEP.HUD3DAng = Angle(0, 0, 0)
	SWEP.HUD3DScale = 0.03

	SWEP.ViewModelBoneMods = {
		["ValveBiped.Bip01_L_Forearm"] = { scale = Vector(1, 1, 1), pos = Vector(1.1, 0.055, 1.115), angle = Angle(0, 0, 0) }
		}
		
		SWEP.SCKMaterials = {}
		
		SWEP.IronSightsPos = Vector(-0.32, 0, -0.08)
		SWEP.IronSightsAng = Vector(0, 0, 0)
		
		SWEP.VElements = {
		["barrel"] = { type = "Model", model = "models/hunter/tubes/tube1x1x2.mdl", bone = "v_weapon.M3_PARENT", rel = "grip", pos = Vector(5.21449, 0.07297, -3.76309), angle = Angle(16.51382, 2.43745, 179.40697), size = Vector(0.03, 0.029, 0.15), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/gibs/metalgibs/metal_gibs", skin = 0, bodygroup = {} },
		["base"] = { type = "Model", model = "models/hunter/blocks/cube05x1x05.mdl", bone = "v_weapon.M3_PARENT", rel = "grip", pos = Vector(3.05499, 0.05002, 0.24695), angle = Angle(15.63099, 0.433, -90.10498), size = Vector(0.061, 0.057, 0.072), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/gibs/metalgibs/metal_gibs", skin = 0, bodygroup = {} },
		["base1"] = { type = "Model", model = "models/hunter/triangles/1x05x05.mdl", bone = "v_weapon.M3_PARENT", rel = "grip", pos = Vector(4.25894, 0.00986, 0.42596), angle = Angle(-0.12196, 91.73963, 74.66691), size = Vector(0.07, 0.053, 0.05), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/gibs/metalgibs/metal_gibs", skin = 0, bodygroup = {} },
		["base2"] = { type = "Model", model = "models/hunter/triangles/trapezium3x3x1c.mdl", bone = "v_weapon.M3_PARENT", rel = "grip", pos = Vector(4.60995, 0.07263, -3.91656), angle = Angle(76.07833, 177.92892, 4.20781), size = Vector(0.065, 0.036, 0.056), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/gibs/metalgibs/metal_gibs", skin = 0, bodygroup = {} },
		["connector"] = { type = "Model", model = "models/hunter/blocks/cube025x150x025.mdl", bone = "v_weapon.M3_PARENT", rel = "grip", pos = Vector(7.93564, 0.46259, -14.36649), angle = Angle(16.83975, 2.81668, -90.68527), size = Vector(0.034, 0.176, 0.08), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/gibs/metalgibs/metal_gibs", skin = 0, bodygroup = {} },
		["granade"] = { type = "Model", model = "models/Items/AR2_Grenade.mdl", bone = "v_weapon.M3_SHELL", rel = "", pos = Vector(-0.133, -1.288, -1.247), angle = Angle(-89.113, 137.653, -123.477), size = Vector(0.346, 0.346, 0.346), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} },
		["grip"] = { type = "Model", model = "models/props_phx/misc/iron_beam1.mdl", bone = "v_weapon.M3_PARENT", rel = "", pos = Vector(-0.353, -0.512, 0.073), angle = Angle(-14.072, 87.301, 0), size = Vector(0.113, 0.087, 0.164), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/props/CS_militia/roofbeams02", skin = 0, bodygroup = {} },
		["mag"] = { type = "Model", model = "models/mechanics/robotics/a2.mdl", bone = "v_weapon.M3_PARENT", rel = "grip", pos = Vector(5.90851, 0.01837, -10.41284), angle = Angle(73.62055, -179.58864, 93.19699), size = Vector(0.319, 0.119, 0.119), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/gibs/metalgibs/metal_gibs", skin = 0, bodygroup = {} },
		["mag port"] = { type = "Model", model = "models/hunter/plates/plate05x1.mdl", bone = "v_weapon.M3_PARENT", rel = "grip", pos = Vector(3.30136, 0.08578, -3.88611), angle = Angle(1.1966, -87.49542, -75.94096), size = Vector(0.056, 0.056, 0.056), color = Color(0, 0, 0, 255), surpresslightning = false, bonemerge = false, material = "models/gibs/metalgibs/metal_gibs", skin = 0, bodygroup = {} },
		["mag pump"] = { type = "Model", model = "models/props_phx/gears/bevel24.mdl", bone = "v_weapon.M3_PARENT", rel = "grip", pos = Vector(8.08511, 0.00195, -17.7529), angle = Angle(15.73889, 2.62125, 179.36259), size = Vector(0.042, 0.042, 0.042), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/gibs/metalgibs/metal_gibs", skin = 0, bodygroup = {} },
		["pump"] = { type = "Model", model = "models/hunter/tubes/tube1x1x2b.mdl", bone = "v_weapon.M3_PUMP", rel = "", pos = Vector(-0.068, -0.506, -2.373), angle = Angle(3.088, 130.37399, 180), size = Vector(0.038, 0.038, 0.038), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/props/CS_militia/roofbeams02", skin = 0, bodygroup = {} },
		["sight"] = { type = "Model", model = "models/mechanics/robotics/f1.mdl", bone = "v_weapon.M3_PARENT", rel = "grip", pos = Vector(5.9929, -0.00317, -3.37933), angle = Angle(2.47026, -86.99887, 8.96537), size = Vector(0.017, 0.017, 0.017), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/gibs/metalgibs/metal_gibs", skin = 0, bodygroup = {} },
		["sight1"] = { type = "Model", model = "models/props_phx/construct/metal_wire1x2b.mdl", bone = "v_weapon.M3_PARENT", rel = "grip", pos = Vector(6.34976, -0.01892, -3.33209), angle = Angle(2.17163, -88.34827, 14.10439), size = Vector(0.011, 0.018, 0.011), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} },
		["sight2"] = { type = "Model", model = "models/phxtended/bar1x.mdl", bone = "v_weapon.M3_PARENT", rel = "grip", pos = Vector(7.08934, 0.1593, -3.13541), angle = Angle(12.00542, 1.48044, -2.25915), size = Vector(0.009, 0.009, 0.009), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} },
		["trigger"] = { type = "Model", model = "models/mechanics/robotics/claw.mdl", bone = "v_weapon.M3_TRIGGER", rel = "", pos = Vector(-0.181, 0.39, 0.136), angle = Angle(81.756, -90, 90), size = Vector(0.032, 0.032, 0.032), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/gibs/metalgibs/metal_gibs", skin = 0, bodygroup = {} },
		["trigger frame"] = { type = "Model", model = "models/mechanics/robotics/claw2.mdl", bone = "v_weapon.M3_PARENT", rel = "grip", pos = Vector(1.81438, 0.02975, -0.75143), angle = Angle(5.08127, 1.90095, 87.14714), size = Vector(0.033, 0.034, 0.093), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/gibs/metalgibs/metal_gibs", skin = 0, bodygroup = {} }
		}
		
		SWEP.WElements = {
		["barrel"] = { type = "Model", model = "models/hunter/tubes/tube1x1x2.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "grip", pos = Vector(5.214, 0.073, -3.763), angle = Angle(16.514, 2.437, 179.407), size = Vector(0.03, 0.029, 0.15), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/gibs/metalgibs/metal_gibs", skin = 0, bodygroup = {} },
		["base"] = { type = "Model", model = "models/hunter/blocks/cube05x1x05.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "grip", pos = Vector(3.055, 0.05, 0.247), angle = Angle(15.631, 0.433, -90.105), size = Vector(0.061, 0.057, 0.072), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/gibs/metalgibs/metal_gibs", skin = 0, bodygroup = {} },
		["base1"] = { type = "Model", model = "models/hunter/triangles/1x05x05.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "grip", pos = Vector(4.259, 0.01, 0.426), angle = Angle(-0.122, 91.74, 74.667), size = Vector(0.07, 0.053, 0.05), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/gibs/metalgibs/metal_gibs", skin = 0, bodygroup = {} },
		["base2"] = { type = "Model", model = "models/hunter/triangles/trapezium3x3x1c.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "grip", pos = Vector(4.61, 0.073, -3.917), angle = Angle(76.078, 177.929, 4.208), size = Vector(0.065, 0.036, 0.056), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/gibs/metalgibs/metal_gibs", skin = 0, bodygroup = {} },
		["connector"] = { type = "Model", model = "models/hunter/blocks/cube025x150x025.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "grip", pos = Vector(7.936, 0.463, -14.366), angle = Angle(16.84, 2.817, -90.685), size = Vector(0.034, 0.176, 0.08), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/gibs/metalgibs/metal_gibs", skin = 0, bodygroup = {} },
		["grip"] = { type = "Model", model = "models/props_phx/misc/iron_beam1.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(4.33, 0.484, 0.524), angle = Angle(-103.514, 180, 0), size = Vector(0.113, 0.087, 0.164), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/props/CS_militia/roofbeams02", skin = 0, bodygroup = {} },
		["mag"] = { type = "Model", model = "models/mechanics/robotics/a2.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "grip", pos = Vector(5.909, 0.018, -10.413), angle = Angle(73.621, -179.589, 93.197), size = Vector(0.319, 0.119, 0.119), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/gibs/metalgibs/metal_gibs", skin = 0, bodygroup = {} },
		["mag port"] = { type = "Model", model = "models/hunter/plates/plate05x1.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "grip", pos = Vector(3.301, 0.086, -3.886), angle = Angle(1.197, -87.495, -75.941), size = Vector(0.056, 0.056, 0.056), color = Color(0, 0, 0, 255), surpresslightning = false, bonemerge = false, material = "models/gibs/metalgibs/metal_gibs", skin = 0, bodygroup = {} },
		["mag pump"] = { type = "Model", model = "models/props_phx/gears/bevel24.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "grip", pos = Vector(8.085, 0.002, -17.753), angle = Angle(15.739, 2.621, 179.36301), size = Vector(0.042, 0.042, 0.042), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/gibs/metalgibs/metal_gibs", skin = 0, bodygroup = {} },
		["pump"] = { type = "Model", model = "models/hunter/tubes/tube1x1x2b.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "grip", pos = Vector(6.407, 0.131, -12.088), angle = Angle(13.274, 44.48, 170.177), size = Vector(0.038, 0.038, 0.038), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/props/CS_militia/roofbeams02", skin = 0, bodygroup = {} },
		["sight"] = { type = "Model", model = "models/mechanics/robotics/f1.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "grip", pos = Vector(5.993, -0.003, -3.379), angle = Angle(2.47, -86.999, 8.965), size = Vector(0.017, 0.017, 0.017), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/gibs/metalgibs/metal_gibs", skin = 0, bodygroup = {} },
		["sight1"] = { type = "Model", model = "models/props_phx/construct/metal_wire1x2b.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "grip", pos = Vector(6.35, -0.019, -3.332), angle = Angle(2.172, -88.348, 14.104), size = Vector(0.011, 0.018, 0.011), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} },
		["sight2"] = { type = "Model", model = "models/phxtended/bar1x.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "grip", pos = Vector(7.089, 0.159, -3.135), angle = Angle(12.005, 1.48, -2.259), size = Vector(0.009, 0.009, 0.009), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} },
		["trigger"] = { type = "Model", model = "models/mechanics/robotics/claw.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "grip", pos = Vector(2.351, 0.071, -0.568), angle = Angle(67.69, -178.981, 91.728), size = Vector(0.032, 0.032, 0.032), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/gibs/metalgibs/metal_gibs", skin = 0, bodygroup = {} },
		["trigger frame"] = { type = "Model", model = "models/mechanics/robotics/claw2.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "grip", pos = Vector(1.814, 0.03, -0.751), angle = Angle(5.081, 1.901, 87.147), size = Vector(0.033, 0.034, 0.093), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/gibs/metalgibs/metal_gibs", skin = 0, bodygroup = {} }
		}

end

SWEP.Base = "weapon_zs_base"

SWEP.HoldType = "shotgun"

SWEP.ShowViewModel = false
SWEP.ShowWorldModel = false
SWEP.ViewModel = "models/weapons/cstrike/c_shot_m3super90.mdl"
SWEP.WorldModel = "models/weapons/w_shot_m3super90.mdl"
SWEP.UseHands = true
SWEP.ShowViewModel = false

SWEP.ReloadSound = Sound("buttons/lever7.wav")
SWEP.Primary.Sound = Sound("weapons/grenade_launcher1.wav", 70, 90)
SWEP.Primary.Damage = 63
SWEP.Primary.NumShots = 0
SWEP.Primary.Delay = 0.5
SWEP.Primary.Automatic = false

SWEP.Primary.ClipSize = 4
SWEP.Primary.Ammo = "grenlauncher"
GAMEMODE:SetupDefaultClip(SWEP.Primary)

SWEP.ConeMax = 0
SWEP.ConeMin = 0

SWEP.Recoil = 1.65
SWEP.IronSightsPos = Vector(-9.08, 0, -1.28)
SWEP.IronSightsAng = Vector(0, 0, 0)
SWEP.ReloadSpeed = 1.1
SWEP.WalkSpeed = SPEED_SLOWER

SWEP.BarrelAligned = true
SWEP.LastBarrelAngle = 0
SWEP.BarrelAngleTarget = 0
SWEP.LastShotTime = 0
SWEP.DuringReload = false

SWEP.m_NotBulletWeapon = true

function SWEP:Deploy()
	if self.BaseClass.Deploy then
		self.BaseClass.Deploy(self)
	end
	self.BarrelAligned = true
	self.LastBarrelAngle = 0
	self.BarrelAngleTarget = 0
	self.LastShotTime = 0
	self.DuringReload = false
	return true
end

function SWEP:ShootBullets(dmg, numbul, cone)
	local owner = self:GetOwner()
	--owner:MuzzleFlash()
	if SERVER then
		self:SetConeAndFire()
	end
	self:DoRecoil()
	self:SendWeaponAnimation()
	owner:DoAttackEvent()
	self.BarrelAligned = false
	self.LastShotTime = CurTime()
	self.BarrelAngleTarget = self.LastBarrelAngle + 60
	self:SetNextReload(CurTime() + 1)
	if SERVER then
		local ent = ents.Create("projectile_launchedgrenade_q1")
		if ent:IsValid() then
			ent.Damage = self.Primary.Damage
			ent.Splash = 0.85
			ent:SetPos(owner:GetShootPos())
			ent:SetAngles(owner:GetAimVector():Angle())
			ent:SetOwner(owner)
			ent:Spawn()
			ent.GrenadeDamage = dmg
			local phys = ent:GetPhysicsObject()
			if phys:IsValid() then
				phys:Wake()
				phys:SetVelocityInstantaneous(self:GetOwner():GetAimVector() * 1000)
			end
		end
	end
end


SWEP.reloadtimer = 0
SWEP.nextreloadfinish = 0
SWEP.ReloadDelay = 0.35

function SWEP:Reload()
	if self.reloading then return end

	if self:GetNextReload() <= CurTime() and self:Clip1() < self.Primary.ClipSize and 0 < self:Ammo1() then
		self:SetNextPrimaryFire(CurTime() + self.Primary.Delay)
		self.reloading = true
		self.reloadtimer = CurTime() + self.ReloadDelay
		self:SendWeaponAnim(ACT_VM_IDLE_TO_LOWERED)
		self:GetOwner():SetAnimation( PLAYER_RELOAD )
		self:GetOwner():DoReloadEvent()
		self:SetNextReload(CurTime() + self:SequenceDuration())
	end
	self:SetIronsights(false)
end
function SWEP:Think()
	if self.reloading and self.reloadtimer < CurTime() then
		self.reloadtimer = CurTime() + self.ReloadDelay
		self:SendWeaponAnim(ACT_VM_RELOAD)

		self:GetOwner():RemoveAmmo(1, self.Primary.Ammo, false)
		self:SetClip1(self:Clip1() + 1)
		self:EmitSound("Weapon_Shotgun.Reload")

		if self.Primary.ClipSize <= self:Clip1() or self:Ammo1() <= 0 or not self:GetOwner():KeyDown(IN_RELOAD) then
			self.nextreloadfinish = CurTime() + self.ReloadDelay
			self.reloading = false
			self:SetNextPrimaryFire(CurTime() + self.Primary.Delay)
		end
	end

	local nextreloadfinish = self.nextreloadfinish
	if nextreloadfinish ~= 0 and nextreloadfinish < CurTime() then
		self:SendWeaponAnimation()
		self:EmitSound("Weapon_Shotgun.Special1")
		self.nextreloadfinish = 0
	end

	if self.IdleAnimation and self.IdleAnimation <= CurTime() then
		self.IdleAnimation = nil
		self:SendWeaponAnim(ACT_VM_IDLE)
	end
end
function SWEP:SendReloadAnimation()
	self:SendWeaponAnim(ACT_VM_RELOAD)
	self.DuringReload = true
	self.BarrelAligned = false
	self.LastShotTime = CurTime()
	self.BarrelAngleTarget = 0
	self.LastBarrelAngle = 0
	if self.BaseClass.SendReloadAnimation then
		self.BaseClass.SendReloadAnimation(self)
	end
end

function SWEP:EmitReloadFinishSound()
	self.DuringReload = false
end