function GM:RenderScreenspaceEffects()
end

GM.ColorModEnabled = CreateClientConVar("zsb_colormod", "1", true, false):GetBool()
cvars.AddChangeCallback("zsb_colormod", function(cvar, oldvalue, newvalue)
	GAMEMODE.ColorModEnabled = tonumber(newvalue) == 1
end)

GM.Auras = CreateClientConVar("zsb_auras", 1, true, false):GetBool()
cvars.AddChangeCallback("zsb_auras", function(cvar, oldvalue, newvalue)
	GAMEMODE.Auras = tonumber(newvalue) == 1
end)

GM.AuraColorEmpty = Color(CreateClientConVar("zsb_auracolor_empty_r", 255, true, false):GetInt(), CreateClientConVar("zsb_auracolor_empty_g", 0, true, false):GetInt(), CreateClientConVar("zsb_auracolor_empty_b", 0, true, false):GetInt(), 255)
GM.AuraColorFull = Color(CreateClientConVar("zsb_auracolor_full_r", 20, true, false):GetInt(), CreateClientConVar("zsb_auracolor_full_g", 255, true, false):GetInt(), CreateClientConVar("zsb_auracolor_full_b", 20, true, false):GetInt(), 255)

cvars.AddChangeCallback("zsb_auracolor_empty_r", function(cvar, oldvalue, newvalue)
	GAMEMODE.AuraColorEmpty.r = math.Clamp(math.ceil(tonumber(newvalue) or 0), 0, 255)
end)

cvars.AddChangeCallback("zsb_auracolor_empty_g", function(cvar, oldvalue, newvalue)
	GAMEMODE.AuraColorEmpty.g = math.Clamp(math.ceil(tonumber(newvalue) or 0), 0, 255)
end)

cvars.AddChangeCallback("zsb_auracolor_empty_b", function(cvar, oldvalue, newvalue)
	GAMEMODE.AuraColorEmpty.b = math.Clamp(math.ceil(tonumber(newvalue) or 0), 0, 255)
end)

cvars.AddChangeCallback("zsb_auracolor_full_r", function(cvar, oldvalue, newvalue)
	GAMEMODE.AuraColorFull.r = math.Clamp(math.ceil(tonumber(newvalue) or 0), 0, 255)
end)

cvars.AddChangeCallback("zsb_auracolor_full_g", function(cvar, oldvalue, newvalue)
	GAMEMODE.AuraColorFull.g = math.Clamp(math.ceil(tonumber(newvalue) or 0), 0, 255)
end)

cvars.AddChangeCallback("zsb_auracolor_full_b", function(cvar, oldvalue, newvalue)
	GAMEMODE.AuraColorFull.b = math.Clamp(math.ceil(tonumber(newvalue) or 0), 0, 255)
end)


local DrawColorModify = DrawColorModify
local DrawSharpen = DrawSharpen
local EyePos = EyePos
local TEAM_HUMAN = TEAM_HUMAN
local TEAM_BANDIT = TEAM_BANDIT
local render_UpdateScreenEffectTexture = render.UpdateScreenEffectTexture
local render_SetMaterial = render.SetMaterial
local render_DrawScreenQuad = render.DrawScreenQuad
local render_DrawSprite = render.DrawSprite
local render_DrawBeam = render.DrawBeam
local render_GetLightRGB = render.GetLightRGB
local math_Approach = math.Approach
local FrameTime = FrameTime
local CurTime = CurTime
local math_sin = math.sin
local math_min = math.min
local math_max = math.max
local math_abs = math.abs
local team_GetPlayers = team.GetPlayers

local tColorModDead = {
	["$pp_colour_contrast"] = 1.25,
	["$pp_colour_colour"] = 0,
	["$pp_colour_addr"] = 0,
	["$pp_colour_addg"] = 0,
	["$pp_colour_addb"] = 0,
	["$pp_colour_brightness"] = -0.02,
	["$pp_colour_mulr"] = 0,
	["$pp_colour_mulg"] = 0,
	["$pp_colour_mulb"] = 0
}

