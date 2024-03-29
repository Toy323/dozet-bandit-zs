AddCSLuaFile()

if CLIENT then
	SWEP.TranslateName = "weapon_enemyradar_name"
	SWEP.TranslateDesc = "weapon_enemyradar_desc"

	SWEP.ViewModelFOV = 70

	SWEP.Slot = 4

	SWEP.ShowViewModel = false
	SWEP.ShowWorldModel = false
	SWEP.VElements = {
		["base"] = { type = "Model", model = "models/props_lab/harddrive02.mdl", bone = "v_weapon.c4", rel = "", pos = Vector(-2.47, -0.002, -0), angle = Angle(0, 0, 0), size = Vector(0.597, 0.481, 0.337), color = Color(155, 155, 155, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["base+++"] = { type = "Model", model = "models/props_lab/generatorconsole.mdl", bone = "v_weapon.c4", rel = "base", pos = Vector(1.47, 0.127, -1.295), angle = Angle(0, 0, -87.741), size = Vector(0.09, 0.09, 0.09), color = Color(155, 155, 155, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["base+"] = { type = "Model", model = "models/props/cs_office/tv_plasma.mdl", bone = "v_weapon.c4", rel = "base", pos = Vector(-0.267, -0.809, 0.991), angle = Angle(-27.102, 90, 0), size = Vector(0.192, 0.192, 0.192), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["base++"] = { type = "Model", model = "models/props_lab/tpswitch.mdl", bone = "v_weapon.c4", rel = "base", pos = Vector(-4.09, -1.933, -1.458), angle = Angle(0, 90, 0), size = Vector(0.123, 0.123, 0.123), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} }
	}
	SWEP.WElements = {
		["base"] = { type = "Model", model = "models/props_lab/harddrive02.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(3.191, 6.157, -0.682), angle = Angle(0, -87.268, -126.991), size = Vector(0.572, 0.3, 0.301), color = Color(155, 155, 155, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["base+++"] = { type = "Model", model = "models/props_lab/generatorconsole.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "base", pos = Vector(1.47, 0.795, -1.532), angle = Angle(0, 0, -87.741), size = Vector(0.09, 0.09, 0.09), color = Color(155, 155, 155, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["base+"] = { type = "Model", model = "models/props/cs_office/tv_plasma.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "base", pos = Vector(-0.267, -0.327, 0.991), angle = Angle(-27.102, 90, 0), size = Vector(0.192, 0.192, 0.192), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["base++"] = { type = "Model", model = "models/props_lab/tpswitch.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "base", pos = Vector(-4.09, -1.693, -1.458), angle = Angle(0, 90, 0), size = Vector(0.123, 0.123, 0.123), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} }
	}
end

SWEP.Base = "weapon_zs_basemelee"

SWEP.ViewModel = "models/weapons/cstrike/c_c4.mdl"
SWEP.WorldModel = "models/weapons/w_slam.mdl"
SWEP.ModelScale = 0.5
SWEP.UseHands = true

SWEP.Primary.ClipSize = -1
SWEP.Primary.DefaultClip = -1
SWEP.Primary.Ammo = "none"

SWEP.Secondary.ClipSize = -1
SWEP.Secondary.DefaultClip = -1
SWEP.Secondary.Automatic = false
SWEP.Secondary.Ammo = "none"

SWEP.WalkSpeed = SPEED_NORMAL

SWEP.HoldType = "slam"
SWEP.ScanDelay = 8
SWEP.LastScan = 0
SWEP.targets = {}
SWEP.targets1 = {}
SWEP.NextDamage = 0
function SWEP:PrimaryAttack()
end

function SWEP:SecondaryAttack()
end

function SWEP:Reload()
end

function SWEP:Think()
	local mul = 1
	local owner = self:GetOwner()
	if owner:IsSkillActive(SKILL_AUTOSCAN) then
		mul = mul + 1.5
	end
	if owner:IsSkillActive(SKILL_FOLGA) then
		return
	end
	if CLIENT and GAMEMODE:GetWaveActive() and self.LastScan + (self.ScanDelay * mul ) <= CurTime() then
		self.targets = {}
		self.targets1 = {}
		local toscan = player.GetAllActive()
		table.Add(toscan, ents.FindByClass("prop_obj_nest"))
		for _, ent in pairs(toscan) do
			if (ent:GetClass() == "prop_obj_nest") or (owner:IsPlayer() and ent:IsPlayer() and ent:Team() ~= owner:Team() and (ent:Team() == TEAM_HUMAN or ent:Team() == TEAM_BANDIT) and ent:Alive()) then 
				table.insert(self.targets,ent:GetPos())
				table.insert(self.targets1,	ent)
			end
		end
		self.LastScan = CurTime()
		surface.PlaySound("npc/combine_gunship/gunship_ping_search.wav")
	end
	local cold = owner:IsSkillActive(SKILL_COLD_REFUSION) 
	if SERVER and GAMEMODE:GetWaveActive() and self.NextDamage <= CurTime() and owner:IsSkillActive(SKILL_DANGER_RADIOWAVES) then
		for _, ent in pairs(ents.FindInSphere(owner:GetPos(), 250)) do
			if WorldVisible(owner:LocalToWorld(Vector(0, 0, 30)), ent:NearestPoint(owner:LocalToWorld(Vector(0, 0, 30)))) then
				if ent:IsValid() and ent:IsPlayer() and ent:Team() ~= owner:Team() and ent:Alive() then
					if ent:IsSkillActive(SKILL_FOLGA) then
						owner = ent
					end
					if cold then
						ent:TakeDamage(1, owner,self)
						ent:AddCold(15)
					else
						ent:TakeDamage(15, owner,self)
						owner:SetBloodArmor(math.min(100,owner:GetBloodArmor() + 10))
					end
					self.NextDamage = CurTime() + 4.5
				end
			end
		end
	end
	if self.BaseClass.Think then
		self.BaseClass.Think(self)
	end
end

if not CLIENT then return end
local texGradDown = surface.GetTextureID("VGUI/gradient_down")
function SWEP:DrawHUD()
	if GAMEMODE:GetWaveActive() then
		for _, pos in pairs(self.targets) do
			self:DrawTarget(pos,18,0)
		end
		for _, pos in pairs(self.targets1) do
			for _, ent1 in pairs(ents.FindInSphere(self:GetOwner():GetPos(), 600)) do
				if ent1 ~= self:GetOwner() and ent1:IsPlayer() then
					self:DrawLowTgt(pos,18,0)
				end
			end
		end
		local mul = 1
		if self:GetOwner():IsSkillActive(SKILL_AUTOSCAN) then
			mul = mul + 1.5
		end
		local scrW = ScrW()
		local scrH = ScrH()
		local width = 200
		local height = 20
		local x, y = ScrW() - width - 32, ScrH() - height - 72
		local ratio = math.Clamp((CurTime() - self.LastScan) / self.ScanDelay / mul,0,1)
		
		surface.SetDrawColor(5, 5, 5, 180)
		surface.DrawRect(x, y, width, height)

		surface.SetDrawColor(255, 0, 0, 180)
		surface.SetTexture(texGradDown)
		surface.DrawTexturedRect(x, y, width*ratio, height)

		surface.SetDrawColor(255, 0, 0, 180)
		surface.DrawOutlinedRect(x - 1, y - 1, width + 2, height + 2)
	end

	if self.BaseClass.DrawHUD then
		self.BaseClass.DrawHUD(self)
	end
end

local texScope = Material("vgui/hud/autoaim")
function SWEP:DrawTarget(tgt, size, offset)
	local scrpos = tgt:ToScreen()
	scrpos.x = math.Clamp(scrpos.x, size, ScrW() - size)
	scrpos.y = math.Clamp(scrpos.y, size, ScrH() - size)
	surface.DrawCircle(scrpos.x - size, scrpos.y - size, size * 2,255,0,0,150)
	local text = math.ceil(self:GetOwner():GetPos():Distance(tgt))
	local w, h = surface.GetTextSize(text)
	--surface.SetFont("ZSHUDFontSmall")
	--surface.DrawText(text)
	draw.SimpleText(text, "ZSHUDFontSmallest", scrpos.x - size- w/2,scrpos.y - size+ (offset * size) - h/2)
end
function SWEP:DrawLowTgt(tgt, size, offset)

end
