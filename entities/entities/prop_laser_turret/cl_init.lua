include("shared.lua")
include("cl_animations.lua")

ENT.NextEmit = 0


function ENT:Initialize()
	self.BeamColor = Color(0, 255, 0, 255)
	self:SetModel("models/combine_turrets/floor_turret.mdl")

	self.ScanningSound = CreateSound(self, "npc/turret_wall/turret_loop1.wav")
	self.ShootingSound = CreateSound(self, "npc/combine_gunship/gunship_weapon_fire_loop6.wav")

	local size = self.SearchDistance + 32
	self.TimeOfSpawn = CurTime() + 5
	local nsize = -size
	self:SetRenderBounds(Vector(nsize, nsize, nsize * 0.25), Vector(size, size, size * 0.25))
end

function ENT:Think()
	if self:GetObjectOwner():IsValid() and self:GetAmmo() > 0 and self:GetMaterial() == "" and GAMEMODE:GetWaveActive() then
		self.ScanningSound:PlayEx(0.55, 100 + math.sin(CurTime()))
		if self:IsFiring() or self:GetTarget():IsValid() then
			self.ShootingSound:PlayEx(1, 100 + math.cos(CurTime()))
		else
			self.ShootingSound:Stop()
		end
	else
		self.ScanningSound:Stop()
		self.ShootingSound:Stop()
	end
	if !self.CreatedModels then
		if self.WElements then
			self.ShowBaseModel = true
			self.WElements = table.FullCopy(self.WElements)
			self:CreateModels(self.WElements)
			self.CreatedModels = true
		end
	end
end

function ENT:OnRemove()
	self.ScanningSound:Stop()
	self.ShootingSound:Stop()
	self:RemoveModels()
end

function ENT:SetObjectHealth(health)
	self:SetDTFloat(3, health)
end

local TEXT_ALIGN_CENTER = TEXT_ALIGN_CENTER
local draw_SimpleText = draw.SimpleText
local surface_SetDrawColor = surface.SetDrawColor
local surface_DrawRect = surface.DrawRect
local cam_Start3D2D = cam.Start3D2D
local cam_End3D2D = cam.End3D2D
local smokegravity = Vector(0, 0, 200)
local aScreen = Angle(0, 270, 45)
local vScreen = Vector(-10, 5, 45)
local Colors = {
[3] = Color(156,156,156),
[4] =Color(94,23,23), [5] =
Color(0,94,5), [6] =
Color(0,7,112), [7] =
Color(218,149,0)
}
local fix = Angle(5,0,9)
function ENT:Draw()
	self:CalculatePoseAngles()
	self:SetPoseParameter("aim_yaw", self.PoseYaw)
	self:SetPoseParameter("aim_pitch", self.PosePitch)

	--self:DrawModel()
	self:RenderModels()

	local healthpercent = self:GetObjectHealth() / self:GetMaxObjectHealth()

	if healthpercent <= 0.5 and CurTime() >= self.NextEmit then
		self.NextEmit = CurTime() + 0.05

		local pos = self:DefaultPos()
		local sat = healthpercent * 360

		local emitter = ParticleEmitter(pos)
		emitter:SetNearClip(24, 32)

		local particle = emitter:Add("particles/smokey", pos)
		particle:SetStartAlpha(180)
		particle:SetEndAlpha(0)
		particle:SetStartSize(0)
		particle:SetEndSize(math.Rand(8, 32))
		particle:SetColor(sat, sat, sat)
		particle:SetVelocity(VectorRand():GetNormalized() * math.Rand(8, 64))
		particle:SetGravity(smokegravity)
		particle:SetDieTime(math.Rand(0.8, 1.6))
		particle:SetAirResistance(150)
		particle:SetRoll(math.Rand(0, 360))
		particle:SetRollDelta(math.Rand(-4, 4))
		particle:SetCollide(true)
		particle:SetBounce(0.2)

		emitter:Finish()
		emitter = nil 
		collectgarbage("step", 64)
	end

	local owner = self:GetObjectOwner()
	local ammo = self:GetAmmo()
	local flash = math.sin(CurTime() * 15) > 0
	local wid, hei = 128, 92
	local x = wid / 2
