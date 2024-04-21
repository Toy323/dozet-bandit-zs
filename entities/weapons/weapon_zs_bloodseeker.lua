AddCSLuaFile()

if CLIENT then
	SWEP.TranslateName = "weapon_blooder_name"
	SWEP.TranslateDesc = "weapon_blooder_desc"
	SWEP.ViewModelFOV = 55
	SWEP.ViewModelFlip = false

	SWEP.HoldType = "melee2"
	SWEP.ViewModelFOV = 90.536585365854
	SWEP.ViewModelFlip = false
	SWEP.ShowViewModel = false
	SWEP.ShowWorldModel = false
	SWEP.ViewModelBoneMods = {
		["ValveBiped.Bip01_L_Clavicle"] = { scale = Vector(1, 1, 1), pos = Vector(-15.449, -30, 3.234), angle = Angle(-90.539, -23.713, -51.737) },
		["ValveBiped.Bip01_L_Finger0"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(-6.467, 12.934, -23.713) },
		["ValveBiped.Bip01_L_Finger01"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(-10.778, 17.246, 0) },
		["ValveBiped.Bip01_L_Finger1"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, -43.114, 0) },
		["ValveBiped.Bip01_L_Finger11"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, -60.359, 0) },
		["ValveBiped.Bip01_L_Finger12"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, -71.138, 0) },
		["ValveBiped.Bip01_L_Finger2"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, -51.737, 0) },
		["ValveBiped.Bip01_L_Finger22"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 38.802, 0) },
		["ValveBiped.Bip01_L_Finger3"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, -28.024, 0) },
		["ValveBiped.Bip01_L_Finger31"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, -71.138, 0) },
		["ValveBiped.Bip01_L_Finger32"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, -47.425, 0) },
		["ValveBiped.Bip01_L_Finger4"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(15.09, -53.892, 0) },
		["ValveBiped.Bip01_L_Finger41"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(10.778, -34.491, 0) },
		["ValveBiped.Bip01_L_Finger42"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(10.778, -2.156, 0) },
		["ValveBiped.Bip01_L_Hand"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(32.335, 49.581, -99.162) },
		["ValveBiped.Bip01_Spine4"] = { scale = Vector(1, 1, 1), pos = Vector(-5.03, 7.186, -0.719), angle = Angle(6.467, -15.09, -25.868) }
	}
	
	SWEP.SCKMaterials = {"carpet/offflrb",}
	
	SWEP.IronSightsPos = Vector(0, 0, 0)
	SWEP.IronSightsAng = Vector(0, 0, 0)
	
	SWEP.VElements = {
		["effect"] = { type = "Sprite", sprite = "sprites/laserdot", bone = "v_weapon.Right_Hand", rel = "hand++", pos = Vector(1.558, -0.519, -15.065), size = { x = 10, y = 10 }, color = Color(255, 0, 0, 5), nocull = true, additive = true, vertexalpha = true, vertexcolor = true, ignorez = false},
		["effect+"] = { type = "Sprite", sprite = "sprites/laserdot", bone = "v_weapon.Right_Hand", rel = "hand++", pos = Vector(-1.558, 1.558, -22.338), size = { x = 10, y = 10 }, color = Color(255, 0, 0, 5), nocull = true, additive = true, vertexalpha = true, vertexcolor = true, ignorez = false},
		["effect++"] = { type = "Sprite", sprite = "sprites/laserdot", bone = "v_weapon.Right_Hand", rel = "hand++", pos = Vector(-1.558, 1.558, -10.909), size = { x = 10, y = 10 }, color = Color(255, 0, 0, 5), nocull = true, additive = true, vertexalpha = true, vertexcolor = true, ignorez = false},
		["effect+++"] = { type = "Sprite", sprite = "sprites/laserdot", bone = "v_weapon.Right_Hand", rel = "hand++", pos = Vector(-1.558, 1.558, -31.688), size = { x = 10, y = 10 }, color = Color(255, 0, 0, 5), nocull = true, additive = true, vertexalpha = true, vertexcolor = true, ignorez = false},
		["effect++++"] = { type = "Sprite", sprite = "sprites/laserdot", bone = "v_weapon.Right_Hand", rel = "hand++", pos = Vector(-1.558, 0, -16.104), size = { x = 10, y = 10 }, color = Color(255, 0, 0, 5), nocull = true, additive = true, vertexalpha = true, vertexcolor = true, ignorez = false},
		["effect+++++"] = { type = "Sprite", sprite = "sprites/laserdot", bone = "v_weapon.Right_Hand", rel = "hand++", pos = Vector(1.558, -0.519, -29.61), size = { x = 10, y = 10 }, color = Color(255, 0, 0, 5), nocull = true, additive = true, vertexalpha = true, vertexcolor = true, ignorez = false},
		["effect++++++"] = { type = "Sprite", sprite = "sprites/laserdot", bone = "v_weapon.Right_Hand", rel = "hand++", pos = Vector(1.558, -0.519, -19.221), size = { x = 10, y = 10 }, color = Color(255, 0, 0, 5), nocull = true, additive = true, vertexalpha = true, vertexcolor = true, ignorez = false},
		["hand+"] = { type = "Model", model = "models/props_wasteland/gear02.mdl", bone = "v_weapon.Right_Hand", rel = "hand++", pos = Vector(0, 0, -7.73), angle = Angle(0, -115, -90), size = Vector(0.3, 0.3, 0.3), color = Color(211, 138, 121, 255), surpresslightning = false, bonemerge = false, material = "", skin = 5, bodygroup = {} },
		["hand++"] = { type = "Model", model = "models/props_wasteland/chimneypipe02a.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(3.5, 1.6, 5), angle = Angle(180, 180, 180), size = Vector(0.04, 0.04, 0.037), color = Color(144, 78, 75, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} },
		["hand+++"] = { type = "Model", model = "models/props_wasteland/gear02.mdl", bone = "v_weapon.Right_Hand", rel = "hand++", pos = Vector(0, 0, 1.8), angle = Angle(0, -180, 90), size = Vector(0.25, 0.25, 0.25), color = Color(211, 138, 121, 255), surpresslightning = false, bonemerge = false, material = "", skin = 5, bodygroup = {} },
		["hand++++"] = { type = "Model", model = "models/props_wasteland/chimneypipe02a.mdl", bone = "v_weapon.Right_Hand", rel = "hand++", pos = Vector(0, 0, -6.1), angle = Angle(0, -33.896, 180), size = Vector(0.04, 0.04, 0.037), color = Color(144, 78, 75, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} },
		["handle"] = { type = "Model", model = "models/props_wasteland/dockplank01a.mdl", bone = "v_weapon.Right_Hand", rel = "hand++", pos = Vector(0, 0, -24.416), angle = Angle(0, 0, -90), size = Vector(0.06, 0.18, 0.06), color = Color(255, 0, 0, 255), surpresslightning = false, bonemerge = false, material = "effects/tvscreen_noise001a", skin = 0, bodygroup = {[5] = 3} },
		["handle+"] = { type = "Model", model = "models/props_wasteland/dockplank_chunk01e.mdl", bone = "v_weapon.Right_Hand", rel = "hand++", pos = Vector(-0.1, 0, 9.87), angle = Angle(0, 0, -90), size = Vector(0.07, 0.3, 0.06), color = Color(255, 0, 0, 255), surpresslightning = false, bonemerge = false, material = "effects/tvscreen_noise001a", skin = 0, bodygroup = {[5] = 3} },
		["handle++"] = { type = "Model", model = "models/props_wasteland/dockplank_chunk01e.mdl", bone = "v_weapon.Right_Hand", rel = "hand++", pos = Vector(0, 0, -19.221), angle = Angle(0, 0, -90), size = Vector(0.07, 0.3, 0.06), color = Color(255, 0, 0, 255), surpresslightning = false, bonemerge = false, material = "effects/tvscreen_noise001a", skin = 0, bodygroup = {[5] = 3} }
	}
	
	SWEP.WElements = {
		["effect"] = { type = "Sprite", sprite = "sprites/laserdot", bone = "ValveBiped.Bip01_R_Hand", rel = "hand++", pos = Vector(1.558, -0.519, -15.065), size = { x = 17.443, y = 17.443 }, color = Color(255, 0, 0, 10), nocull = true, additive = true, vertexalpha = true, vertexcolor = true, ignorez = false},
		["effect+"] = { type = "Sprite", sprite = "sprites/laserdot", bone = "ValveBiped.Bip01_R_Hand", rel = "hand++", pos = Vector(0, 0, -20.126), size = { x = 20.972, y = 20.972 }, color = Color(255, 0, 0, 10), nocull = true, additive = true, vertexalpha = true, vertexcolor = true, ignorez = false},
		["effect++"] = { type = "Sprite", sprite = "sprites/laserdot", bone = "ValveBiped.Bip01_R_Hand", rel = "hand++", pos = Vector(0, 0, -10.909), size = { x = 12.953, y = 12.953 }, color = Color(255, 0, 0, 15), nocull = true, additive = true, vertexalpha = true, vertexcolor = true, ignorez = false},
		["effect+++"] = { type = "Sprite", sprite = "sprites/laserdot", bone = "ValveBiped.Bip01_R_Hand", rel = "hand++", pos = Vector(-1.558, 1.558, -31.195), size = { x = 18.406, y = 18.406 }, color = Color(255, 0, 0, 10), nocull = true, additive = true, vertexalpha = true, vertexcolor = true, ignorez = false},
		["effect++++"] = { type = "Sprite", sprite = "sprites/laserdot", bone = "ValveBiped.Bip01_R_Hand", rel = "hand++", pos = Vector(-1.558, 0, -25.157), size = { x = 21.934, y = 21.934 }, color = Color(255, 0, 0, 10), nocull = true, additive = true, vertexalpha = true, vertexcolor = true, ignorez = false},
		["effect+++++"] = { type = "Sprite", sprite = "sprites/laserdot", bone = "ValveBiped.Bip01_R_Hand", rel = "hand++", pos = Vector(1.558, 0, -37.233), size = { x = 16.481, y = 16.481 }, color = Color(255, 0, 0, 10), nocull = true, additive = true, vertexalpha = true, vertexcolor = true, ignorez = false},
		["effect++++++"] = { type = "Sprite", sprite = "sprites/laserdot", bone = "ValveBiped.Bip01_R_Hand", rel = "hand++", pos = Vector(0, 0, -45.283), size = { x = 14.236, y = 14.236 }, color = Color(255, 0, 0, 10), nocull = true, additive = true, vertexalpha = true, vertexcolor = true, ignorez = false},
		["hand+"] = { type = "Model", model = "models/props_wasteland/gear02.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "hand++", pos = Vector(0, 0, -7.73), angle = Angle(0, -115, -90), size = Vector(0.3, 0.3, 0.3), color = Color(211, 138, 121, 255), surpresslightning = false, bonemerge = false, material = "", skin = 5, bodygroup = {} },
		["hand++"] = { type = "Model", model = "models/props_wasteland/chimneypipe02a.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(3.5, 1.6, 5), angle = Angle(180, 180, 180), size = Vector(0.04, 0.04, 0.037), color = Color(144, 78, 75, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} },
		["hand+++"] = { type = "Model", model = "models/props_wasteland/gear02.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "hand++", pos = Vector(0, 0, 1.8), angle = Angle(0, -180, 90), size = Vector(0.25, 0.25, 0.25), color = Color(211, 138, 121, 255), surpresslightning = false, bonemerge = false, material = "", skin = 5, bodygroup = {} },
		["hand++++"] = { type = "Model", model = "models/props_wasteland/chimneypipe02a.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "hand++", pos = Vector(0, 0, -6.1), angle = Angle(0, -33.896, 180), size = Vector(0.04, 0.04, 0.037), color = Color(144, 78, 75, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} },
		["handle"] = { type = "Model", model = "models/props_wasteland/dockplank01a.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "hand++", pos = Vector(0, 0, -24.416), angle = Angle(0, 0, -90), size = Vector(0.06, 0.18, 0.06), color = Color(255, 0, 0, 255), surpresslightning = false, bonemerge = false, material = "effects/tvscreen_noise001a", skin = 0, bodygroup = {[5] = 3} },
		["handle+"] = { type = "Model", model = "models/props_wasteland/dockplank_chunk01e.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "hand++", pos = Vector(-0.1, 0, 9.87), angle = Angle(0, 0, -90), size = Vector(0.07, 0.3, 0.06), color = Color(255, 0, 0, 255), surpresslightning = false, bonemerge = false, material = "effects/tvscreen_noise001a", skin = 0, bodygroup = {[5] = 3} },
		["handle++"] = { type = "Model", model = "models/props_wasteland/dockplank_chunk01e.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "hand++", pos = Vector(0, 0, -19.221), angle = Angle(0, 0, -90), size = Vector(0.07, 0.3, 0.06), color = Color(255, 0, 0, 255), surpresslightning = false, bonemerge = false, material = "effects/tvscreen_noise001a", skin = 0, bodygroup = {[5] = 3} },
		["handle+++"] = { type = "Model", model = "models/props_wasteland/dockplank01a.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "hand++", pos = Vector(0, 0, -24.416), angle = Angle(0, 0, -90), size = Vector(0.06, 0.18, 0.06), color = Color(255, 0, 0, 255), surpresslightning = false, bonemerge = false, material = "carpet/offflrb", skin = 0, bodygroup = {[5] = 3} },
		["handle++++"] = { type = "Model", model = "models/props_wasteland/dockplank_chunk01e.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "hand++", pos = Vector(-0.1, 0, 9.87), angle = Angle(0, 0, -90), size = Vector(0.07, 0.3, 0.06), color = Color(255, 0, 0, 255), surpresslightning = false, bonemerge = false, material = "carpet/offflrb", skin = 0, bodygroup = {[5] = 3} },
		["handle+++++"] = { type = "Model", model = "models/props_wasteland/dockplank_chunk01e.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "hand++", pos = Vector(0, 0, -19.221), angle = Angle(0, 0, -90), size = Vector(0.07, 0.3, 0.06), color = Color(255, 0, 0, 255), surpresslightning = false, bonemerge = false, material = "carpet/offflrb", skin = 0, bodygroup = {[5] = 3} }
	}
end

SWEP.Base = "weapon_zs_basemelee"

SWEP.DamageType = DMG_SLASH

SWEP.ViewModel = "models/weapons/c_crowbar.mdl"
SWEP.WorldModel = "models/weapons/w_crowbar.mdl"
SWEP.UseHands = true

SWEP.MeleeDamage = 32
SWEP.MeleeRange = 78
SWEP.MeleeSize = 2
SWEP.Primary.Delay = 0.8

SWEP.WalkSpeed = SPEED_FAST

SWEP.Stamina = 17

SWEP.UseMelee1 = true

SWEP.HitAnim = ACT_VM_MISSCENTER
SWEP.SwingHoldType = "melee"

SWEP.HitDecal = "Manhackcut"




function SWEP:PlaySwingSound()
	self:EmitSound("weapons/knife/knife_slash"..math.random(2)..".wav", 72, math.Rand(85, 95))
end

function SWEP:PlayHitSound()
	self:EmitSound("weapons/knife/knife_hitwall1.wav", 72, math.Rand(75, 85))
end

function SWEP:PlayHitFleshSound()
	self:EmitSound("physics/flesh/flesh_squishy_impact_hard"..math.random(4)..".wav")
	self:EmitSound("physics/body/body_medium_break"..math.random(2, 4)..".wav")
end

function SWEP:PlayerHitUtil(owner, damage, hitent, dmginfo)
	if SERVER then
		local blodoarmor = hitent:GetBloodArmor()
		timer.Simple(0, function() owner:SetBloodArmor(owner:GetBloodArmor()+damage*0.2+blodoarmor*0.4) end)
		hitent:SetBloodArmor(blodoarmor*0.6)
		owner:AddStamina(blodoarmor*0.8)
	end
end
