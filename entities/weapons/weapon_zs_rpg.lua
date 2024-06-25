AddCSLuaFile()

if CLIENT then
	SWEP.TranslateName = "weapon_rpg_name"
	SWEP.TranslateDesc = "weapon_rpg_desc"
	SWEP.Slot = 3
	SWEP.SlotPos = 0
	SWEP.ViewModelFOV = 50
	SWEP.ViewModelFlip = false

	SWEP.ViewModelFOV = 70
	SWEP.ViewModelFlip = false

	SWEP.HUD3DBone = "ValveBiped.Bip01_L_Hand"
	SWEP.HUD3DPos = Vector(-3, -5, 2)
	SWEP.HUD3DAng = Angle(0, 270, 90)
	SWEP.HUD3DScale = 0.03
	
	SWEP.SCKMaterials = {}
	
	SWEP.IronSightsPos = Vector(-0.72, 0, -5.44)
	SWEP.IronSightsAng = Vector(0, 0, 0)
	
	SWEP.WElements = {
		["barrel"] = { type = "Model", model = "models/props_phx/gears/bevel12.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "base", pos = Vector(5.92, 0.052, -0.051), angle = Angle(-39.853, -88.669, -90.914), size = Vector(0.217, 0.217, 0.217), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/gibs/metalgibs/metal_gibs", skin = 0, bodygroup = {} },
		["base"] = { type = "Model", model = "models/mechanics/robotics/a2.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(2.282, 1.279, -2.566), angle = Angle(-8.286, -0.207, 73.041), size = Vector(0.259, 0.259, 0.259), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/gibs/metalgibs/metal_gibs", skin = 0, bodygroup = {} },
		["base1"] = { type = "Model", model = "models/hunter/misc/cone1x1.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "base", pos = Vector(-7.237, -0.023, -0.02), angle = Angle(-10.98, -88.353, -91.476), size = Vector(0.086, 0.086, 0.086), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/gibs/metalgibs/metal_gibs", skin = 0, bodygroup = {} },
		["base2"] = { type = "Model", model = "models/mechanics/robotics/a2.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "base", pos = Vector(-15.437, -0.036, 0.014), angle = Angle(0.055, 179.73801, -30.284), size = Vector(0.341, 0.341, 0.341), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/gibs/metalgibs/metal_gibs", skin = 0, bodygroup = {} },
		["grip"] = { type = "Model", model = "models/props_phx/misc/iron_beam1.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "base", pos = Vector(1.131, -5.227, 1.503), angle = Angle(-14.922, -91.313, 90.245), size = Vector(0.101, 0.147, 0.25), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/props/CS_militia/roofbeams01", skin = 0, bodygroup = {} },
		["grip2"] = { type = "Model", model = "models/props_phx/misc/iron_beam1.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "base", pos = Vector(-14.25, -2.923, -1.309), angle = Angle(-12.806, -91.34, 6.486), size = Vector(0.103, 0.153, 0.104), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/props/CS_militia/roofbeams01", skin = 0, bodygroup = {} },
		["rocket"] = { type = "Model", model = "models/props_phx/mk-82.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "base", pos = Vector(14.128, 0.516, -2.007), angle = Angle(1.583, -2.068, -2.473), size = Vector(0.113, 0.189, 0.218), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} },
		["sight"] = { type = "Model", model = "models/mechanics/articulating/arm_base_b.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "base", pos = Vector(5.225, 0.232, -1.173), angle = Angle(-74.828, 95.048, -169.02699), size = Vector(0.064, 0.072, 0.063), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/gibs/metalgibs/metal_gibs", skin = 0, bodygroup = {} },
		["sight1"] = { type = "Model", model = "models/mechanics/articulating/arm2x20d.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "base", pos = Vector(-7.708, 1.618, -0.25), angle = Angle(74.908, -84.407, 61.076), size = Vector(0.022, 0.022, 0.022), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/gibs/metalgibs/metal_gibs", skin = 0, bodygroup = {} },
		["trigger"] = { type = "Model", model = "models/mechanics/robotics/claw.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "base", pos = Vector(2.164, -1.569, 0.519), angle = Angle(-3.854, -175.778, -12.016), size = Vector(0.032, 0.032, 0.032), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/gibs/metalgibs/metal_gibs", skin = 0, bodygroup = {} },
		["trigger base"] = { type = "Model", model = "models/props_phx/misc/iron_beam1.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "base", pos = Vector(-0.251, -3.325, 0.916), angle = Angle(0.588, -0.056, 104.912), size = Vector(0.07, 0.22, 0.308), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/gibs/metalgibs/metal_gibs", skin = 0, bodygroup = {} },
		["trigger frame"] = { type = "Model", model = "models/props_phx/construct/metal_wire1x1.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "base", pos = Vector(2.107, -1.741, 0.37), angle = Angle(-13.063, -90.209, 0.427), size = Vector(0.054, 0.054, 0.054), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/gibs/metalgibs/metal_gibs", skin = 0, bodygroup = {} },
		["tube"] = { type = "Model", model = "models/hunter/misc/cone2x2.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "base", pos = Vector(-44.587, 0.252, 0.4), angle = Angle(-37.464, -87.663, -88.972), size = Vector(0.08, 0.08, 0.08), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/gibs/metalgibs/metal_gibs", skin = 0, bodygroup = {} },
		["woodbase"] = { type = "Model", model = "models/xqm/cylinderx1.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "base", pos = Vector(-28.74, -0.013, 0.24), angle = Angle(-1.683, 0.351, -3.474), size = Vector(0.879, 0.392, 0.417), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/props/CS_militia/roofbeams01", skin = 0, bodygroup = {} },
		["woodbase1"] = { type = "Model", model = "models/xqm/cylinderx2medium.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "base", pos = Vector(-34.599, -0.021, 0.331), angle = Angle(-1.361, 2.077, -1.168), size = Vector(0.162, 0.128, 0.139), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/props/CS_militia/roofbeams01", skin = 0, bodygroup = {} }
	}
	

end
SWEP.VElements = {
	["barrel"] = { type = "Model", model = "models/props_phx/gears/bevel12.mdl", bone = "ValveBiped.Bip01_L_Hand", rel = "base", pos = Vector(5.92044, 0.05203, -0.05087), angle = Angle(-39.8532, -88.66915, -90.91409), size = Vector(0.217, 0.217, 0.217), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/gibs/metalgibs/metal_gibs", skin = 0, bodygroup = {} },
	["base"] = { type = "Model", model = "models/mechanics/robotics/a2.mdl", bone = "ValveBiped.Bip01_L_Hand", rel = "", pos = Vector(4.293, 1.753, 5.108), angle = Angle(-6.099, -0.586, -104.975), size = Vector(0.259, 0.259, 0.259), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/gibs/metalgibs/metal_gibs", skin = 0, bodygroup = {} },
	["base1"] = { type = "Model", model = "models/hunter/misc/cone1x1.mdl", bone = "ValveBiped.Bip01_L_Hand", rel = "base", pos = Vector(-7.23724, -0.023, -0.02032), angle = Angle(-10.98007, -88.35275, -91.47644), size = Vector(0.086, 0.086, 0.086), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/gibs/metalgibs/metal_gibs", skin = 0, bodygroup = {} },
	["base2"] = { type = "Model", model = "models/mechanics/robotics/a2.mdl", bone = "ValveBiped.Bip01_L_Hand", rel = "base", pos = Vector(-15.43716, -0.036, 0.0137), angle = Angle(0.05453, 179.73822, -30.28406), size = Vector(0.341, 0.341, 0.341), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/gibs/metalgibs/metal_gibs", skin = 0, bodygroup = {} },
	["grip"] = { type = "Model", model = "models/props_phx/misc/iron_beam1.mdl", bone = "ValveBiped.Bip01_L_Hand", rel = "base", pos = Vector(1.131, -5.22694, 1.5029), angle = Angle(-14.92198, -91.31282, 90.24506), size = Vector(0.101, 0.147, 0.25), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/props/CS_militia/roofbeams01", skin = 0, bodygroup = {} },
	["grip2"] = { type = "Model", model = "models/props_phx/misc/iron_beam1.mdl", bone = "ValveBiped.Bip01_L_Hand", rel = "base", pos = Vector(-14.24968, -2.92255, -1.30902), angle = Angle(-12.80624, -91.33961, 6.48613), size = Vector(0.103, 0.153, 0.104), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/props/CS_militia/roofbeams01", skin = 0, bodygroup = {} },
	["rocket"] = { type = "Model", model = "models/props_phx/mk-82.mdl", bone = "ValveBiped.Bip01_L_Hand", rel = "base", pos = Vector(14.1282, 0.51584, -2.00679), angle = Angle(1.58307, -2.0683, -2.4729), size = Vector(0.113, 0.189, 0.218), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} },
	["sight"] = { type = "Model", model = "models/mechanics/articulating/arm_base_b.mdl", bone = "ValveBiped.Bip01_L_Hand", rel = "base", pos = Vector(5.22485, 0.23182, -1.17313), angle = Angle(-74.82785, 95.04766, -169.02675), size = Vector(0.064, 0.072, 0.063), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/gibs/metalgibs/metal_gibs", skin = 0, bodygroup = {} },
	["sight1"] = { type = "Model", model = "models/mechanics/articulating/arm2x20d.mdl", bone = "ValveBiped.Bip01_L_Hand", rel = "base", pos = Vector(-7.70772, 1.61761, -0.25012), angle = Angle(74.90768, -84.40726, 61.07573), size = Vector(0.022, 0.022, 0.022), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/gibs/metalgibs/metal_gibs", skin = 0, bodygroup = {} },
	["trigger"] = { type = "Model", model = "models/mechanics/robotics/claw.mdl", bone = "ValveBiped.Bip01_L_Hand", rel = "base", pos = Vector(2.16365, -1.5686, 0.51918), angle = Angle(-3.85353, -175.77769, -12.01562), size = Vector(0.032, 0.032, 0.032), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/gibs/metalgibs/metal_gibs", skin = 0, bodygroup = {} },
	["trigger base"] = { type = "Model", model = "models/props_phx/misc/iron_beam1.mdl", bone = "ValveBiped.Bip01_L_Hand", rel = "base", pos = Vector(-0.25131, -3.32454, 0.91585), angle = Angle(0.5883, -0.0556, 104.91226), size = Vector(0.07, 0.22, 0.308), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/gibs/metalgibs/metal_gibs", skin = 0, bodygroup = {} },
	["trigger frame"] = { type = "Model", model = "models/props_phx/construct/metal_wire1x1.mdl", bone = "ValveBiped.Bip01_L_Hand", rel = "base", pos = Vector(2.10677, -1.74076, 0.36987), angle = Angle(-13.06316, -90.20947, 0.42652), size = Vector(0.054, 0.054, 0.054), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/gibs/metalgibs/metal_gibs", skin = 0, bodygroup = {} },
	["tube"] = { type = "Model", model = "models/hunter/misc/cone2x2.mdl", bone = "ValveBiped.Bip01_L_Hand", rel = "base", pos = Vector(-44.58707, 0.25153, 0.40039), angle = Angle(-37.46412, -87.66288, -88.97244), size = Vector(0.08, 0.08, 0.08), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/gibs/metalgibs/metal_gibs", skin = 0, bodygroup = {} },
	["woodbase"] = { type = "Model", model = "models/xqm/cylinderx1.mdl", bone = "ValveBiped.Bip01_L_Hand", rel = "base", pos = Vector(-28.73953, -0.01325, 0.2402), angle = Angle(-1.68308, 0.35062, -3.47404), size = Vector(0.879, 0.392, 0.417), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/props/CS_militia/roofbeams01", skin = 0, bodygroup = {} },
	["woodbase1"] = { type = "Model", model = "models/xqm/cylinderx2medium.mdl", bone = "ValveBiped.Bip01_L_Hand", rel = "base", pos = Vector(-34.5986, -0.02087, 0.33064), angle = Angle(-1.36142, 2.07728, -1.16805), size = Vector(0.162, 0.128, 0.139), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/props/CS_militia/roofbeams01", skin = 0, bodygroup = {} }
}


SWEP.Base = "weapon_zs_base"

SWEP.HoldType = "rpg"

SWEP.ShowViewModel = false
SWEP.ShowWorldModel = false
SWEP.ViewModel = "models/weapons/c_rpg.mdl"
SWEP.WorldModel = "models/weapons/w_rocket_launcher.mdl"
SWEP.UseHands = true
SWEP.ShowViewModel = false

SWEP.ReloadSound = Sound("buttons/lever7.wav")
SWEP.Primary.Sound = Sound("weapons/grenade_launcher1.wav", 70, 90)
SWEP.Primary.Damage = 67
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
SWEP.ReloadSpeed = 0.8
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
	self.VElements['rocket'].pos = Vector(2020,2020,2200)
	if SERVER then
		local ent = ents.Create("projectile_rl")
		if ent:IsValid() then
			ent.ProjDamage = self.Primary.Damage
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
	self.VElements['rocket'].pos =  Vector(14.1282, 0.51584, -2.00679)
end

function SWEP:EmitReloadFinishSound()
	self.DuringReload = false
end