--[[	for k,v in pairs(self.WElements) do
		if string.sub(k,0,#"osnova") ~= "osnova" and k ~= 'turret' then
			v.bone = "Gun"
		end
	end]]

	cam_Start3D2D(self:LocalToWorld(vScreen), self:LocalToWorldAngles(aScreen), 0.075)

		surface_SetDrawColor(0, 0, 0, 160)
		surface_DrawRect(0, 0, wid, hei)

		surface_SetDrawColor(200, 200, 200, 160)
		surface_DrawRect(0, 0, 8, 16)
		surface_DrawRect(wid - 8, 0, 8, 16)
		surface_DrawRect(8, 0, wid - 16, 8)

		surface_DrawRect(0, hei - 16, 8, 16)
		surface_DrawRect(wid - 8, hei - 16, 8, 16)
		surface_DrawRect(8, hei - 8, wid - 16, 8)

		if owner:IsValid() and owner:IsPlayer() then
			draw_SimpleText(owner:ClippedName(), "DefaultFont", x, 10, owner == MySelf and COLOR_BLUE or COLOR_WHITE, TEXT_ALIGN_CENTER)
		end
		draw_SimpleText(translate.Format("integrity_x", math.ceil(healthpercent * 100)), "DefaultFontBold", x, 25, COLOR_WHITE, TEXT_ALIGN_CENTER)

		if flash and self:GetManualControl() then
			draw_SimpleText(translate.Get("manual_control"), "DefaultFont", x, 40, COLOR_YELLOW, TEXT_ALIGN_CENTER)
		end
		draw_SimpleText("УЛУЧШЕНИЙ: "..self:GetUpgrade(), "DefaultFontBold", x, 68, Colors[self:GetUpgrade()], TEXT_ALIGN_CENTER)
		
		if ammo > 0 then
			draw_SimpleText("["..ammo.." / "..self:GetMaxAmmo().."]", "DefaultFontBold", x, 55, COLOR_WHITE, TEXT_ALIGN_CENTER)
		elseif flash then
			draw_SimpleText(translate.Get("empty"), "DefaultFontBold", x, 55, COLOR_RED, TEXT_ALIGN_CENTER)
		end
	cam_End3D2D()
end
local matBeam = Material("trails/laser")
local matGlow = Material("sprites/glow04_noz")
local colAlpha, colAlpha2 = Color( 0, 197, 197, 45), Color( 255, 255, 255, 72) 
local vecAdd = Vector(0,0,15)

function ENT:DrawTranslucent()
	if self:GetMaterial() ~= "" then return end

	local lightpos = self:LightPos() + vecAdd

	local ang = self:GetGunAngles()
	
	
	local colBeam = self.BeamColor
	
	local owner = self:GetObjectOwner()
	local hasowner = owner:IsValid() and owner:IsPlayer()
	local hasammo = self:GetAmmo() > 0
	local manualcontrol = self:GetManualControl()
	local waveactive = GAMEMODE:GetWaveActive()

	local tr = util.TraceLine({start = lightpos + ang:Forward(), endpos = lightpos + ang:Forward() * 4096, mask = MASK_SHOT, filter = self:GetCachedScanFilter()})
	local hitpos = tr.HitPos
	if not hasowner then
		colBeam.r = 0
		colBeam.g = 0
		colBeam.b = 255
	elseif not hasammo then
		colBeam.r = 255
		colBeam.g = 0
		colBeam.b = 0
	elseif not waveactive then
		colBeam.r = 130
		colBeam.g = 130
		colBeam.b = 130
	elseif (owner:Team() == TEAM_BANDIT or owner:Team()  == TEAM_HUMAN) and MySelf == owner and self:GetManualControl() then
		local colTeam = team.GetColor(owner:Team())
		colBeam.r = colTeam.r
		colBeam.g = colTeam.g
		colBeam.b = colTeam.b
		render.SetMaterial(matBeam)
		render.DrawBeam(lightpos, hitpos, 1, 0, 1, COLOR_WHITE)
		render.DrawBeam(lightpos, hitpos, 4, 0, 1, colBeam)
		render.SetMaterial(matGlow)
		render.DrawSprite(hitpos, 2, 2, COLOR_WHITE)
		render.DrawSprite(hitpos, 8, 8, colBeam)
	end
	render.SetMaterial(matGlow)
	render.DrawSprite(lightpos, 4, 4, COLOR_WHITE)
	render.DrawSprite(lightpos, 16, 16, colBeam)

end
