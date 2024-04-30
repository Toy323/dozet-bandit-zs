AddCSLuaFile()

if CLIENT then
	SWEP.TranslateName = "weapon_mini_name"
	SWEP.TranslateDesc = "weapon_mini_desc"
	SWEP.Slot = 3
	SWEP.SlotPos = 0
	SWEP.ViewModelFOV = 50
	SWEP.ViewModelFlip = false

	SWEP.ViewModelFOV = 70
	SWEP.ViewModelFlip = false
	SWEP.ViewModelBoneMods = {
		["ValveBiped.Bip01_Spine4"] = { scale = Vector(1, 1, 1), pos = Vector(0.113, -2.806, 0), angle = Angle(0, 0, 0) },
		["v_weapon.p228_Parent"] = { scale = Vector(1, 1, 1), pos = Vector(0, -2.455, 0), angle = Angle(0, 0, 0) }
	}
	
	SWEP.SCKMaterials = {}
	
	SWEP.IronSightsPos = Vector(-4.08, 0, 0.72)
	SWEP.IronSightsAng = Vector(0, 0, 0)
	
	SWEP.VElements = {
		["barrel"] = { type = "Model", model = "models/hunter/tubes/tube1x1x2.mdl", bone = "v_weapon.p228_Parent", rel = "base", pos = Vector(4.86102, 0.31771, 0.05497), angle = Angle(-0.00389, -92.78891, 91.28273), size = Vector(0.036, 0.036, 0.036), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/gibs/metalgibs/metal_gibs", skin = 0, bodygroup = {} },
		["base"] = { type = "Model", model = "models/hunter/blocks/cube05x1x05.mdl", bone = "v_weapon.p228_Parent", rel = "", pos = Vector(0.59, -3.36, 0.678), angle = Angle(-98.296, 89.999, -90.004), size = Vector(0.086, 0.05, 0.048), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/gibs/metalgibs/metal_gibs", skin = 0, bodygroup = {} },
		["base1"] = { type = "Model", model = "models/hunter/tubes/tube4x4x2to2x2.mdl", bone = "v_weapon.p228_Parent", rel = "base", pos = Vector(1.08305, 0.13367, -0.03401), angle = Angle(1.08276, -92.61984, 93.2197), size = Vector(0.009, 0.009, 0.009), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/gibs/metalgibs/metal_gibs", skin = 0, bodygroup = {} },
		["granade"] = { type = "Model", model = "models/Items/AR2_Grenade.mdl", bone = "v_weapon.p228_Parent", rel = "base", pos = Vector(3.0303, -0.01797, -0.32901), angle = Angle(4.77874, -5.42432, 27.53709), size = Vector(0.482, 0.482, 0.482), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} },
		["grip"] = { type = "Model", model = "models/props_phx/misc/iron_beam1.mdl", bone = "v_weapon.p228_Parent", rel = "base", pos = Vector(-0.642, -2.789, -0.566), angle = Angle(-0.00399, -63.27596, -0.00404), size = Vector(0.104, 0.215, 0.116), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/props/CS_militia/roofbeams01", skin = 0, bodygroup = {} },
		["plank"] = { type = "Model", model = "models/Mechanics/gears2/pinion_20t2.mdl", bone = "v_weapon.p228_Parent", rel = "base", pos = Vector(2.98838, 1.37154, 0.04592), angle = Angle(0.16809, -2.17729, -0.196), size = Vector(0.049, 0.049, 0.049), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} },
		["trigger"] = { type = "Model", model = "models/mechanics/robotics/claw2.mdl", bone = "v_weapon.p228_Parent", rel = "base", pos = Vector(1.59488, -1.78252, 0.16109), angle = Angle(-1.61612, -87.35255, 177.58885), size = Vector(0.036, 0.036, 0.036), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/gibs/metalgibs/metal_gibs", skin = 0, bodygroup = {} },
		["trigger1"] = { type = "Model", model = "models/mechanics/robotics/claw.mdl", bone = "v_weapon.p228_Trigger", rel = "", pos = Vector(0.327, 0.654, 0.037), angle = Angle(88.066, 89.999, -90.004), size = Vector(0.025, 0.025, 0.025), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/gibs/metalgibs/metal_gibs", skin = 0, bodygroup = {} },
		["underbarrel"] = { type = "Model", model = "models/hunter/blocks/cube075x2x025.mdl", bone = "v_weapon.p228_Parent", rel = "base", pos = Vector(2.82049, -0.62356, 0.12803), angle = Angle(-89.21719, -34.128, 58.01675), size = Vector(0.032, 0.045, 0.06), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/gibs/metalgibs/metal_gibs", skin = 0, bodygroup = {} },
		["underbarrel+"] = { type = "Model", model = "models/hunter/blocks/cube075x2x025.mdl", bone = "v_weapon.p228_Parent", rel = "base", pos = Vector(2.90393, 1.08435, 0.03994), angle = Angle(-89.21725, -34.12852, 58.01624), size = Vector(0.02, 0.041, 0.036), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/gibs/metalgibs/metal_gibs", skin = 0, bodygroup = {} }
	}
	
	SWEP.WElements = {
		["barrel"] = { type = "Model", model = "models/hunter/tubes/tube1x1x2.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "base", pos = Vector(4.86104, 0.31802, 0.05502), angle = Angle(-0.004, -92.78901, 91.283), size = Vector(0.036, 0.036, 0.036), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/gibs/metalgibs/metal_gibs", skin = 0, bodygroup = {} },
		["base"] = { type = "Model", model = "models/hunter/blocks/cube05x1x05.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(3.735, 1.166, -2.547), angle = Angle(-180, 173.66299, -90.004), size = Vector(0.086, 0.05, 0.048), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/gibs/metalgibs/metal_gibs", skin = 0, bodygroup = {} },
		["base1"] = { type = "Model", model = "models/hunter/tubes/tube4x4x2to2x2.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "base", pos = Vector(1.08302, 0.13403, -0.034), angle = Angle(1.083, -92.62001, 93.22002), size = Vector(0.009, 0.009, 0.009), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/gibs/metalgibs/metal_gibs", skin = 0, bodygroup = {} },
		["granade"] = { type = "Model", model = "models/Items/AR2_Grenade.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "base", pos = Vector(3.03004, -0.01801, -0.32895), angle = Angle(4.779, -5.42399, 27.53702), size = Vector(0.482, 0.482, 0.482), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} },
		["grip"] = { type = "Model", model = "models/props_phx/misc/iron_beam1.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "base", pos = Vector(-0.64195, -2.789, -0.56598), angle = Angle(-0.00401, -63.27601, -0.00399), size = Vector(0.104, 0.215, 0.116), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/props/CS_militia/roofbeams01", skin = 0, bodygroup = {} },
		["plank"] = { type = "Model", model = "models/Mechanics/gears2/pinion_20t2.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "base", pos = Vector(2.98799, 1.37204, 0.04602), angle = Angle(0.16799, -2.17699, -0.196), size = Vector(0.049, 0.049, 0.049), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} },
		["trigger"] = { type = "Model", model = "models/mechanics/robotics/claw2.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "base", pos = Vector(1.622, -1.701, 0.154), angle = Angle(-1.616, -87.353, 177.589), size = Vector(0.036, 0.036, 0.036), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/gibs/metalgibs/metal_gibs", skin = 0, bodygroup = {} },
		["trigger1"] = { type = "Model", model = "models/mechanics/robotics/claw.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "base", pos = Vector(1.816, -1.435, -0.044), angle = Angle(0, 173.638, -0.008), size = Vector(0.025, 0.025, 0.025), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/gibs/metalgibs/metal_gibs", skin = 0, bodygroup = {} },
		["underbarrel"] = { type = "Model", model = "models/hunter/blocks/cube075x2x025.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "base", pos = Vector(2.81999, -0.62399, 0.12799), angle = Angle(-89.217, -34.12679, 58.01825), size = Vector(0.032, 0.045, 0.06), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/gibs/metalgibs/metal_gibs", skin = 0, bodygroup = {} },
		["underbarrel+"] = { type = "Model", model = "models/hunter/blocks/cube075x2x025.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "base", pos = Vector(2.90404, 1.08405, 0.04001), angle = Angle(-89.217, -34.12888, 58.01613), size = Vector(0.02, 0.041, 0.036), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/gibs/metalgibs/metal_gibs", skin = 0, bodygroup = {} }
	}
	

end

SWEP.Base = "weapon_zs_base"

SWEP.HoldType = "pistol"

SWEP.ShowViewModel = false
SWEP.ShowWorldModel = false
SWEP.ViewModel = "models/weapons/cstrike/c_pist_p228.mdl"
SWEP.WorldModel = "models/weapons/w_pist_p228.mdl"
SWEP.UseHands = true
SWEP.ShowViewModel = false

SWEP.ReloadSound = Sound("buttons/lever7.wav")
SWEP.Primary.Sound = Sound("weapons/grenade_launcher1.wav", 70, 90)
SWEP.Primary.Damage = 45
SWEP.Primary.NumShots = 0
SWEP.Primary.Delay = 0.5
SWEP.Primary.Automatic = false

SWEP.Primary.ClipSize = 1
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