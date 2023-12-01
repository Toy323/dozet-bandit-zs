AddCSLuaFile()

if CLIENT then
	SWEP.TranslateName = "weapon_hooker_name"
	SWEP.TranslateDesc = "weapon_hooker_desc"
	SWEP.Slot = 3
	SWEP.SlotPos = 0

	SWEP.ViewModelFOV = 48
	SWEP.ViewModelFlip = false

	SWEP.HUD3DBone = "ValveBiped.Crossbow_base"
	SWEP.HUD3DPos = Vector(2, -233, 30)
	SWEP.HUD3DAng = Angle(180, 0, 0)
	SWEP.HUD3DScale = 0.035
	SWEP.ViewModelBoneMods = {
		["ValveBiped.bolt"] = { scale = Vector(1, 1, 1), pos = Vector(-3, 0, 0), angle = Angle(0, 0, 0) }
	}
	
	SWEP.VElements = {
		["Osnova"] = { type = "Model", model = "models/hunter/tubes/tube2x2x2.mdl", bone = "ValveBiped.Crossbow_base", rel = "", pos = Vector(-3.231, -0.906, 2.977), angle = Angle(0, 0, 0), size = Vector(0.1, 0.1, 0.2), color = Color(142, 142, 142, 255), surpresslightning = false, bonemerge = false, material = "phoenix_storms/iron_rails", skin = 0, bodygroup = {} },
		["chernoe pvo"] = { type = "Model", model = "models/props_phx/construct/metal_angle360.mdl", bone = "ValveBiped.Crossbow_base", rel = "Osnova", pos = Vector(0, 0, 8.515), angle = Angle(0, 0, 0), size = Vector(0.099, 0.099, 0.099), color = Color(53, 53, 53, 255), surpresslightning = false, bonemerge = false, material = "phoenix_storms/iron_rails", skin = 0, bodygroup = {} },
		["jopa osnovы"] = { type = "Model", model = "models/props_phx/construct/metal_dome360.mdl", bone = "ValveBiped.Crossbow_base", rel = "Osnova", pos = Vector(0.001, 0, -9.476), angle = Angle(0, 0, 180), size = Vector(0.1, 0.1, 0.1), color = Color(142, 142, 142, 255), surpresslightning = false, bonemerge = false, material = "phoenix_storms/iron_rails", skin = 0, bodygroup = {} },
		["neonoviy stvol"] = { type = "Model", model = "models/props_phx/construct/metal_wire_angle360x1.mdl", bone = "ValveBiped.Crossbow_base", rel = "Osnova", pos = Vector(0, 0, 8.939), angle = Angle(0, 0, 0), size = Vector(0.081, 0.081, 0.049), color = Color(153, 0, 0, 255), surpresslightning = true, bonemerge = false, material = "models/error/new light1", skin = 0, bodygroup = {} },
		["Конец ствола"] = { type = "Model", model = "models/props_phx/wheels/magnetic_medium.mdl", bone = "ValveBiped.Crossbow_base", rel = "Osnova", pos = Vector(0, 0, 8.787), angle = Angle(0, 0, 0), size = Vector(0.333, 0.333, 0.333), color = Color(142, 142, 142, 255), surpresslightning = false, bonemerge = false, material = "phoenix_storms/iron_rails", skin = 0, bodygroup = {} },
		["неоновая хуйня"] = { type = "Model", model = "models/xqm/CoasterTrack/special_full_corkscrew_left_2.mdl", bone = "ValveBiped.Crossbow_base", rel = "Osnova", pos = Vector(0, -0.5, 1.829), angle = Angle(-90, -90, 0), size = Vector(0.002, 0.104, 0.105), color = Color(153, 0, 0, 255), surpresslightning = true, bonemerge = false, material = "models/error/new light1", skin = 0, bodygroup = {} },
		["неоновая хуйня+"] = { type = "Model", model = "models/xqm/CoasterTrack/special_full_corkscrew_left_2.mdl", bone = "ValveBiped.Crossbow_base", rel = "Osnova", pos = Vector(0, -0.5, -7.701), angle = Angle(-90, -90, 0), size = Vector(0.002, 0.104, 0.105), color = Color(153, 0, 0, 255), surpresslightning = true, bonemerge = false, material = "models/error/new light1", skin = 0, bodygroup = {} }
	}
	
	SWEP.WElements = {
		["Osnova"] = { type = "Model", model = "models/hunter/tubes/tube2x2x2.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(13.801, 0.747, -5.04), angle = Angle(-90, 0, 0), size = Vector(0.1, 0.1, 0.2), color = Color(142, 142, 142, 255), surpresslightning = false, bonemerge = false, material = "phoenix_storms/iron_rails", skin = 0, bodygroup = {} },
		["chernoe pvo"] = { type = "Model", model = "models/props_phx/construct/metal_angle360.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "Osnova", pos = Vector(0, 0, 8.515), angle = Angle(0, 0, 0), size = Vector(0.099, 0.099, 0.099), color = Color(53, 53, 53, 255), surpresslightning = false, bonemerge = false, material = "phoenix_storms/iron_rails", skin = 0, bodygroup = {} },
		["jopa osnovы"] = { type = "Model", model = "models/props_phx/construct/metal_dome360.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "Osnova", pos = Vector(0.001, 0, -9.476), angle = Angle(0, 0, 180), size = Vector(0.1, 0.1, 0.1), color = Color(142, 142, 142, 255), surpresslightning = false, bonemerge = false, material = "phoenix_storms/iron_rails", skin = 0, bodygroup = {} },
		["neonoviy stvol"] = { type = "Model", model = "models/props_phx/construct/metal_wire_angle360x1.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "Osnova", pos = Vector(0, 0, 8.939), angle = Angle(0, 0, 0), size = Vector(0.081, 0.081, 0.049), color = Color(153, 0, 0, 255), surpresslightning = true, bonemerge = false, material = "models/error/new light1", skin = 0, bodygroup = {} },
		["Конец ствола"] = { type = "Model", model = "models/props_phx/wheels/magnetic_medium.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "Osnova", pos = Vector(0, 0, 8.787), angle = Angle(0, 0, 0), size = Vector(0.333, 0.333, 0.333), color = Color(142, 142, 142, 255), surpresslightning = false, bonemerge = false, material = "phoenix_storms/iron_rails", skin = 0, bodygroup = {} },
		["неоновая хуйня"] = { type = "Model", model = "models/xqm/CoasterTrack/special_full_corkscrew_left_2.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "Osnova", pos = Vector(0, -0.5, 1.829), angle = Angle(-90, -90, 0), size = Vector(0.002, 0.104, 0.105), color = Color(153, 0, 0, 255), surpresslightning = true, bonemerge = false, material = "models/error/new light1", skin = 0, bodygroup = {} },
		["неоновая хуйня+"] = { type = "Model", model = "models/xqm/CoasterTrack/special_full_corkscrew_left_2.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "Osnova", pos = Vector(0, -0.5, -7.701), angle = Angle(-90, -90, 0), size = Vector(0.002, 0.104, 0.105), color = Color(153, 0, 0, 255), surpresslightning = true, bonemerge = false, material = "models/error/new light1", skin = 0, bodygroup = {} }
	}
	
end
SWEP.ShowWorldModel = false
SWEP.ShowViewModel = false
SWEP.Base = "weapon_zs_base"
SWEP.HoldType = "crossbow"
SWEP.IronSightsHoldType = "rpg"
SWEP.ViewModel = "models/weapons/c_crossbow.mdl"
SWEP.WorldModel = "models/weapons/w_crossbow.mdl"

SWEP.UseHands = false

SWEP.Primary.Damage = 50
SWEP.Primary.NumShots = 1
SWEP.Primary.Delay = 0.6
SWEP.ReloadSpeed = 0.5

SWEP.Primary.ClipSize = 1
SWEP.Primary.Automatic = false
SWEP.Primary.Ammo = "none"
SWEP.Primary.DefaultClip = 1

SWEP.Primary.Gesture = ACT_HL2MP_GESTURE_RANGE_ATTACK_CROSSBOW
SWEP.ReloadGesture = ACT_HL2MP_GESTURE_RELOAD_SHOTGUN

SWEP.ConeMax = 0.003
SWEP.ConeMin = 0
SWEP.Recoil = 2.25
SWEP.MovingConeOffset = 0.28
GAMEMODE:SetupAimDefaults(SWEP,SWEP.Primary)
SWEP.IronSightsPos = Vector(-16.8, 30, -3.64)
SWEP.IronSightsAng = Vector(0, 0, 0)
SWEP.WalkSpeed = SPEED_SLOWER
function SWEP:EmitFireSound()
	self:EmitSound("weapons/grenade_launcher1.wav", 80, math.random(76, 82), 0.8)
	self:EmitSound("npc/ichthyosaur/water_growl5.wav", 75, 170, 0.75, CHAN_WEAPON + 20)
	self:EmitSound(string.format("physics/body/body_medium_break%d.wav", math.random(2, 4)), 72, math.random(70, 80), 0.75, CHAN_WEAPON + 21)
end

function SWEP:EmitReloadSound()
	if IsFirstTimePredicted() then
		self:EmitSound("npc/barnacle/barnacle_digesting"..math.random(1,2)..".wav", 75, 135, 1, CHAN_WEAPON + 20)
		self:EmitSound("npc/headcrab_poison/ph_poisonbite3.wav", 75, 46, 0.75, CHAN_WEAPON + 21)
	end
end
function SWEP:Holster()
	return self:Clip1() > 0
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
		local ent = ents.Create("projectile_hooker")
		if ent:IsValid() then
			ent:SetPos(owner:GetShootPos())
			local ang = owner:EyeAngles()
			ang:RotateAroundAxis(ang:Up(), -90)
			ent:SetAngles(ang)
			ent:SetOwner(owner)
			ent:Spawn()
			ent.Damage = self.Primary.Damage
			local phys = ent:GetPhysicsObject()
			if phys:IsValid() then
				phys:Wake()
				phys:SetVelocity(aimvec *2600)
			end
			--ent:SetVelocity(aimvec *2200)
		end
    end
	self.IdleAnimation = CurTime() + self:SequenceDuration()
end