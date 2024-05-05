local meta = FindMetaTable("Weapon")
if not meta then return end

meta.GetNextPrimaryAttack = meta.GetNextPrimaryFire
meta.GetNextSecondaryAttack = meta.GetNextSecondaryFire
meta.SetNextPrimaryAttack = meta.SetNextPrimaryFire
meta.SetNextSecondaryAttack = meta.SetNextSecondaryFire

function meta:EmptyAll(emptyclip)
	if self.Primary and string.lower(self.Primary.Ammo or "") ~= "none" then
		local owner = self:GetOwner()
		if owner:IsValid() then
			if self:Clip1() >= 1 then
				owner:GiveAmmo(self:Clip1(), self.Primary.Ammo, true)
			end
			owner:RemoveAmmo(self.Primary.DefaultClip, self.Primary.Ammo)
		end
		if emptyclip then
			self:SetClip1(0)
		end
	end
	if self.Secondary and string.lower(self.Secondary.Ammo or "") ~= "none" then
		local owner = self:GetOwner()
		if owner:IsValid() then
			if self:Clip2() >= 1 then
				owner:GiveAmmo(self:Clip2(), self.Secondary.Ammo, true)
			end
			owner:RemoveAmmo(self.Secondary.DefaultClip, self.Secondary.Ammo)
		end
		if emptyclip then
			self:SetClip2(0)
		end
	end
end

function meta:ValidPrimaryAmmo()
	local ammotype = self:GetPrimaryAmmoTypeString()
	if ammotype and ammotype ~= "none" and ammotype ~= "autocharging" and ammotype~= "dummy" then
		return ammotype
	end
end

function meta:ValidSecondaryAmmo()
	local ammotype = self:GetSecondaryAmmoTypeString()
	if ammotype and ammotype ~= "none" and ammotype ~= "autocharging" and ammotype~= "dummy" then
		return ammotype
	end
end

function meta:SetNextReload(fTime)
	self.m_NextReload = fTime
end

function meta:GetNextReload()
	return self.m_NextReload or 0
end

function meta:GetPrimaryAmmoCount()
	return self:GetOwner():GetAmmoCount(self.Primary.Ammo) + self:Clip1()
end

function meta:GetSecondaryAmmoCount()
	return self:GetOwner():GetAmmoCount(self.Secondary.Ammo) + self:Clip2()
end

function meta:HideViewAndWorldModel()
	self:HideViewModel()
	self:HideWorldModel()
end
meta.HideWorldAndViewModel = meta.HideViewAndWorldModel

if SERVER then
	function meta:HideWorldModel()
		self:DrawShadow(false)
	end

	function meta:HideViewModel()
	end
end

function meta:TakeCombinedPrimaryAmmo(amount)
	local ammotype = self.Primary.Ammo
	local owner = self:GetOwner()
	local clip = self:Clip1()
	local reserves = owner:GetAmmoCount(ammotype)

	amount = math.min(reserves + clip, amount)

	local fromreserves = math.min(reserves, amount)
	if fromreserves > 0 then
		amount = amount - fromreserves
		self:GetOwner():RemoveAmmo(fromreserves, ammotype)
	end

	local fromclip = math.min(clip, amount)
	if fromclip > 0 then
		self:SetClip1(clip - fromclip)
	end
end

function meta:TakeCombinedSecondaryAmmo(amount)
	local ammotype = self.Secondary.Ammo
	local owner = self:GetOwner()
	local clip = self:Clip2()
	local reserves = owner:GetAmmoCount(ammotype)

	amount = math.min(reserves + clip, amount)

	local fromreserves = math.min(reserves, amount)
	if fromreserves > 0 then
		amount = amount - fromreserves
		self:GetOwner():RemoveAmmo(fromreserves, ammotype)
	end

	local fromclip = math.min(clip, amount)
	if fromclip > 0 then
		self:SetClip2(clip - fromclip)
	end
end

local TranslatedAmmo = {}
TranslatedAmmo[-1] = "none"
TranslatedAmmo[0] = "none"
TranslatedAmmo[1] = "ar2"
TranslatedAmmo[2] = "alyxgun"
TranslatedAmmo[3] = "pistol"
TranslatedAmmo[4] = "smg1"
TranslatedAmmo[5] = "357"
TranslatedAmmo[6] = "xbowbolt"
TranslatedAmmo[7] = "buckshot"
TranslatedAmmo[8] = "rpg_round"
TranslatedAmmo[9] = "smg1_grenade"
TranslatedAmmo[10] = "sniperround"
TranslatedAmmo[11] = "sniperpenetratedround"
TranslatedAmmo[12] = "grenade"
TranslatedAmmo[13] = "thumper"
TranslatedAmmo[14] = "gravity"
TranslatedAmmo[14] = "battery"
TranslatedAmmo[15] = "gaussenergy"
TranslatedAmmo[16] = "combinecannon"
TranslatedAmmo[17] = "airboatgun"
TranslatedAmmo[18] = "striderminigun"
TranslatedAmmo[19] = "helicoptergun"
TranslatedAmmo[20] = "ar2altfire"
TranslatedAmmo[21] = "slam"

