include("shared.lua")
ENT.NextEmit = 0
local matTrail = Material("trails/physbeam")
local colTrail = Color(188, 27, 27)
local matGlow = Material("sprites/light_glow02_add")
local matWhite = Material("models/debug/debugwhite")
local vector_origin = vector_origin
local function GetRandomBonePos(pl)
	local wep = pl:GetActiveWeapon()
	if !wep.WElements then return Vector(0,0,0) end
	local need = wep.WElements['sword'].modelEnt
	return  need:GetPos() + pl:GetForward() * 37
end

function ENT:Draw()
	local ent = self:GetOwner()
	if not ent:IsValid() then return end
	
	local pos = GetRandomBonePos(ent)
	--[[	for i=1,2 do
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
		end]]
	--	print(GetRandomBonePos(ent))
		render.SetMaterial(matTrail)
		for i=1, #self.TrailPositions do
			if self.TrailPositions[i+1] then
				colTrail.a = 255 - 255 * (i/#self.TrailPositions)
	
				render.DrawBeam(self.TrailPositions[i], self.TrailPositions[i+1], 16, 1, 0, colTrail)
			end
		end
end
function ENT:Initialize()
	self.Trailing = CurTime() + 0.15
	self.TrailPositions = {}
end

function ENT:Think()
	table.insert(self.TrailPositions, 1, GetRandomBonePos(self:GetOwner()))
	if self.TrailPositions[1] then
		table.remove(self.TrailPositions, 60)
	end

	local dist = 0
	local mypos = self:GetPos()
	for i=1, #self.TrailPositions do
		if self.TrailPositions[i]:DistToSqr(mypos) > dist then
			self:SetRenderBoundsWS(self.TrailPositions[i], mypos, Vector(16, 16, 16))
			dist = self.TrailPositions[i]:DistToSqr(mypos)
		end
	end
end
