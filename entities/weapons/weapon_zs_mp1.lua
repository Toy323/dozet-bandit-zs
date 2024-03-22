AddCSLuaFile()

if CLIENT then
	SWEP.TranslateName = "weapon_mp1_name"
	SWEP.TranslateDesc = "weapon_mp1_desc"
	SWEP.Slot = 2
	SWEP.SlotPos = 0

	SWEP.ViewModelFlip = false
	SWEP.ViewModelFOV = 50

	SWEP.ViewModelBoneMods = {
		["ValveBiped.Bip01_Spine4"] = { scale = Vector(1.011, 1.011, 1.02), pos = Vector(0.533, -0.296, 5.69), angle = Angle(-2.549, 20.771, -0.116) }
	}
	
	SWEP.SCKMaterials = {}
	
	SWEP.HUD3DBone = "v_weapon.MP5_Parent"
	SWEP.HUD3DPos = Vector(-2, -5, -6)
	SWEP.HUD3DAng = Angle(0, 0, 0)
	SWEP.HUD3DScale = 0.015

	SWEP.VElements = {
		["barrel"] = { type = "Model", model = "models/xqm/cylinderx2.mdl", bone = "v_weapon.MP5_Parent", rel = "grip", pos = Vector(5.497, 0.163, -0.051), angle = Angle(-0.006, 0.105, -0.566), size = Vector(0.094, 0.083, 0.103), color = Color(109, 109, 109, 255), surpresslightning = false, bonemerge = false, material = "models/XQM/Rails/gumball_1", skin = 0, bodygroup = {} },
		["barrel g"] = { type = "Model", model = "models/Mechanics/gears2/gear_24t3.mdl", bone = "v_weapon.MP5_Parent", rel = "granade launcher", pos = Vector(1.63531, 0.01495, 0.04749), angle = Angle(-36.95026, 92.28448, 90.28365), size = Vector(0.046, 0.046, 0.046), color = Color(72, 72, 72, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} },
		["button"] = { type = "Model", model = "models/mechanics/roboticslarge/claw2l.mdl", bone = "v_weapon.MP5_Parent", rel = "granade launcher", pos = Vector(-6.872, 0.031, -0.05), angle = Angle(-83.535, 43.976, 135.92799), size = Vector(0.013, 0.013, 0.013), color = Color(145, 145, 145, 255), surpresslightning = false, bonemerge = false, material = "models/XQM/Rails/gumball_1", skin = 0, bodygroup = {} },
		["button1"] = { type = "Model", model = "models/mechanics/robotics/claw.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "granade launcher", pos = Vector(-6.985, -0.076, -0.557), angle = Angle(-0.08, 178.466, -91.632), size = Vector(0.026, 0.026, 0.026), color = Color(145, 145, 145, 255), surpresslightning = false, bonemerge = false, material = "models/XQM/Rails/gumball_1", skin = 0, bodygroup = {} },
		["granade launcher"] = { type = "Model", model = "models/xqm/cylinderx2.mdl", bone = "v_weapon.MP5_Parent", rel = "", pos = Vector(-0.104, -1.57498, -15.95294), angle = Angle(-88.80001, -71.86935, 14.21659), size = Vector(0.343, 0.236, 0.217), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} },
		["grip"] = { type = "Model", model = "models/mechanics/robotics/a2.mdl", bone = "v_weapon.MP5_Parent", rel = "", pos = Vector(0.156, -3.738, -12.161), angle = Angle(-89.754, -90.87, 89.841), size = Vector(0.169, 0.204, 0.227), color = Color(72, 72, 72, 255), surpresslightning = false, bonemerge = false, material = "models/XQM//Deg360", skin = 0, bodygroup = {} },
		["grip g"] = { type = "Model", model = "models/props_phx/construct/metal_wire_angle360x2.mdl", bone = "v_weapon.MP5_Parent", rel = "granade launcher", pos = Vector(-6.158, -0.009, -0.059), angle = Angle(-87.875, -77.983, -77.826), size = Vector(0.027, 0.031, 0.086), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} }
	}
	
	SWEP.WElements = {
		["barrel"] = { type = "Model", model = "models/xqm/cylinderx2.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "grip", pos = Vector(6.135, 0.006, -0.051), angle = Angle(-0.006, 0.105, -0.566), size = Vector(0.094, 0.109, 0.103), color = Color(109, 109, 109, 255), surpresslightning = false, bonemerge = false, material = "models/XQM/Rails/gumball_1", skin = 0, bodygroup = {} },
		["barrel g"] = { type = "Model", model = "models/Mechanics/gears2/gear_24t3.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "granade launcher", pos = Vector(1.635, 0.015, 0.047), angle = Angle(-36.95, 92.284, 90.284), size = Vector(0.046, 0.046, 0.046), color = Color(72, 72, 72, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} },
		["button"] = { type = "Model", model = "models/mechanics/roboticslarge/claw2l.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "granade launcher", pos = Vector(-6.872, 0.031, -0.05), angle = Angle(-83.535, 43.976, 135.92799), size = Vector(0.013, 0.013, 0.013), color = Color(145, 145, 145, 255), surpresslightning = false, bonemerge = false, material = "models/XQM/Rails/gumball_1", skin = 0, bodygroup = {} },
		["button1"] = { type = "Model", model = "models/mechanics/robotics/claw.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "granade launcher", pos = Vector(-6.985, -0.076, -0.557), angle = Angle(-0.08, 178.466, -91.632), size = Vector(0.026, 0.026, 0.026), color = Color(145, 145, 145, 255), surpresslightning = false, bonemerge = false, material = "models/XQM/Rails/gumball_1", skin = 0, bodygroup = {} },
		["granade launcher"] = { type = "Model", model = "models/xqm/cylinderx2.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(23.196, 1.298, -6.54), angle = Angle(-168.914, -180, 165.132), size = Vector(0.343, 0.236, 0.217), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} },
		["grip"] = { type = "Model", model = "models/mechanics/robotics/a2.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(19.023, 1.268, -8.422), angle = Angle(-8.949, -2.057, 65.681), size = Vector(0.219, 0.219, 0.219), color = Color(72, 72, 72, 255), surpresslightning = false, bonemerge = false, material = "models/XQM//Deg360", skin = 0, bodygroup = {} },
		["grip g"] = { type = "Model", model = "models/props_phx/construct/metal_wire_angle360x2.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "granade launcher", pos = Vector(-6.198, -0.089, -0.1), angle = Angle(-88.053, -78.215, -77.826), size = Vector(0.027, 0.031, 0.086), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} }
	}
end

SWEP.Base = "weapon_zs_base"

SWEP.HoldType = "shotgun"
SWEP.IronSightsHoldType = "smg"
SWEP.ViewModel = "models/weapons/cstrike/c_smg_mp5.mdl"
SWEP.WorldModel = "models/weapons/w_smg_mp5.mdl"
SWEP.UseHands = true

SWEP.Primary.Sound = Sound("Weapon_MP5Navy.Single")
SWEP.Primary.Damage = 15
SWEP.Primary.NumShots = 1
SWEP.Primary.Delay = 0.11

SWEP.Primary.ClipSize = 30
SWEP.Primary.Automatic = true
SWEP.Primary.Ammo = "smg1"
GAMEMODE:SetupDefaultClip(SWEP.Primary)

SWEP.Primary.Gesture = ACT_HL2MP_GESTURE_RANGE_ATTACK_SHOTGUN
SWEP.ReloadGesture = ACT_HL2MP_GESTURE_RELOAD_SMG1

SWEP.ConeMax = 0.09
SWEP.ConeMin = 0.01
SWEP.MovingConeOffset = -0.01

GAMEMODE:SetupAimDefaults(SWEP,SWEP.Primary)

SWEP.Recoil = 0.3
SWEP.WalkSpeed = SPEED_SLOW

SWEP.IronSightsAng = Vector(0.8, 0, 0)
SWEP.IronSightsPos = Vector(-5.33, 7, 1.8)
SWEP.Ticked = 0
function SWEP:SetupDataTables()
	self:NetworkVar( "Float" , 9 , "Damages" )
	if self.BaseClass.SetupDataTables then
		self.BaseClass.SetupDataTables(self)
	end
end
function SWEP:Initialize()
	self:SetDamages(0)
	self.BaseClass.Initialize(self)
end
local math_random = math.random
function SWEP:SecondaryAttack()
	if self:GetDamages() >= 250 then
		self:SetNextPrimaryFire(CurTime()+1)
		local owner = self:GetOwner()
		self:SendWeaponAnimation()
		owner:DoAttackEvent()
		local aimvec = owner:GetAimVector()
		self:EmitSound("weapons/grenade_launcher1.wav", 70, math_random(140,150), 60, CHAN_WEAPON)
		if SERVER then
			local ent = ents.Create('projectile_mp1_grenade')
			if ent:IsValid() then
				ent:SetPos(owner:GetShootPos())
				ent:SetAngles(aimvec:Angle())
				ent:SetOwner(owner)
				ent:Spawn()
				ent.Damage = self.Primary.Damage*3
				local phys = ent:GetPhysicsObject()
				if phys:IsValid() then
					phys:Wake()
					phys:SetVelocity(aimvec *2300)
				end
			end
		end
		self:SetDamages(self:GetDamages()-250)
	end
end
function SWEP.BulletCallback(attacker, tr, dmginfo)
	if CLIENT or !tr.Entity or !tr.Entity:IsPlayer() then return end
	local self = attacker:GetActiveWeapon()
	self:SetDamages(math.min(501,dmginfo:GetDamage()+self:GetDamages()))
end
if CLIENT then
	local colBG = Color(16, 16, 16, 90)
local colRed = Color(220, 0, 0, 230)
local colYellow = Color(220, 220, 0, 230)
local colWhite = Color(220, 220, 220, 230)
	local function drawers(self,clip, spare, maxclip, wid, hei, x, y, requiredclip, noclip, onlyclip,lowthreshold, is3d, pos, ang, hud3dscale)
				cam.Start3D2D(pos, ang, (hud3dscale and hud3dscale or 0.01) / 2)
				draw.RoundedBoxEx(16, x, y, wid, hei, colBG, true, false, true, false)
				local font = "ZS3D2DFont"
				local grenades = math.Round(self:GetDamages()/250,1)
				draw.SimpleTextBlurry(grenades,font, x + wid * 0.5, y + hei * 0.5, grenades == 0 and colRed or colWhite, TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
				cam.End3D2D()
	end
	function SWEP:Draw3DHUD(vm, pos, ang)
		local wid, hei = 180, 200
		local x, y = wid * -0.6, hei * -0.5
		local clip = self:Clip1()
		local spare = self:Ammo1()
		local maxclip = self.Primary.ClipSize
		draw.DrawAmmoHud(clip,spare,maxclip,wid,hei,x,y,self.RequiredClip,self.HasNoClip,self.ShowOnlyClip,self.LowAmmoThreshold,true,pos,ang,self.HUD3DScale)
		y = y + 220
		drawers(self,clip,spare,maxclip,wid,hei,x,y,self.RequiredClip,self.HasNoClip,self.ShowOnlyClip,self.LowAmmoThreshold,true,pos,ang,self.HUD3DScale)
	end
	
	
end