function meta:GetPrimaryAmmoTypeString()
	if self.Primary and self.Primary.Ammo then return string.lower(self.Primary.Ammo) end
	return TranslatedAmmo[self:GetPrimaryAmmoType()] or "none"
end

function meta:GetSecondaryAmmoTypeString()
	if self.Secondary and self.Secondary.Ammo then return string.lower(self.Secondary.Ammo) end
	return TranslatedAmmo[self:GetSecondaryAmmoType()] or "none"
end
meta.OldGetPrintName = FindMetaTable("Weapon").GetPrintName
function meta:GetPrintName()
	if CLIENT then
		if self.TranslateName then
			self.PrintName = translate.Get(self.TranslateName)
		end
	end
	return self.PrintName and self.PrintName or self:GetClass()
end
if not CLIENT then return end

function meta:DrawCrosshair()
	if GetConVarNumber("crosshair") ~= 1 then return end

	self:DrawCrosshairCross()
	self:DrawCrosshairDot()
end

local ironsightscrosshair = CreateClientConVar("zsb_ironsightscrosshair", "0", true, false):GetBool()
cvars.AddChangeCallback("zsb_ironsightscrosshair", function(cvar, oldvalue, newvalue)
	ironsightscrosshair = tonumber(newvalue) == 1
end)

local CrossHairScale = 1
local function DrawDot(x, y)
	surface.SetDrawColor(GAMEMODE.CrosshairColor)
	surface.DrawRect(x - 2, y - 2, 4, 4)
	surface.SetDrawColor(0, 0, 0, 220)
	surface.DrawOutlinedRect(x - 2, y - 2, 4, 4)
end
local matGrad = Material("VGUI/gradient-r")
local function DrawLine(x, y, rot)
	rot = 270 - rot
	surface.SetMaterial(matGrad)
	surface.SetDrawColor(0, 0, 0, 220)
	surface.DrawTexturedRectRotated(x, y, 14, 4, rot)
	surface.SetDrawColor(GAMEMODE.CrosshairColor)
	surface.DrawTexturedRectRotated(x, y, 12, 2, rot)
end
local baserot = 0
function meta:DrawCrosshairCross()
	local x = ScrW() * 0.5
	local y = ScrH() * 0.5

	local ironsights = self.GetIronsights and self:GetIronsights()

	local owner = self:GetOwner()

	local cone = self:GetCone()
	if cone <= 0 or ironsights and not ironsightscrosshair then return end

	cone = ScrH() / 76.8 * cone

	CrossHairScale = math.Approach(CrossHairScale, cone, FrameTime() * math.max(5, math.abs(CrossHairScale - cone) * 0.02))

	local midarea = 40 * CrossHairScale

	local vel = LocalPlayer():GetVelocity()
	local len = vel:Length()
	if GAMEMODE.NoCrosshairRotate then
		baserot = 0
	else
		baserot = math.NormalizeAngle(baserot + vel:GetNormalized():Dot(EyeAngles():Right()) * math.min(10, len / 200))
	end

	--[[if baserot ~= 0 then
		render.PushFilterMag(TEXFILTER.ANISOTROPIC)
		render.PushFilterMin(TEXFILTER.ANISOTROPIC)
	end]]

	local ang = Angle(0, 0, baserot)
	for i=0, 359, 360 / 4 do
		ang.roll = baserot + i
		local p = ang:Up() * midarea
		DrawLine(math.Round(x + p.y), math.Round(y + p.z), ang.roll)
	end

	--[[if baserot ~= 0 then
		render.PopFilterMag()
		render.PopFilterMin()
	end]]
end



