AddCSLuaFile()

if CLIENT then
	SWEP.ViewModelFlip = false
	SWEP.ViewModelFOV = 70

	SWEP.ShowViewModel = false
	SWEP.ShowWorldModel = false

	SWEP.ViewModelBoneMods = {
		["ValveBiped.Bip01_R_Hand"] = { scale = Vector(1, 1, 1), pos = Vector(-1.078, 0, 0), angle = Angle(-40.405, -3.749, 7.221) },
		["ValveBiped.Bip01_R_UpperArm"] = { scale = Vector(1, 1, 1), pos = Vector(0, -1.614, 0), angle = Angle(-15.351, 7.109, 24.592) }
	}

	SWEP.IronSightsPos = Vector(-0.48, 0, -3.6)
	SWEP.IronSightsAng = Vector(0, 0, 0)
	
	SWEP.VElements = {
		["держатель"] = { type = "Model", model = "models/hunter/tubes/tube4x4x1to2x2.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "лезвие", pos = Vector(-0.542, 0.54, 0.31), angle = Angle(74.996, 161.72301, -79.826), size = Vector(0.012, 0.012, 0.012), color = Color(255, 221, 0, 255), surpresslightning = false, bonemerge = false, material = "models/props/cs_assault/metal_stairs1", skin = 0, bodygroup = {} },
		["держатель+"] = { type = "Model", model = "models/hunter/tubes/tube4x4x1to2x2.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "держатель", pos = Vector(-0.061, -0.007, -1.154), angle = Angle(-0.694, 7.157, 179.85201), size = Vector(0.012, 0.012, 0.012), color = Color(255, 221, 0, 255), surpresslightning = false, bonemerge = false, material = "models/props/cs_assault/metal_stairs1", skin = 0, bodygroup = {} },
		["камишек"] = { type = "Model", model = "models/hunter/misc/sphere075x075.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "лезвие", pos = Vector(-0.503, 0.229, 0.296), angle = Angle(7.671, -8.723, -91.23), size = Vector(0.035, 0.034, 0.033), color = Color(255, 0, 0, 255), surpresslightning = false, bonemerge = false, material = "models/props_lab/warp_sheet", skin = 0, bodygroup = {} },
		["камишек+"] = { type = "Model", model = "models/hunter/misc/sphere075x075.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "камишек", pos = Vector(0.026, -0.008, 0.498), angle = Angle(0, 0, 0), size = Vector(0.035, 0.034, 0.033), color = Color(255, 0, 0, 255), surpresslightning = false, bonemerge = false, material = "models/props_lab/warp_sheet", skin = 0, bodygroup = {} },
		["лезвие"] = { type = "Model", model = "models/hunter/misc/cone1x1.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "рукоять", pos = Vector(0.407, -0.183, 63.65), angle = Angle(1.724, 24.501, -0.057), size = Vector(0.02, 0.01, 0.25), color = Color(189, 0, 0, 255), surpresslightning = false, bonemerge = false, material = "metal6", skin = 0, bodygroup = {} },
		["лезвие+"] = { type = "Model", model = "models/hunter/misc/cone1x1.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "лезвие", pos = Vector(-0.85, -0.074, -0.108), angle = Angle(0, 0, 0), size = Vector(0.02, 0.01, 0.25), color = Color(189, 0, 0, 255), surpresslightning = false, bonemerge = false, material = "metal6", skin = 0, bodygroup = {} },
		["лезвие1"] = { type = "Model", model = "models/hunter/tubes/circle4x4d.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "лезвие", pos = Vector(0.046, -0.052, 3.25), angle = Angle(88.914, -155.692, -110.703), size = Vector(0.025, 0.02, 0.03), color = Color(127, 0, 0, 255), surpresslightning = false, bonemerge = false, material = "metal6", skin = 0, bodygroup = {} },
		["лезвие1+"] = { type = "Model", model = "models/hunter/tubes/circle4x4d.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "лезвие", pos = Vector(-0.934, -0.033, 3.31), angle = Angle(88.914, 15.111, -110.703), size = Vector(0.025, 0.02, 0.03), color = Color(127, 0, 0, 255), surpresslightning = false, bonemerge = false, material = "metal6", skin = 0, bodygroup = {} },
		["лезвие2"] = { type = "Model", model = "models/hunter/triangles/05x05mirrored.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "лезвие", pos = Vector(-1.988, -0.129, 6.804), angle = Angle(-89.974, 84.641, 0), size = Vector(0.3, 0.035, 0.02), color = Color(127, 0, 0, 255), surpresslightning = false, bonemerge = false, material = "metal6", skin = 0, bodygroup = {} },
		["лезвие2+"] = { type = "Model", model = "models/hunter/triangles/05x05mirrored.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "лезвие", pos = Vector(1.133, -0.119, 6.783), angle = Angle(-89.974, 95.696, 0), size = Vector(0.3, 0.035, 0.02), color = Color(127, 0, 0, 255), surpresslightning = false, bonemerge = false, material = "metal6", skin = 0, bodygroup = {} },
		["лезвие3"] = { type = "Model", model = "models/hunter/tubes/circle4x4c.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "лезвие", pos = Vector(-1.909, -0.105, 0.956), angle = Angle(5.007, -3.213, 88.761), size = Vector(0.01, 0.03, 0.015), color = Color(127, 0, 0, 255), surpresslightning = false, bonemerge = false, material = "metal6", skin = 0, bodygroup = {} },
		["лезвие3+"] = { type = "Model", model = "models/hunter/tubes/circle4x4c.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "лезвие", pos = Vector(1.041, -0.143, 0.923), angle = Angle(5.367, 180, 90.185), size = Vector(0.01, 0.03, 0.015), color = Color(127, 0, 0, 255), surpresslightning = false, bonemerge = false, material = "metal6", skin = 0, bodygroup = {} },
		["р1.2"] = { type = "Model", model = "models/hunter/tubes/tube1x1x1.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "рукоять1", pos = Vector(-0.038, -0.035, 2.582), angle = Angle(-180, 19.157, 1.954), size = Vector(0.026, 0.026, 0.04), color = Color(255, 0, 0, 255), surpresslightning = false, bonemerge = false, material = "models/XQM/LightLinesRed_tool", skin = 0, bodygroup = {} },
		["р1.3"] = { type = "Model", model = "models/hunter/misc/squarecap1x1x1.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "рукоять1", pos = Vector(-0.028, 0.025, 9.563), angle = Angle(-1.62, -42.66, -2.016), size = Vector(0.027, 0.028, 0.06), color = Color(227, 219, 219, 255), surpresslightning = false, bonemerge = false, material = "models/XQM/BoxFull_diffuse", skin = 0, bodygroup = {} },
		["р1.4"] = { type = "Model", model = "models/hunter/misc/cone1x1.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "рукоять1", pos = Vector(0.033, 0.022, 9.745), angle = Angle(0, 0, 0), size = Vector(0.019, 0.019, 0.04), color = Color(212, 203, 203, 255), surpresslightning = false, bonemerge = false, material = "models/XQM/BoxFull_diffuse", skin = 0, bodygroup = {} },
		["рукоять"] = { type = "Model", model = "models/hunter/tubes/tube1x1x3.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(-10.972, 2.306, 25.82), angle = Angle(7.968, 77.324, 153.713), size = Vector(0.02, 0.02, 0.45), color = Color(102, 102, 102, 255), surpresslightning = false, bonemerge = false, material = "ground/snow01", skin = 0, bodygroup = {} },
		["рукоять1"] = { type = "Model", model = "models/hunter/tubes/tube1x1x2.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "рукоять", pos = Vector(-0.018, 0.007, 8.212), angle = Angle(-0.158, -132.83099, -180), size = Vector(0.023, 0.023, 0.087), color = Color(189, 189, 189, 255), surpresslightning = false, bonemerge = false, material = "models/XQM/BoxFull_diffuse", skin = 0, bodygroup = {} },
		["рукоять2"] = { type = "Model", model = "models/hunter/tubes/tube1x1x1.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "рукоять", pos = Vector(-0.022, 0.021, 41.203), angle = Angle(-1.415, -121.977, -1.185), size = Vector(0.023, 0.023, 0.039), color = Color(214, 197, 197, 255), surpresslightning = false, bonemerge = false, material = "models/props_combine/metal_combinebridge001", skin = 0, bodygroup = {} },
		["рукоять3"] = { type = "Model", model = "models/hunter/tubes/tube1x1x2.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "рукоять", pos = Vector(0.018, 0.017, 46.023), angle = Angle(0, 163.138, 0), size = Vector(0.021, 0.021, 0.19), color = Color(174, 165, 165, 255), surpresslightning = false, bonemerge = false, material = "models/props_combine/metal_combinebridge001", skin = 0, bodygroup = {} },

	}
	
	SWEP.WElements = {
		["держатель"] = { type = "Model", model = "models/hunter/tubes/tube4x4x1to2x2.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "лезвие", pos = Vector(-0.542, 0.54, 0.31), angle = Angle(74.996, 161.72301, -79.826), size = Vector(0.012, 0.012, 0.012), color = Color(255, 221, 0, 255), surpresslightning = false, bonemerge = false, material = "models/props/cs_assault/metal_stairs1", skin = 0, bodygroup = {} },
		["держатель+"] = { type = "Model", model = "models/hunter/tubes/tube4x4x1to2x2.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "держатель", pos = Vector(-0.061, -0.007, -1.154), angle = Angle(-0.694, 7.157, 179.85201), size = Vector(0.012, 0.012, 0.012), color = Color(255, 221, 0, 255), surpresslightning = false, bonemerge = false, material = "models/props/cs_assault/metal_stairs1", skin = 0, bodygroup = {} },
		["камишек"] = { type = "Model", model = "models/hunter/misc/sphere075x075.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "лезвие", pos = Vector(-0.503, 0.229, 0.296), angle = Angle(7.671, -8.723, -91.23), size = Vector(0.035, 0.034, 0.033), color = Color(255, 0, 0, 255), surpresslightning = false, bonemerge = false, material = "models/props_lab/warp_sheet", skin = 0, bodygroup = {} },
		["камишек+"] = { type = "Model", model = "models/hunter/misc/sphere075x075.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "камишек", pos = Vector(0.026, -0.008, 0.498), angle = Angle(0, 0, 0), size = Vector(0.035, 0.034, 0.033), color = Color(255, 0, 0, 255), surpresslightning = false, bonemerge = false, material = "models/props_lab/warp_sheet", skin = 0, bodygroup = {} },
		["лезвие"] = { type = "Model", model = "models/hunter/misc/cone1x1.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "рукоять", pos = Vector(0.407, -0.183, 63.65), angle = Angle(1.724, 24.501, -0.057), size = Vector(0.02, 0.01, 0.25), color = Color(189, 0, 0, 255), surpresslightning = false, bonemerge = false, material = "metal6", skin = 0, bodygroup = {} },
		["лезвие+"] = { type = "Model", model = "models/hunter/misc/cone1x1.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "лезвие", pos = Vector(-0.85, -0.074, -0.108), angle = Angle(0, 0, 0), size = Vector(0.02, 0.01, 0.25), color = Color(189, 0, 0, 255), surpresslightning = false, bonemerge = false, material = "metal6", skin = 0, bodygroup = {} },
		["лезвие1"] = { type = "Model", model = "models/hunter/tubes/circle4x4d.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "лезвие", pos = Vector(0.046, -0.052, 3.25), angle = Angle(88.914, -155.692, -110.703), size = Vector(0.025, 0.02, 0.03), color = Color(127, 0, 0, 255), surpresslightning = false, bonemerge = false, material = "metal6", skin = 0, bodygroup = {} },
		["лезвие1+"] = { type = "Model", model = "models/hunter/tubes/circle4x4d.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "лезвие", pos = Vector(-0.934, -0.033, 3.31), angle = Angle(88.914, 15.111, -110.703), size = Vector(0.025, 0.02, 0.03), color = Color(127, 0, 0, 255), surpresslightning = false, bonemerge = false, material = "metal6", skin = 0, bodygroup = {} },
		["лезвие2"] = { type = "Model", model = "models/hunter/triangles/05x05mirrored.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "лезвие", pos = Vector(-1.988, -0.129, 6.804), angle = Angle(-89.974, 84.641, 0), size = Vector(0.3, 0.035, 0.02), color = Color(127, 0, 0, 255), surpresslightning = false, bonemerge = false, material = "metal6", skin = 0, bodygroup = {} },
		["лезвие2+"] = { type = "Model", model = "models/hunter/triangles/05x05mirrored.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "лезвие", pos = Vector(1.133, -0.119, 6.783), angle = Angle(-89.974, 95.696, 0), size = Vector(0.3, 0.035, 0.02), color = Color(127, 0, 0, 255), surpresslightning = false, bonemerge = false, material = "metal6", skin = 0, bodygroup = {} },
		["лезвие3"] = { type = "Model", model = "models/hunter/tubes/circle4x4c.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "лезвие", pos = Vector(-1.909, -0.105, 0.956), angle = Angle(5.007, -3.213, 88.761), size = Vector(0.01, 0.03, 0.015), color = Color(127, 0, 0, 255), surpresslightning = false, bonemerge = false, material = "metal6", skin = 0, bodygroup = {} },
		["лезвие3+"] = { type = "Model", model = "models/hunter/tubes/circle4x4c.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "лезвие", pos = Vector(1.041, -0.143, 0.923), angle = Angle(5.367, 180, 90.185), size = Vector(0.01, 0.03, 0.015), color = Color(127, 0, 0, 255), surpresslightning = false, bonemerge = false, material = "metal6", skin = 0, bodygroup = {} },
		["р1.2"] = { type = "Model", model = "models/hunter/tubes/tube1x1x1.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "рукоять1", pos = Vector(-0.038, -0.035, 2.582), angle = Angle(-180, 19.157, 1.954), size = Vector(0.026, 0.026, 0.04), color = Color(255, 0, 0, 255), surpresslightning = false, bonemerge = false, material = "models/XQM/LightLinesRed_tool", skin = 0, bodygroup = {} },
		["р1.3"] = { type = "Model", model = "models/hunter/misc/squarecap1x1x1.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "рукоять1", pos = Vector(-0.028, 0.025, 9.563), angle = Angle(-1.62, -42.66, -2.016), size = Vector(0.027, 0.028, 0.06), color = Color(227, 219, 219, 255), surpresslightning = false, bonemerge = false, material = "models/XQM/BoxFull_diffuse", skin = 0, bodygroup = {} },
		["р1.4"] = { type = "Model", model = "models/hunter/misc/cone1x1.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "рукоять1", pos = Vector(0.033, 0.022, 9.745), angle = Angle(0, 0, 0), size = Vector(0.019, 0.019, 0.04), color = Color(212, 203, 203, 255), surpresslightning = false, bonemerge = false, material = "models/XQM/BoxFull_diffuse", skin = 0, bodygroup = {} },
		["рукоять"] = { type = "Model", model = "models/hunter/tubes/tube1x1x3.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(-10.972, 2.306, 25.82), angle = Angle(7.968, 77.324, 153.713), size = Vector(0.02, 0.02, 0.45), color = Color(102, 102, 102, 255), surpresslightning = false, bonemerge = false, material = "ground/snow01", skin = 0, bodygroup = {} },
		["рукоять1"] = { type = "Model", model = "models/hunter/tubes/tube1x1x2.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "рукоять", pos = Vector(-0.018, 0.007, 8.212), angle = Angle(-0.158, -132.83099, -180), size = Vector(0.023, 0.023, 0.087), color = Color(189, 189, 189, 255), surpresslightning = false, bonemerge = false, material = "models/XQM/BoxFull_diffuse", skin = 0, bodygroup = {} },
		["рукоять2"] = { type = "Model", model = "models/hunter/tubes/tube1x1x1.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "рукоять", pos = Vector(-0.022, 0.021, 41.203), angle = Angle(-1.415, -121.977, -1.185), size = Vector(0.023, 0.023, 0.039), color = Color(214, 197, 197, 255), surpresslightning = false, bonemerge = false, material = "models/props_combine/metal_combinebridge001", skin = 0, bodygroup = {} },
		["рукоять3"] = { type = "Model", model = "models/hunter/tubes/tube1x1x2.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "рукоять", pos = Vector(0.018, 0.017, 46.023), angle = Angle(0, 163.138, 0), size = Vector(0.021, 0.021, 0.19), color = Color(174, 165, 165, 255), surpresslightning = false, bonemerge = false, material = "models/props_combine/metal_combinebridge001", skin = 0, bodygroup = {} },
	}
	

	
	
end
SWEP.TranslateName = "weapon_firespear_name"
SWEP.TranslateDesc = "weapon_firespear_desc"
function SWEP:PlayHitSound()
	self:EmitSound( "ambient/fire/ignite.wav", 1215, 2109)
	self:EmitSound("ambient/fire/ignite.wav", 1215, 2109) 
end

function SWEP:PlayHitFleshSound()
	self:EmitSound("ambient/fire/ignite.wav", 1215, 2109)
end

SWEP.Base = "weapon_zs_basemelee"

SWEP.HoldType = "knife"

SWEP.ViewModel = "models/weapons/cstrike/c_knife_t.mdl"
SWEP.WorldModel = "models/weapons/w_knife_t.mdl"
SWEP.UseHands = true
SWEP.HitDecal = "Manhackcut"

SWEP.MeleeDamage = 36
SWEP.Stamina = 33
SWEP.MeleeRange = 120
SWEP.MeleeSize = 1.4
SWEP.Tier = 4


SWEP.AllowQualityWeapons = true

SWEP.WalkSpeed = SPEED_NORMAL

SWEP.Primary.Delay = 1.2
SWEP.Secondary.Delay = 10
SWEP.HitAnim = ACT_VM_MISSCENTER
SWEP.ChargeSpeed = 1000
SWEP.FireNail = false
SWEP.CNail = false

function SWEP:OnMeleeHit(hitent, hitflesh, tr)
	local ent = tr.Entity
	local owner = self:GetOwner()
	if ent:IsPlayer() and SERVER then
		local burned = ent:GiveStatus('burn')
		burned:AddTime(2)
		burned.Damager = owner
		burned.Damage = 5
	end
end
