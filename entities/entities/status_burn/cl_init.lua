include("shared.lua")
ENT.NextEmit = 0
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

	local emitter = ParticleEmitter(self:GetPos())
	emitter:SetNearClip(24, 32)
	local particle = emitter:Add("effects/yellowflare", pos)
	particle:SetVelocity(ent:GetVelocity())
	particle:SetDieTime(math.Rand(0.75, 1.25))
	particle:SetStartAlpha(255)
	particle:SetEndAlpha(0)
	particle:SetStartSize(5)
	particle:SetEndSize(20)
	particle:SetColor(201,112,17)
	particle:SetRoll(math.Rand(180, 360))
	particle:SetRollDelta(math.Rand(-4, 4))
	particle:SetGravity(Vector(0, 0, 90))
	particle:SetAirResistance(50)
	
	emitter:Finish()
end