function meta:DrawCrosshairDot()
	local x = ScrW() * 0.5
	local y = ScrH() * 0.5
	local localx = x*1.95
	local yadd = 0
	local screen = BetterScreenScale()
	if MySelf:IsSkillActive(SKILL_S_STICKY_FINGERS) then
		local med = math.max(0,math.Round(MySelf:GetNWFloat("sticky_cd")-CurTime(),1))
		draw.SimpleText("(R + SHIFT) Следующий ТП:"..med,"ZSHUDFontSmallest", localx, y+yadd*BetterScreenScale(), med == 0 and COLOR_GREEN or COLOR_RED, TEXT_ALIGN_RIGHT, TEXT_ALIGN_CENTER)
		yadd = yadd + 20 * screen
	end
	if MySelf:IsSkillActive(SKILL_WONDERFUL) then
		local med = math.max(0,math.Round(MySelf:GetNWFloat("dash_cd")-CurTime(),1))
		draw.SimpleText("(SHIFT) Следующий рывок:"..med,"ZSHUDFontSmallest", localx, y+yadd*BetterScreenScale(), med == 0 and COLOR_GREEN or COLOR_RED, TEXT_ALIGN_RIGHT, TEXT_ALIGN_CENTER)
		yadd = yadd + 20 * screen
	end
	if MySelf:IsSkillActive(SKILL_STARDUST) then
		local med = math.max(0,math.Round(MySelf:GetNWFloat("star_upd")-CurTime(),1))
		draw.SimpleText("Следующee сохранение позиции:"..med,"ZSHUDFontSmallest", localx, y+yadd*BetterScreenScale(), med == 0 and COLOR_GREEN or COLOR_RED, TEXT_ALIGN_RIGHT, TEXT_ALIGN_CENTER)
		yadd = yadd + 20 * screen
	end
	if MySelf:IsSkillActive(SKILL_STARDUST) then
		local med = math.max(0,math.Round(MySelf:GetNWFloat("star_cd")-CurTime(),1))
		draw.SimpleText("(B или "..(input.LookupBinding("+zoom") or "Z")..") Телепорт:"..med,"ZSHUDFontSmallest", localx, y+yadd*BetterScreenScale(), med == 0 and COLOR_GREEN or COLOR_RED, TEXT_ALIGN_RIGHT, TEXT_ALIGN_CENTER)
		yadd = yadd + 20 * screen
	end
	if MySelf:IsSkillActive(SKILL_DEEPFOCUS) then
		local med = math.max(0,math.Round(MySelf:GetNWFloat("deepfocus_cd")-CurTime(),1))
		draw.SimpleText("(E + R)Войти в фокус:"..med,"ZSHUDFontSmallest", localx, y+yadd*BetterScreenScale(), med == 0 and COLOR_GREEN or COLOR_RED, TEXT_ALIGN_RIGHT, TEXT_ALIGN_CENTER)
		yadd = yadd + 20 * screen
		if med >= 8 then
			draw.SimpleText("ГЛУБОКИЙ ФОКУС: "..med-8,"ZSHUDFontSmallest", localx, y+yadd*BetterScreenScale(),  COLOR_CYAN, TEXT_ALIGN_RIGHT, TEXT_ALIGN_CENTER)
			yadd = yadd + 20 * screen
		end
	end
	local mich = MySelf:GetDTEntity(5)
	if MySelf:IsSkillActive(SKILL_S_CINDERELA_B2) and mich:IsValid() and mich:GetStatus('c_buff') then
		local med = mich:GetStatus('c_buff')
		draw.SimpleText("Сила баффа:"..(math.Round(med:GetDTFloat(12)/625,3)*100).."%","ZSHUDFontSmallest", localx, y+yadd*BetterScreenScale(), COLOR_GREEN, TEXT_ALIGN_RIGHT, TEXT_ALIGN_CENTER)
		yadd = yadd + 20 * screen
	end

	surface.SetDrawColor(GAMEMODE.CrosshairColor2)
	surface.DrawRect(x - 2, y - 2, 4, 4)
	surface.SetDrawColor(0, 0, 0, 220)
	surface.DrawOutlinedRect(x - 2, y - 2, 4, 4)
