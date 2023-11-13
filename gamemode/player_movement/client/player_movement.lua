--CACHED GLOBALS (TODO)
local TEAM_HUMAN = TEAM_HUMAN
local TEAM_UNDEAD = TEAM_UNDEAD
local math = math
local bit = bit
local IN_JUMP = IN_JUMP
local IN_DUCK = IN_DUCK
local IN_ZOOM = IN_ZOOM
local FrameTime = FrameTime
--

local staggerdir = VectorRand():GetNormalized()

local function PressingJump(cmd)
	return bit.band(cmd:GetButtons(), IN_JUMP) ~= 0
end

local function PressingDuck(cmd)
	return bit.band(cmd:GetButtons(), IN_DUCK) ~= 0
end

local function PressJump(cmd, press)
	if press then
		cmd:SetButtons(bit.bor(cmd:GetButtons(), IN_JUMP))
	elseif PressingJump(cmd) then
		cmd:SetButtons(cmd:GetButtons() - IN_JUMP)
	end
end

local function PressDuck(cmd, press)
	if press then
		cmd:SetButtons(bit.bor(cmd:GetButtons(), IN_DUCK))
	elseif PressingDuck(cmd) then
		cmd:SetButtons(cmd:GetButtons() - IN_DUCK)
	end
end

local TimeDuckHeld = 0
function GM:_CreateMove(cmd)
	if MySelf:IsPlayingTaunt() and MySelf:Alive() then
		self:CreateMoveTaunt(cmd)
		return
	end


	-- Don't allow jumping if our legs are damaged or we're pulse slowed
	if MySelf:GetLegDamage() >= 0.5 then
		PressJump(cmd, false)
	end

	-- Anti spaz out method A. Forces player to stay ducking until 0.5s after landing if they crouch in mid-air AND disables jumping during that time.
		-- Forces duck to be held for 0.5s after pressing it if in mid-air
		if MySelf:OnGround() then
			TimeDuckHeld = 0
		elseif PressingDuck(cmd) then
			TimeDuckHeld = 0.9
		elseif TimeDuckHeld > 0 then
			TimeDuckHeld = TimeDuckHeld - FrameTime()
			PressDuck(cmd, true)
		end


		if MySelf:Alive() then

				local maxhealth = MySelf:GetMaxHealth()
				local threshold = maxhealth * 0.44
				local health = MySelf:Health()
				local gunsway = MySelf.GunSway

				if (health <= threshold or frightened or gunsway) then
					local ft = FrameTime()

					staggerdir = (staggerdir + ft * 8 * VectorRand()):GetNormalized()

					local ang = cmd:GetViewAngles()
					local rate = MySelf:GetRateOfPalsy(ft, frightened, health, threshold, gunsway)

					ang.pitch = math.NormalizeAngle(ang.pitch + staggerdir.z * rate)
					ang.yaw = math.NormalizeAngle(ang.yaw + staggerdir.x * rate)
					cmd:SetViewAngles(ang)
				end

				if self:UseOverTheShoulder() and not (MySelf.Revive and MySelf.Revive:IsValid()) and not (MySelf.KnockedDown and MySelf.KnockedDown:IsValid()) then
					self:CreateMoveOTS(cmd)
				end
		end

end
