AddCSLuaFile()

if CLIENT then
	SWEP.TranslateName = "weapon_mechanicwrench_name"
	SWEP.TranslateDesc = "weapon_mechanicwrench_desc"

	SWEP.ViewModelFOV = 55
	SWEP.ViewModelFlip = false

	SWEP.ShowViewModel = false
	SWEP.ShowWorldModel = false
	SWEP.VElements = {
		["base"] = { type = "Model", model = "models/props_c17/tools_wrench01a.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(2, 2, 0), angle = Angle(190, 0, 90), size = Vector(1.5, 1.5, 1.5), color = Color(255, 255, 255, 255), surpresslightning = false, material = "models/props_combine/metal_combinebridge001", skin = 0, bodygroup = {} }
	}
	SWEP.WElements = {
		["base"] = { type = "Model", model = "models/props_c17/tools_wrench01a.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(2, 1, 0), angle = Angle(190, 90, 90), size = Vector(1.5, 1.5, 1.5), color = Color(255, 255, 255, 255), surpresslightning = false, material = "models/props_combine/metal_combinebridge001", skin = 0, bodygroup = {} }
	}
end

SWEP.Base = "weapon_zs_basemelee"

SWEP.ViewModel = "models/weapons/c_crowbar.mdl"
SWEP.WorldModel = "models/props_c17/tools_wrench01a.mdl"
SWEP.ModelScale = 1.5
SWEP.UseHands = true

SWEP.HoldType = "melee"
SWEP.Stamina = 8

SWEP.Primary.Delay = 1.3
SWEP.MeleeDamage = 12
SWEP.MeleeRange = 50
SWEP.MeleeSize = 0.875

SWEP.HitGesture = ACT_HL2MP_GESTURE_RANGE_ATTACK_MELEE
SWEP.MissGesture = SWEP.HitGesture

SWEP.SwingTime = 0.19
SWEP.SwingRotation = Angle(30, -30, -30)
SWEP.SwingOffset = Vector(0, -30, 0)
SWEP.SwingHoldType = "grenade"

SWEP.SkipForCommsCalc = true

function SWEP:PlayHitSound()
	self:EmitSound("weapons/melee/crowbar/crowbar_hit-"..math.random(4)..".ogg", 75, math.random(120, 125))
end

function SWEP:PlayRepairSound(hitent)
	hitent:EmitSound("npc/dog/dog_servo"..math.random(7, 8)..".wav", 70, math.random(100, 105))
end
local function RepairEffect(self,hitent,tr)
	self:PlayRepairSound(hitent)
	local effectdata = EffectData()
		effectdata:SetOrigin(tr.HitPos)
		effectdata:SetNormal(tr.HitNormal)
		effectdata:SetMagnitude(1)
	util.Effect("nailrepaired", effectdata, true, true)
end
function SWEP:OnMeleeHit(hitent, hitflesh, tr)
	if not hitent:IsValid() then return end

	local owner = self:GetOwner()
	if hitent.GetUpgrade then
		local upgrades = hitent:GetUpgrade()
		local cost = (upgrades+1) * (hitent.UpgradeCost or 45)
		local points = owner:GetPoints()
		local ownerofobject = hitent.GetObjectOwner and hitent:GetObjectOwner() or hitent:GetOwner()
		if owner:Team() ~= ownerofobject:Team() then
			return
		end
		if !self:GetBlock() then
			if cost < points and upgrades < hitent.MaxUpgrades then
				owner:SetPoints(points - cost)
				hitent:SetUpgrade(upgrades + 1)
				RepairEffect(self,hitent,tr)
			end
		else
			if upgrades > 0 and ownerofobject == owner then
				owner:SetPoints(points + (cost - 45)*0.65)
				hitent:SetUpgrade(math.max(0,upgrades - 1))
				local effectdata = EffectData()
				effectdata:SetOrigin(tr.HitPos)
				effectdata:SetNormal(tr.HitNormal)
				effectdata:SetMagnitude(1)
			util.Effect("electricexplosion", effectdata, true, true)
			end
		end
	end
	if hitent.HitByWrench and hitent:HitByWrench(self, owner, tr) then
		RepairEffect(self,hitent,tr)
		return true
	end
end
if SERVER then return end
local texGradDown = surface.GetTextureID("VGUI/gradient_down")
function SWEP:DrawHUD()
	self.BaseClass.DrawHUD(self)
	local owner = self:GetOwner()
	local tr = owner:GetEyeTrace()
	local ent = tr.Entity
	if ent and ent:IsValid() and ent.GetUpgrade then
		local maxupgrade = ent.MaxUpgrades
		local upgrades = ent:GetUpgrade()


		local screenscale = BetterScreenScale()
		local scrW = ScrW()
		local scrH = ScrH()
		local wid = 200
		local hei = 30
		local x, y = (ScrW()- wid)*0.5 , (ScrH() - hei)*0.6
		local metersize = math.max(1-math.max((maxupgrade-upgrades),0)/maxupgrade,0.001)
		if metersize > 0 then
			surface.SetDrawColor(40, 32, 103)
			surface.DrawRect(x, y, wid, hei)

			surface.SetDrawColor(118, 36, 113)
			surface.SetTexture(texGradDown)
			surface.DrawTexturedRect(x, y, metersize * wid, hei)

			surface.SetDrawColor(255, 255, 255)
			surface.DrawOutlinedRect(x, y, wid, hei)
			local maxedout = upgrades == maxupgrade
			draw.DrawText(maxedout and "ПОЛНАЯ ПРОКАЧКА" or "ПРОКАЧКА ("..upgrades.."/"..maxupgrade..")", "ZSHUDFontSmallestNS", x+wid/2, y, maxedout and COLOR_YELLOW or COLOR_CYAN, TEXT_ALIGN_CENTER )
			local upgradecost = (ent.UpgradeCost or 45)*(upgrades+1)
			if !maxedout then
				y = y + 30 BetterScreenScale()
				draw.DrawText("Стоимость улучшения - "..upgradecost, "ZSHUDFontSmallestNS", x+wid/2, y, upgradecost <= owner:GetPoints() and COLOR_GREEN or COLOR_RED, TEXT_ALIGN_CENTER )
			end
			if maxedout and ent.AvailableUpgrades then
				y = y + 30 BetterScreenScale()
				draw.DrawText("ДОСТУПНА ВЕТКА УЛУЧШЕНИЙ! (E)", "ZSHUDFontSmallestNS", x+wid/2, y, COLOR_CYAN, TEXT_ALIGN_CENTER )
			end
			if ent.WhatUpgradeGive then
				for k,v in pairs(ent.WhatUpgradeGive) do
					y  = y + 30 * BetterScreenScale()
					local l1,l2 
					if istable(v) then
						l1 = v[1]
						l2 = v[2]
					else
						l1 = v
					end
					l1 = l1 * upgrades
					if k ~= "Урон" and k ~= "Макс.патрон" and !(istable(v) and v[3]) then
						l1 = "+"..l1.."%"
					else
						l1 = l1 + (l2 or ent.BaseDamageST)
					end
					draw.DrawText(k.." "..l1, "ZSHUDFontSmallestNS", x+wid/2, y,COLOR_WHITE, TEXT_ALIGN_CENTER )
				end
			end
		end
	end
end
