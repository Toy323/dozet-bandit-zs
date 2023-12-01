include("shared.lua")
ENT.NextEmit = 0
local matTrail = Material("trails/physbeam")
local colTrail = Color(83, 188, 27)
local matGlow = Material("sprites/light_glow02_add")
local matWhite = Material("models/debug/debugwhite")
local vector_origin = vector_origin
local COUNTER = {}
local function GetRandomBonePos(pl)
	if pl ~= MySelf or pl:ShouldDrawLocalPlayer() then
		local bone = pl:GetBoneMatrix(math.random(0,25))
		if bone then
			return bone:GetTranslation()
		end
	end

	return pl:GetShootPos()
end

function ENT:Draw()
	local ent = self:GetOwner()
	if not ent:IsValid() then return end
	
	local pos
	if ent == MySelf and not ent:ShouldDrawLocalPlayer() then
		local aa, bb = ent:WorldSpaceAABB()
		pos = Vector(math.Rand(aa.x, bb.x), math.Rand(aa.y, bb.y), math.Rand(aa.z, bb.z))
	else
		pos = GetRandomBonePos(ent)
	end


		
	local nextphis = 3
	for i=1, #self.TrailPositions do
		if self.TrailPositions[i+1] then
		nextphis = (nextphis%6) + 1
			if 	(COUNTER[i] and COUNTER[i].NextBum or 1) < CurTime() and nextphis < 3 then
				local emitter = ParticleEmitter(self.TrailPositions[i])
				emitter:SetNearClip(24, 32)
				local particle = emitter:Add("effects/fleck_wood"..math.random(1, 2), self.TrailPositions[i])
				particle:SetVelocity(VectorRand(-70,70))
				particle:SetDieTime(math.Rand(0.75, 1.25))
				particle:SetStartAlpha(255)
				particle:SetEndAlpha(0)
				particle:SetStartSize(1)
				particle:SetEndSize(5)
				particle:SetColor(colTrail.r,colTrail.b,colTrail.r)
				particle:SetRoll(math.Rand(180, 360))
				particle:SetRollDelta(math.Rand(-4, 4))
				particle:SetGravity(Vector(0, 0, 90))
				particle:SetAirResistance(50)
				
				emitter:Finish()
				COUNTER[i] = {NextBum = CurTime() + 0.7}
			end
		end
	end
end

function ENT:Initialize()
	self.Trailing = CurTime() + 0.15
	self.TrailPositions = {}
end
function ENT:Think()
	table.insert(self.TrailPositions, 1, self:GetOwner():GetPos())
	if self.TrailPositions[1] then
		table.remove(self.TrailPositions, 80)
	end

	local dist = 0
	local mypos = self:GetOwner():GetPos()
	for i=1, #self.TrailPositions do
		if self.TrailPositions[i]:DistToSqr(mypos) > dist then
			self:SetRenderBoundsWS(self.TrailPositions[i], mypos, Vector(16, 16, 16))
			dist = self.TrailPositions[i]:DistToSqr(mypos)
		end
	end
end
