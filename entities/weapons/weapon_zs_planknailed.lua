AddCSLuaFile()

if CLIENT then
	SWEP.TranslateName = "weapon_plank2melee_name"
	SWEP.TranslateDesc = "weapon_plank2melee_desc"

	SWEP.ViewModelFOV = 55
	SWEP.ViewModelFlip = false

	SWEP.ShowViewModel = false
	SWEP.ShowWorldModel = false
	SWEP.VElements = {
		["base"] = { type = "Model", model = "models/props_debris/wood_chunk03a.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(1.363, 1.363, -11.365), angle = Angle(180, 90, 0), size = Vector(0.5, 0.5, 0.5), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} }
	}
	SWEP.WElements = {
		["base"] = { type = "Model", model = "models/props_debris/wood_chunk03a.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(2.273, 1.363, -12.273), angle = Angle(180, 90, 0), size = Vector(0.5, 0.5, 0.5), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} }
	}
end

SWEP.Base = "weapon_zs_basemelee"

SWEP.DamageType = DMG_CLUB

SWEP.ViewModel = "models/weapons/c_crowbar.mdl"
SWEP.WorldModel = "models/props_debris/wood_chunk03a.mdl"
SWEP.ModelScale = 0.5
SWEP.UseHands = true
SWEP.BoxPhysicsMin = Vector(-0.5764, -2.397225, -20.080572) * SWEP.ModelScale
SWEP.BoxPhysicsMax = Vector(0.70365, 2.501825, 19.973375) * SWEP.ModelScale

SWEP.MeleeDamage = 7
SWEP.MeleeRange = 52
SWEP.MeleeSize = 0.875
SWEP.Primary.Delay = 0.22

SWEP.Stamina = 3.4

SWEP.WalkSpeed = SPEED_FASTEST

SWEP.UseMelee1 = true

SWEP.HitGesture = ACT_HL2MP_GESTURE_RANGE_ATTACK_MELEE
SWEP.MissGesture = SWEP.HitGesture

function SWEP:PlayerHitUtil(owner, damage, hitent, dmginfo)
	hitent:MeleeViewPunch(damage*0.1)
	if hitent:WouldDieFrom(damage, dmginfo:GetDamagePosition()) then
		hitent:Dismember(hitent:NearestDismemberableBone(dmginfo:GetDamagePosition()))
	else
		local bleed = hitent:GetStatus("bleed")
		if bleed and bleed:IsValid() then
			bleed:AddDamage(damage)
			bleed.Damager = owner
		else
			local stat = hitent:GiveStatus("bleed")
			if stat and stat:IsValid() then
				stat:SetDamage(damage)
				stat.Damager = owner
			end
		end
		local bleedowner = owner:GetStatus("bleed")
		if bleedowner and bleedowner:IsValid() then
			bleedowner:AddDamage(damage * 0.4)
			bleedowner.Damager = hitent
		else
			local stat = owner:GiveStatus("bleed")
			if stat and stat:IsValid() then
				stat:SetDamage(damage  * 0.4)
				stat.Damager = owner
			end
		end
	end
end


function SWEP:PlaySwingSound()
	self:EmitSound("weapons/knife/knife_slash"..math.random(2)..".wav")
end

function SWEP:PlayHitSound()
	self:EmitSound("physics/wood/wood_plank_impact_hard"..math.random(5)..".wav")
end

function SWEP:PlayHitFleshSound()
	self:EmitSound("physics/flesh/flesh_impact_bullet"..math.random(5)..".wav")
end