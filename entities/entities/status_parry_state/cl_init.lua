include("shared.lua")
ENT.NextEmit = 0
local function GetRandomBonePos(pl)
	if pl ~= MySelf or pl:ShouldDrawLocalPlayer() then
		local bone = pl:GetBoneMatrix(4)
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
	if  self:GetDTVector(12) == Vector(0,0,0)   then
		local emitter = ParticleEmitter(self:GetPos())
		emitter:SetNearClip(24, 32)
		local particle = emitter:Add("effects/yellowflare", pos)
		particle:SetVelocity(ent:GetVelocity())
		particle:SetDieTime(1.2)
		particle:SetStartAlpha(255)
		particle:SetEndAlpha(0)
		particle:SetStartSize(5)
		particle:SetEndSize(20)
		particle:SetColor(201,200,90)
		particle:SetRoll(math.Rand(180, 360))
		particle:SetRollDelta(math.Rand(-4, 4))
		particle:SetGravity(Vector(0, 0, 90))
		particle:SetAirResistance(50)
		
		
		emitter:Finish()
	end
	pos = self:GetDTVector(12)
	--print(pos) 
	if pos == Vector(0,0,0)  then return end
	local emitter = ParticleEmitter(self:GetPos())
	emitter:SetNearClip(24, 32)
	local particle = emitter:Add("effects/yellowflare", pos)
	particle:SetVelocity(ent:GetVelocity())
	particle:SetDieTime(3)
	particle:SetStartAlpha(255)
	particle:SetEndAlpha(0)
	particle:SetStartSize(2)
	particle:SetEndSize(4)
	particle:SetColor(201,2,90)
	particle:SetRoll(math.Rand(180, 360))
	particle:SetRollDelta(math.Rand(-4, 4))
	particle:SetGravity(Vector(0, 0, 0))
	particle:SetAirResistance(0)
	
	emitter:Finish()
end