end
local insuredcolor = Color(0, 180, 255)
function meta:BaseDrawWeaponSelection(x, y, wide, tall, alpha)
	--killicon.Draw(x + wide * 0.5, y + tall * 0.5, self:GetClass(), 255)
	-- Doesn't work with pngs...
	local ki = killicon.Get(self:GetClass())
	local cols = ki and ki[#ki] or ""

	if ki and #ki == 3 then
		draw.SimpleText(ki[2], ki[1] .. "ws", x + wide * 0.5, y + tall * 0.5 + 18 * BetterScreenScale(), Color(cols.r, cols.g, cols.b, alpha), TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
	elseif ki then
		local material = Material(ki[1])
		local wid, hei = material:Width(), material:Height()
		surface.SetMaterial(material)
		surface.SetDrawColor(cols.r, cols.g, cols.b, alpha )
		surface.DrawTexturedRect(x + wide * 0.5 - wid * 0.5, y + tall * 0.5 - hei * 0.5, wid, hei)
		
	end
	local isinsured = GAMEMODE:IsClassicMode() and GAMEMODE.ClassicModeInsuredWeps[self:GetClass()]
	surface.SetDrawColor(color_black_alpha220)
	surface.DrawRect(x, y + tall * 0.65, wide, tall * 0.2)
	drawcol = isinsured and insuredcolor or COLOR_RED
	draw.SimpleText(self:GetPrintName(), "ZSHUDFontSmallNS", x + wide * 0.5, y + tall * 0.75, drawcol, TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
	if isinsured then
		draw.SimpleText("!", "ZSIconFont", x + wide -12, y + 12, drawcol, TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
	end
	return true
end
local function empty() end
local function NULLViewModelPosition(self, pos, ang)
	return pos + ang:Forward() * -256, ang
end

function meta:HideWorldModel()
	self:DrawShadow(false)
	self.DrawWorldModel = empty
	self.DrawWorldModelTranslucent = empty
end

function meta:HideViewModel()
	self.GetViewModelPosition = NULLViewModelPosition
end
local texGradientU = Material("vgui/gradient-u")
local texGradientD = Material("vgui/gradient-d")
local texGradientR = Material("vgui/gradient-r")
local surface_DrawTexturedRect = surface.DrawTexturedRect
local surface_SetDrawColor = surface.SetDrawColor
local surface_DrawRect = surface.DrawRect
function meta:DrawFuturisticScope()
	local scrw, scrh = ScrW(), ScrH()
	local size = math.min(scrw, scrh)
	local hw,hh = scrw * 0.5, scrh * 0.5
	local screenscale = BetterScreenScale()
	local gradsize = math.ceil(size * 0.14)
	local line = 38 * screenscale

	for i=0,6 do
		local rectsize = math.floor(screenscale * 44) + i * math.floor(130 * screenscale)
		local hrectsize = rectsize * 0.5
		surface_SetDrawColor(0,145,255,math.max(35,25 + i * 30)/2)
		surface.DrawOutlinedRect(hw-hrectsize,hh-hrectsize,rectsize,rectsize)
	end
	if scrw > size then
		local extra = (scrw - size) * 0.5
		for i=0,12 do
			surface_SetDrawColor(0,145,255, math.max(10,255 - i * 21.25)/2)
			surface.DrawLine(hw,i*line,hw,i*line+line)
			surface.DrawLine(hw,scrh-i*line,hw,scrh-i*line-line)
			surface.DrawLine(i*line+extra,hh,i*line+line+extra,hh)
			surface.DrawLine(scrw-i*line-extra,hh,scrw-i*line-line-extra,hh)
		end
		surface_SetDrawColor(0, 0, 0, 255)
		surface_DrawRect(0, 0, extra, scrh)
		surface_DrawRect(scrw - extra, 0, extra, scrh)
	end
	if scrh > size then
		local extra = (scrh - size) * 0.5
		for i=0,12 do
			surface_SetDrawColor(0,145,255, math.max(10,255 - i * 21.25)/2)
			surface.DrawLine(hw,i*line+extra,hw,i*line+line+extra)
			surface.DrawLine(hw,scrh-i*line-extra,hw,scrh-i*line-line-extra)
			surface.DrawLine(i*line,hh,i*line+line,hh)
			surface.DrawLine(scrw-i*line,hh,scrw-i*line-line,hh)
		end
		surface_SetDrawColor(0, 0, 0, 255)
		surface_DrawRect(0, 0, scrw, extra)
		surface_DrawRect(0, scrh - extra, scrw, extra)
	end

	surface.SetMaterial(texGradientU)
	surface_SetDrawColor(0,0,0,255)
	surface_DrawTexturedRect((scrw - size) * 0.5, (scrh - size) * 0.5, size, gradsize)
	surface.SetMaterial(texGradientD)
	surface_DrawTexturedRect((scrw - size) * 0.5, scrh - (scrh - size) * 0.5 - gradsize, size, gradsize)
	surface.SetMaterial(texGradientR)
	surface_DrawTexturedRect(scrw - (scrw - size) * 0.5 - gradsize, (scrh - size) * 0.5, gradsize, size)
	surface.DrawTexturedRectRotated((scrw - size) * 0.5 + gradsize / 2, (scrh - size) * 0.5 + size / 2, gradsize, size, 180)
end