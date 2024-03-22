AddCSLuaFile()

if CLIENT then
	SWEP.TranslateName = "weapon_gknife_name"
	SWEP.TranslateDesc = "weapon_gknife_desc"


	SWEP.VElements = {
		["blade"] = { type = "Model", model = "models/hunter/misc/squarecap1x1x1.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(3.642, -0.918, -9.829), angle = Angle(-14.189, -103.286, 179.601), size = Vector(0.003, 0.023, 0.308), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/XQM/JetBody2TailPiece_diffuse", skin = 0, bodygroup = {} },
		["cloak device"] = { type = "Model", model = "models/Items/battery.mdl", bone = "ValveBiped.Bip01_L_Hand", rel = "", pos = Vector(3.985, 2.305, -1.266), angle = Angle(-0.824, -9.932, -4.761), size = Vector(0.5, 0.5, 0.5), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} },
		["cloak device+"] = { type = "Model", model = "models/Items/battery.mdl", bone = "ValveBiped.Bip01_L_Hand", rel = "cloak device", pos = Vector(-0.843, -0.022, -0.018), angle = Angle(5.291, 178.48599, -1.619), size = Vector(0.502, 0.502, 0.502), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} },
		["cloak device++"] = { type = "Model", model = "models/Items/battery.mdl", bone = "ValveBiped.Bip01_L_Hand", rel = "cloak device", pos = Vector(-0.375, 0.194, -0.006), angle = Angle(-0.101, -91.485, -1.618), size = Vector(0.5, 0.5, 0.5), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} },
		["cloak device+++"] = { type = "Model", model = "models/Items/battery.mdl", bone = "ValveBiped.Bip01_L_Hand", rel = "cloak device", pos = Vector(-0.103, -0.376, 0.004), angle = Angle(0.855, 92.223, -0.527), size = Vector(0.5, 0.5, 0.5), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} },
		["core"] = { type = "Model", model = "models/XQM/Rails/gumball_1.mdl", bone = "ValveBiped.Bip01_L_Hand", rel = "cloak device", pos = Vector(-0.611, -0.003, 7.146), angle = Angle(16.326, 44.328, -148.674), size = Vector(0.038, 0.038, 0.038), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/shadertest/shader3", skin = 0, bodygroup = {} },
		["core infuser"] = { type = "Model", model = "models/props_combine/combine_mine01.mdl", bone = "ValveBiped.Bip01_L_Hand", rel = "cloak device", pos = Vector(-0.11, 0.01, 4.857), angle = Angle(-6.495, -143.17101, 0.827), size = Vector(0.117, 0.117, 0.117), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} },
		["ghard"] = { type = "Model", model = "models/mechanics/articulating/arm_base_b.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "blade", pos = Vector(0.257, 0, -7.14), angle = Angle(0, 0, 0), size = Vector(0.015, 0.046, 0.066), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/XQM//Deg360", skin = 0, bodygroup = {} },
		["grip"] = { type = "Model", model = "models/mechanics/robotics/a2.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "blade", pos = Vector(0.018, -0.012, -9.909), angle = Angle(-89.673, 122.482, -56.595), size = Vector(-0.105, 0.09, 0.048), color = Color(0, 0, 0, 255), surpresslightning = false, bonemerge = false, material = "models/props_combine/metal_combinebridge001", skin = 0, bodygroup = {} },
		["grip2"] = { type = "Model", model = "models/hunter/misc/roundthing2.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "blade", pos = Vector(0.038, -0.043, -12.832), angle = Angle(-0.641, 176.536, 0.657), size = Vector(-0.014, 0.009, 0.012), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/XQM//Deg360", skin = 0, bodygroup = {} }
	}
	
	SWEP.WElements = {
		["blade"] = { type = "Model", model = "models/hunter/misc/squarecap1x1x1.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(3.642, 2.401, -9.829), angle = Angle(8.256, -103.286, 179.601), size = Vector(0.003, 0.023, 0.308), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/XQM/JetBody2TailPiece_diffuse", skin = 0, bodygroup = {} },
		["cloak device"] = { type = "Model", model = "models/Items/battery.mdl", bone = "ValveBiped.Bip01_L_Hand", rel = "", pos = Vector(3.499, 3.49, -0.04), angle = Angle(32.934, -162.26601, 37.475), size = Vector(0.5, 0.5, 0.5), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} },
		["cloak device+"] = { type = "Model", model = "models/Items/battery.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "cloak device", pos = Vector(-0.843, -0.022, -0.018), angle = Angle(5.291, 178.48599, -1.619), size = Vector(0.502, 0.502, 0.502), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} },
		["cloak device++"] = { type = "Model", model = "models/Items/battery.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "cloak device", pos = Vector(-0.375, 0.194, -0.006), angle = Angle(-0.101, -91.485, -1.618), size = Vector(0.5, 0.5, 0.5), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} },
		["cloak device+++"] = { type = "Model", model = "models/Items/battery.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "cloak device", pos = Vector(-0.103, -0.376, 0.004), angle = Angle(0.855, 92.223, -0.527), size = Vector(0.5, 0.5, 0.5), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} },
		["core"] = { type = "Model", model = "models/XQM/Rails/gumball_1.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "cloak device", pos = Vector(-0.611, -0.003, 7.146), angle = Angle(16.326, 44.328, -148.674), size = Vector(0.038, 0.038, 0.038), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/shadertest/shader3", skin = 0, bodygroup = {} },
		["core infuser"] = { type = "Model", model = "models/props_combine/combine_mine01.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "cloak device", pos = Vector(-0.11, 0.01, 4.857), angle = Angle(-6.495, -143.17101, 0.827), size = Vector(0.117, 0.117, 0.117), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} },
		["ghard"] = { type = "Model", model = "models/mechanics/articulating/arm_base_b.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "blade", pos = Vector(0.257, 0, -7.14), angle = Angle(0, 0, 0), size = Vector(0.015, 0.046, 0.066), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/XQM//Deg360", skin = 0, bodygroup = {} },
		["grip"] = { type = "Model", model = "models/mechanics/robotics/a2.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "blade", pos = Vector(0.018, -0.012, -9.909), angle = Angle(-89.673, 122.482, -56.595), size = Vector(-0.105, 0.09, 0.048), color = Color(0, 0, 0, 255), surpresslightning = false, bonemerge = false, material = "models/props_combine/metal_combinebridge001", skin = 0, bodygroup = {} },
		["grip2"] = { type = "Model", model = "models/hunter/misc/roundthing2.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "blade", pos = Vector(0.038, -0.043, -12.832), angle = Angle(-0.641, 176.536, 0.657), size = Vector(-0.014, 0.009, 0.012), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/XQM//Deg360", skin = 0, bodygroup = {} }
	}

	SWEP.ViewModelFlip = false
	SWEP.ViewModelFOV = 55
end
SWEP.ShowViewModel = false
SWEP.ShowWorldModel = false

SWEP.Base = "weapon_zs_basemelee"

SWEP.HoldType = "knife"

SWEP.ViewModel = "models/weapons/cstrike/c_knife_t.mdl"
SWEP.WorldModel = "models/weapons/w_knife_t.mdl"
SWEP.UseHands = true

SWEP.MeleeDamage = 29
SWEP.MeleeRange = 64
SWEP.MeleeSize = 0.875

SWEP.WalkSpeed = SPEED_FASTEST

SWEP.Primary.Delay = 0.35

SWEP.Stamina = 6

SWEP.HitDecal = "Manhackcut"

SWEP.HitGesture = ACT_HL2MP_GESTURE_RANGE_ATTACK_KNIFE
SWEP.MissGesture = SWEP.HitGesture

SWEP.HitAnim = ACT_VM_MISSCENTER
SWEP.MissAnim = ACT_VM_PRIMARYATTACK

SWEP.NoHitSoundFlesh = true

function SWEP:PlaySwingSound()
	self:EmitSound("weapons/knife/knife_slash"..math.random(2)..".wav")
end

function SWEP:PlayHitSound()
	self:EmitSound("weapons/knife/knife_hitwall1.wav")
end

function SWEP:PlayHitFleshSound()
	self:EmitSound("weapons/knife/knife_hit"..math.random(4)..".wav")
end

function SWEP:OnMeleeHit(hitent, hitflesh, tr)
	self:SetStealthMeter(math.Clamp(self:GetStealthMeter()-10,0,100))
	if hitent:IsValid() and hitent:IsPlayer() and not self.m_BackStabbing and math.abs(hitent:GetForward():Angle().yaw - self:GetOwner():GetForward():Angle().yaw) <= 100 then
		self.m_BackStabbing = true
		self.MeleeDamage = self.MeleeDamage * 2
		self:SetStealthMeter(math.Clamp(self:GetStealthMeter()+20,0,100))
	end
	self.LastStealthMeterCheck = CurTime()+1
end

function SWEP:Reload(hitent, hitflesh, tr)
	if self:GetStealthMeter() > 99 then
		self:SetStealthMeter(0)
		local owner = self:GetOwner()
		owner.HumanSpeedAdder = (owner.HumanSpeedAdder or 0) + 360
		owner:ResetSpeed()
		timer.Simple(2, function(arguments)
			owner.HumanSpeedAdder = owner.HumanSpeedAdder - 360
			owner:ResetSpeed()
		end)
	end
end
function SWEP:PostOnMeleeHit(hitent, hitflesh, tr)
	if self.m_BackStabbing then
		self.m_BackStabbing = false

		self.MeleeDamage = self.MeleeDamage / 2
	end
end

SWEP.m_IsStealthWeapon = true
SWEP.StealthMeterTick = 0.05
SWEP.LastStealthMeterCheck = 0

function SWEP:SetupDataTables()
	self:NetworkVar("Float", 5, "StealthWepBlend")
	self:NetworkVar("Float", 6, "StealthMeter")
	if self.BaseClass.SetupDataTables then
		self.BaseClass.SetupDataTables(self)
	end
end

function SWEP:Think()
	local curTime = CurTime()
	local moverate = math.Clamp(self:GetOwner():GetVelocity():Length() / self.WalkSpeed, 0,1)*-3+1
	if curTime >= self.LastStealthMeterCheck+self.StealthMeterTick then
		self:SetStealthMeter(math.Clamp(self:GetStealthMeter()+moverate,0,100))
		self.LastStealthMeterCheck = curTime
	end
	self:SetStealthWepBlend(1-math.Clamp(self:GetStealthMeter()/100,0,1)*0.85)
	self.BaseClass.Think(self)	
end

function SWEP:Deploy()
	self:DrawShadow(false)
	if self:GetOwner() and self:GetOwner():IsPlayer() and self:GetOwner():Alive() then
		self:GetOwner():DrawShadow(false)
	end
	self:SetStealthWepBlend(1)
	self:SetStealthMeter(0)
	self:SendWeaponAnim(ACT_VM_DRAW_SILENCED)
	return self.BaseClass.Deploy(self)
end
function SWEP:Holster(wep)
	if self:GetOwner() and self:GetOwner():IsPlayer() then
		self:GetOwner():DrawShadow(true)
	end
	self:DrawShadow(true)
	return self.BaseClass.Holster(self)
end



if SERVER then
	function SWEP:InitializeHoldType()
		self.ActivityTranslate = {}
		self.ActivityTranslate[ACT_HL2MP_IDLE] = ACT_HL2MP_IDLE_KNIFE
		self.ActivityTranslate[ACT_HL2MP_WALK] = ACT_HL2MP_WALK_KNIFE
		self.ActivityTranslate[ACT_HL2MP_RUN] = ACT_HL2MP_RUN_KNIFE
		self.ActivityTranslate[ACT_HL2MP_IDLE_CROUCH] = ACT_HL2MP_IDLE_CROUCH_PHYSGUN
		self.ActivityTranslate[ACT_HL2MP_WALK_CROUCH] = ACT_HL2MP_WALK_CROUCH_KNIFE
		self.ActivityTranslate[ACT_HL2MP_GESTURE_RANGE_ATTACK] = ACT_HL2MP_GESTURE_RANGE_ATTACK_KNIFE
		self.ActivityTranslate[ACT_HL2MP_GESTURE_RELOAD] = ACT_HL2MP_GESTURE_RELOAD_KNIFE
		self.ActivityTranslate[ACT_HL2MP_JUMP] = ACT_HL2MP_JUMP_KNIFE
		self.ActivityTranslate[ACT_RANGE_ATTACK1] = ACT_RANGE_ATTACK_KNIFE
	end
end
if CLIENT then
	local texGradDown = surface.GetTextureID("VGUI/gradient_down")
	function SWEP:DrawHUD()
		local screenscale = BetterScreenScale()
		local scrW = ScrW()
		local scrH = ScrH()
		local wid = 200
		local hei = 30
		local x, y = (ScrW()- wid)*0.5 , (ScrH() - hei)*0.75
		local metersize = math.Clamp(self:GetStealthMeter()/100,0,1)
		if 0.05 < metersize then
			surface.SetDrawColor(5, 5, 5, 180)
			surface.DrawRect(x, y, wid, hei)

			surface.SetDrawColor(155, 155, 155, 180)
			surface.SetTexture(texGradDown)
			surface.DrawTexturedRect(x, y, metersize * wid, hei)

			surface.SetDrawColor(155, 155, 155, 180)
			surface.DrawOutlinedRect(x, y, wid, hei)

			draw.DrawText( translate.Get( "weapon_stalkersilenced_stealthmeter" ), "ZSHUDFontSmallestNS", x+wid/2, y, COLOR_GRAY, TEXT_ALIGN_CENTER )
		end
		self.BaseClass.DrawHUD(self)	
	end
	function SWEP:PreDrawViewModel(vm)
		if self.ShowViewModel == false then
			render.SetBlend(0)
		end
		local stealth = self:GetStealthMeter()/100
		for k,v in pairs(self.VElements) do
			if k == "core" then
				v.size = Vector(0.07*stealth,0.07*stealth,0.07*stealth)
			end
		end
	end
end