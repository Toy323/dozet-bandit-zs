AddCSLuaFile()

if CLIENT then
	SWEP.TranslateName = "weapon_electrohammer_name"
	SWEP.TranslateDesc = "weapon_electrohammer_desc"
	SWEP.VElements = {
		["base2"] = { type = "Model", model = "models/props_lab/teleportring.mdl", bone = "ValveBiped.Bip01", rel = "base", pos = Vector(0, 0, 0), angle = Angle(0, 180, 0), size = Vector(0.08, 0.08, 0.08), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["base"] = { type = "Model", model = "models/props_lab/powerbox02d.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(-0.9, 4.975, -8.412), angle = Angle(5.961, 270, 16.764), size = Vector(0.25, 0.25, 0.25), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["ss"] = { type = "Sprite", sprite = "sprites/grav_flare", bone = "ValveBiped.Bip01", rel = "base", pos = Vector(-1.338, 2.894, 0.125), size = { x = 5, y = 5 }, color = Color(255, 255, 255, 255), nocull = true, additive = true, vertexalpha = true, vertexcolor = true, ignorez = false},
		["base2+"] = { type = "Model", model = "models/props_lab/teleportring.mdl", bone = "ValveBiped.Bip01", rel = "base", pos = Vector(-0.975, -0.263, 0.232), angle = Angle(0, 270, 90), size = Vector(0.15, 0.15, 0.15), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} }
	}

	SWEP.WElements = {
		["base2"] = { type = "Model", model = "models/props_lab/teleportring.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "base", pos = Vector(0, 0, 0), angle = Angle(0, 180, 0), size = Vector(0.08, 0.08, 0.08), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["ss"] = { type = "Sprite", sprite = "sprites/grav_flare", bone = "ValveBiped.Bip01_R_Hand", rel = "base", pos = Vector(-1.338, 2.894, 0.125), size = { x = 5, y = 5 }, color = Color(255, 255, 255, 255), nocull = true, additive = true, vertexalpha = true, vertexcolor = true, ignorez = false},
		["base"] = { type = "Model", model = "models/props_lab/powerbox02d.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(3, 1, -8), angle = Angle(270, 90, 90), size = Vector(0.25, 0.25, 0.25), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["base2+"] = { type = "Model", model = "models/props_lab/teleportring.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "base", pos = Vector(-0.975, -0.263, 0.232), angle = Angle(0, 270, 90), size = Vector(0.15, 0.15, 0.15), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} }
	}
end

SWEP.Base = "weapon_zs_hammer"
SWEP.NoUseStamina = true
SWEP.Primary.Delay = 0.5
SWEP.SwingTime = 0.15
SWEP.MeleeDamage = 5
SWEP.HealStrength = 1.5

SWEP.MeleeRange = 60
SWEP.MeleeSize = 0.875
if SERVER then
	function SWEP:OnMeleeHit(hitent, hitflesh, tr)
		local laser =  hitent:GetClass() == "prop_laser_turret"
		if hitent:IsValid() and  (hitent:GetClass() == "prop_gunturret" or laser)  then
			hitent:SetAmmo(hitent:GetAmmo() + 40*(laser and 3 or 1))
		end
		return self.BaseClass.OnMeleeHit(self, hitent, hitflesh, tr)
	end
end

SWEP.ViewModel = "models/weapons/v_hammer/c_hammer.mdl"
SWEP.WorldModel = "models/weapons/w_hammer.mdl"
