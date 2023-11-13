include("shared.lua")
ENT.NextEmit = 0
local function GetRandomBonePos(pl)

	return pl:LocalToWorld(pl:GetForward() * 80) + Vector(0,0,60) --pl:LocalToWorld(pl:GetActiveWeapon().WElements["sword"].pos) + Vector(0,0,70)
end

function ENT:Draw()
	local ent = self:GetOwner()
	if not ent:IsValid() then return end
	
	local pos = GetRandomBonePos(ent)
--	print(pos)
		for i=1,2 do
				local emitter = ParticleEmitter(self:GetPos())
				emitter:SetNearClip(24, 32)
				local particle = emitter:Add("effects/yellowflare", pos)
				particle:SetVelocity(ent:GetVelocity())
				particle:SetDieTime(1.9)
				particle:SetStartAlpha(255)
				particle:SetEndAlpha(255)
				particle:SetStartSize(5)
				particle:SetEndSize(8)
				particle:SetColor(201,200,90)
				particle:SetRoll(math.Rand(180, 360))
				particle:SetRollDelta(math.Rand(-4, 4))
				particle:SetGravity(Vector(0, 0, math.Rand(90,240)))
				particle:SetAirResistance(50)
				
				
				emitter:Finish()
		end

end