local tColorModHuman = {
	["$pp_colour_addr"] = 0,
	["$pp_colour_addg"] = 0,
	["$pp_colour_addb"] = 0,
	["$pp_colour_brightness"] = 0,
	["$pp_colour_contrast"] = 1,
	["$pp_colour_colour"] = 1,
	["$pp_colour_mulr"] = 0,
	["$pp_colour_mulg"] = 0,
	["$pp_colour_mulb"] = 0
}

local redview = 0
function GM:_RenderScreenspaceEffects()
	if self.DrawPainFlash and self.HurtEffect > 0 then
		DrawSharpen(1, math_min(6, self.HurtEffect * 3))
	end

	if self.ColorModEnabled then
		if not MySelf:Alive() and MySelf:Team() ~= TEAM_SPECTATOR  then
			tColorModDead["$pp_colour_colour"] = (1 - math_min(1, CurTime() - self.LastTimeAlive)) * 0.5
			DrawColorModify(tColorModDead)
		else
			local curr = tColorModHuman["$pp_colour_addr"]
			local health = MySelf:Health()
			if health <= 30 then
				tColorModHuman["$pp_colour_addr"] = math_min(0.3 - health * 0.006, curr + FrameTime() * 0.055)
				redview = math_Approach(redview, 1 - health / 30, FrameTime() * 0.2)
			elseif 0 < curr then
				tColorModHuman["$pp_colour_addr"] = math_max(0, curr - FrameTime() * 0.1)
				redview = math_Approach(redview, 0, FrameTime() * 0.2)
			end

			tColorModHuman["$pp_colour_addr"] = redview * (0.035 + math_abs(math.sin(CurTime() * 2)) * 0.14)

			DrawColorModify(tColorModHuman)
		end
	end
end

local matGlow = Material("Sprites/light_glow02_add_noz")
local colHealthEmpty = GM.AuraColorEmpty
local colHealthFull = GM.AuraColorFull
local colHealth = Color(255, 255, 255, 255)
local matPullBeam = Material("cable/rope")
local colPullBeam = Color(255, 255, 255, 255)
function GM:_PostDrawOpaqueRenderables()
		if MySelf:Team() ~= TEAM_SPECTATOR then
			local eyepos = EyePos()
			local plys = team.GetPlayers(MySelf:Team())
			for _, pl in pairs(plys) do
				local dist = pl:GetPos():DistToSqr(eyepos)
				if pl:Alive() and dist <= 16777216 and pl ~= MySelf  and self:GetSpecialWave() ~= "urmteam" then
					local healthfrac = math_max(pl:Health(), 0) / pl:GetMaxHealth()
					colHealth.r = math_Approach(colHealthEmpty.r, colHealthFull.r, math_abs(colHealthEmpty.r - colHealthFull.r) * healthfrac)
					colHealth.g = math_Approach(colHealthEmpty.g, colHealthFull.g, math_abs(colHealthEmpty.g - colHealthFull.g) * healthfrac)
					colHealth.b = math_Approach(colHealthEmpty.b, colHealthFull.b, math_abs(colHealthEmpty.b - colHealthFull.b) * healthfrac)

					local pos = pl:WorldSpaceCenter()

					render_SetMaterial(matGlow)
					render_DrawSprite(pos, 13, 13, colHealth)
				end
			end
		end
		local holding = MySelf.status_human_holding
		if holding and holding:IsValid() and holding:GetIsHeavy() then
			local object = holding:GetObject()
			if object:IsValid() then
				local pullpos = holding:GetPullPos()
				local hingepos = holding:GetHingePos()
				local r, g, b = render_GetLightRGB(hingepos)
				colPullBeam.r = r * 255
				colPullBeam.g = g * 255
				colPullBeam.b = b * 255
				render_SetMaterial(matPullBeam)
				render_DrawBeam(hingepos, pullpos, 0.5, 0, pullpos:Distance(hingepos) / 128, colPullBeam)
			end
		end
