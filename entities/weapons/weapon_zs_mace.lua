AddCSLuaFile()

if CLIENT then
	SWEP.TranslateName = "weapon_mace_name"
	SWEP.TranslateDesc = "weapon_mace_desc"
	SWEP.ViewModelFOV = 50

	SWEP.ViewModelBoneMods = {
		["ValveBiped.Bip01_Spine4"] = { scale = Vector(1, 1, 1), pos = Vector(-0.12, 0.182, -0.02), angle = Angle(7.628, -8.42, 0) }
	}
	
	SWEP.SCKMaterials = {}
	
	SWEP.IronSightsPos = Vector(-1.08, 0, 0.72)
	SWEP.IronSightsAng = Vector(0, 0, 0)
	
	SWEP.VElements = {
		["BALL"] = { type = "Model", model = "models/mechanics/wheels/wheel_spike_48.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "grip", pos = Vector(14.595, -0.143, 0.221), angle = Angle(-0.168, 0.009, -86.895), size = Vector(0.095, 0.095, 0.095), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} },
		["BALL+"] = { type = "Model", model = "models/mechanics/wheels/wheel_spike_48.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "BALL", pos = Vector(0, 0, 0), angle = Angle(-0.406, -0.02, -56.831), size = Vector(0.095, 0.095, 0.095), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} },
		["BALL++"] = { type = "Model", model = "models/mechanics/wheels/wheel_spike_48.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "BALL", pos = Vector(0, 0, 0), angle = Angle(0.594, -0.376, 65.741), size = Vector(0.095, 0.095, 0.095), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} },
		["BALL+++"] = { type = "Model", model = "models/mechanics/wheels/wheel_spike_48.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "BALL", pos = Vector(0, 0, 0), angle = Angle(0, 0, 33.512), size = Vector(0.095, 0.095, 0.095), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} },
		["ghard"] = { type = "Model", model = "models/props_phx/construct/metal_dome360.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "grip", pos = Vector(12.88, -0.049, 0.085), angle = Angle(4.882, 91.467, -96.667), size = Vector(0.031, 0.031, 0.031), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} },
		["grip"] = { type = "Model", model = "models/mechanics/robotics/a2.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(3.158, 1.752, -5.489), angle = Angle(-86.717, -28.4, 149.11301), size = Vector(-0.485, 0.077, 0.109), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/props/CS_militia/roofbeams03", skin = 0, bodygroup = {} },
		["ring"] = { type = "Model", model = "models/props_phx/construct/metal_dome360.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "grip", pos = Vector(-11.394, -0.025, -0.008), angle = Angle(5.428, 97.784, -90.807), size = Vector(0.011, 0.015, 0.016), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} },
		["ring1"] = { type = "Model", model = "models/props_phx/construct/metal_wire1x1.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "grip", pos = Vector(-12.501, 0.108, 0.005), angle = Angle(-46.818, 15.34, -81.984), size = Vector(0.014, 0.014, 0.014), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} }
	}
	
	SWEP.WElements = {
		["BALL"] = { type = "Model", model = "models/mechanics/wheels/wheel_spike_48.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "grip", pos = Vector(14.595, -0.143, 0.221), angle = Angle(-0.168, 0.009, -86.895), size = Vector(0.095, 0.095, 0.095), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} },
		["BALL+"] = { type = "Model", model = "models/mechanics/wheels/wheel_spike_48.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "BALL", pos = Vector(0, 0, 0), angle = Angle(-0.406, -0.02, -56.831), size = Vector(0.095, 0.095, 0.095), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} },
		["BALL++"] = { type = "Model", model = "models/mechanics/wheels/wheel_spike_48.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "BALL", pos = Vector(0, 0, 0), angle = Angle(0.594, -0.376, 65.741), size = Vector(0.095, 0.095, 0.095), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} },
		["BALL+++"] = { type = "Model", model = "models/mechanics/wheels/wheel_spike_48.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "BALL", pos = Vector(0, 0, 0), angle = Angle(0, 0, 33.512), size = Vector(0.095, 0.095, 0.095), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} },
		["ghard"] = { type = "Model", model = "models/props_phx/construct/metal_dome360.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "grip", pos = Vector(12.88, -0.049, 0.085), angle = Angle(4.882, 91.467, -96.667), size = Vector(0.031, 0.031, 0.031), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} },
		["grip"] = { type = "Model", model = "models/mechanics/robotics/a2.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(3.158, 1.752, -5.489), angle = Angle(-86.717, -28.4, 149.11301), size = Vector(-0.485, 0.077, 0.109), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/props/CS_militia/roofbeams03", skin = 0, bodygroup = {} },
		["ring"] = { type = "Model", model = "models/props_phx/construct/metal_dome360.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "grip", pos = Vector(-11.394, -0.025, -0.008), angle = Angle(5.428, 97.784, -90.807), size = Vector(0.011, 0.015, 0.016), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} },
		["ring1"] = { type = "Model", model = "models/props_phx/construct/metal_wire1x1.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "grip", pos = Vector(-12.501, 0.108, 0.005), angle = Angle(-46.818, 15.34, -81.984), size = Vector(0.014, 0.014, 0.014), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} }
	}
	SWEP.ShowViewModel = false
	SWEP.ShowWorldModel = false	
end

SWEP.Base = "weapon_zs_basemelee"

SWEP.ViewModel = "models/weapons/c_stunstick.mdl"
SWEP.WorldModel = "models/weapons/w_stunbaton.mdl"
SWEP.UseHands = true

SWEP.HoldType = "melee"

SWEP.MeleeDamage = 55
SWEP.StunDamage = 10
SWEP.MeleeRange = 88
SWEP.MeleeSize = 1.5
SWEP.Primary.Delay = 1.5
SWEP.DamageType = DMG_CLUB
SWEP.MissAnim = ACT_VM_MISSCENTER



SWEP.Stamina = 44

SWEP.SwingTime = 0.9
SWEP.SwingRotation = Angle(60, 0, 0)
SWEP.SwingOffset = Vector(0, -50, 0)
SWEP.SwingHoldType = "grenade"


function SWEP:PlaySwingSound()
	self:EmitSound("weapons/iceaxe/iceaxe_swing1.wav", 75, math.random(65, 70))
end

function SWEP:PlayHitSound()
	self:EmitSound("physics/metal/metal_canister_impact_hard"..math.random(3)..".wav", 75, math.Rand(86, 90))
end

function SWEP:PlayHitFleshSound()
	self:EmitSound("physics/body/body_medium_break"..math.random(2, 4)..".wav", 75, math.Rand(86, 90))
end
function SWEP:SetHited(bool)
	self:SetDTBool(12,bool)
end
function SWEP:GetHited()
	return self:GetDTBool(12)
end
function SWEP:PlayerHitUtil(owner, damage, hitent, dmginfo)
	if hitent and !owner:GetFocusD() then
		local hited = self:GetHited()
		if hited then
			hitent:GiveStatus("knockdown", 4)
		end
		self:SetHited(!hited)
	end
end
if SERVER then return end
local redColor = Color(129,0,0)
function SWEP:PreDrawViewModel(vm)
	if self.ShowViewModel == false then
		render.SetBlend(0)
	end
	local owner = self:GetOwner()
	local vel = self.VElements
	for k,v in pairs(vel) do
		if string.sub(k,0,#"ball") == "BALL" then
			v.color = self:GetHited() and redColor or COLOR_WHITE
		end 
	end
end
--math.Approach()
function SWEP:DrawWorldModel()
	local owner = self:GetOwner()
	for k,v in pairs(self.WElements) do
		
		if string.sub(k,0,#"BALL") == "BALL" then
			v.color = self:GetHited() and redColor or COLOR_WHITE
		end
	end
	self.BaseClass.DrawWorldModel(self)
end