end
function GM:DrawNearestEnemy()
	if !MySelf:IsSkillActive(SKILL_AUTOSCAN) or not self.Auras or MySelf:IsSkillActive(SKILL_FOLGA) or self:GetSpecialWave() == "urmteam" then return end

	local eyepos = EyePos()
	local range, dist, healthfrac, pos, size
	local myteam = (MySelf:Team() == TEAM_BANDIT and TEAM_HUMAN or TEAM_BANDIT)
	for _, pl in pairs(team_GetPlayers(myteam)) do
		range = 196028
		dist = pl:GetPos():DistToSqr(eyepos)
		if pl:Alive() and dist <= range and !pl:GetFocusD() and !pl:GetActiveWeapon().m_IsStealthWeapon  then
			healthfrac = math_max(pl:Health(), 0) / pl:GetMaxHealth()
			colHealth.r = math_Approach(colHealthEmpty.r, colHealthFull.r, math_abs(colHealthEmpty.r - colHealthFull.r) * healthfrac)
			colHealth.g = math_Approach(colHealthEmpty.g, colHealthFull.g, math_abs(colHealthEmpty.g - colHealthFull.g) * healthfrac)
			colHealth.b = math_Approach(colHealthEmpty.b, colHealthFull.b, math_abs(colHealthEmpty.b - colHealthFull.b) * healthfrac)

			pos = pl:WorldSpaceCenter()

			render_SetMaterial(matGlow)
			render_DrawSprite(pos, 13, 13, colHealth)
			size = 50 
			if size > 0 then
				render_DrawSprite(pos, size * 1.5, size, colHealth)
				render_DrawSprite(pos, size, size * 1.5, colHealth)
			end
		end
	end
end
function GM:DrawStarIndicators()
	if not MySelf:IsSkillActive(SKILL_STARDUST) or MySelf:KeyDown(IN_SPEED) then return end

	local eyepos = EyePos()
	local range, dist, healthfrac, pos, size

		range = 8040
		local vec = MySelf:GetStarDust()
		dist = vec:DistToSqr(eyepos)
		

			pos = vec

		local hcolor = COLOR_WHITE
		local ang = EyeAngles()
		ang:RotateAroundAxis(ang:Up(), -90)
		ang:RotateAroundAxis(ang:Forward(), 90)
		local nearest = vec
		local norm = nearest - eyepos
		norm:Normalize()
		local dot = EyeVector():Dot(norm)
		local dotsq = dot * dot
		local vis = math.Clamp((dotsq * dotsq) - 0.1, 0, 1)
	
			pos.z = pos.z + 64
			render_SetMaterial(matGlow)
			render_DrawSprite(pos, 13, 13, Color(41,38,218))
			size = 50 - 21
			if size > 0 then
				render_DrawSprite(pos, size * 1.5, size, Color(41,38,218))
				render_DrawSprite(pos, size, size * 1.5, Color(41,38,218))
			end
end
local CModWhiteOut = {
	["$pp_colour_addr"] = 0,
	["$pp_colour_addg"] = 0,
	["$pp_colour_addb"] = 0,
	["$pp_colour_brightness"] = 0,
	["$pp_colour_contrast"] = 1,
	["$pp_colour_colour"] = 1,
	["$pp_colour_mulr"] = 0,
	["$pp_colour_mulg"] = 0,
	["$pp_colour_mulb"] = 0
}
local WhiteOutEnd
local WhiteOutFadeTime
local function RenderWhiteOut()
	local dt = math_max(WhiteOutEnd - CurTime(), 0) / WhiteOutFadeTime
	if dt <= 0 then
		WhiteOutEnd = nil
		WhiteOutFadeTime = nil
		hook.Remove("RenderScreenspaceEffects", "WhiteOut")
	else
		local size = 5 + dt * 10
		CModWhiteOut["$pp_colour_brightness"] = dt ^ 2
		DrawBloom(1 - dt, dt * 3, size, size, 1, 1, 1, 1, 1)
		DrawColorModify(CModWhiteOut)
	end
end

function util.WhiteOut(time, fadeouttime)
	time = time or 1

	WhiteOutEnd = math_max(CurTime() + time, WhiteOutEnd or 0)
	WhiteOutFadeTime = math_max(fadeouttime or time, WhiteOutFadeTime or 0)

	hook.Add("RenderScreenspaceEffects", "WhiteOut", RenderWhiteOut)
end
