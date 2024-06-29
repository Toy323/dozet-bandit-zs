include("shared.lua")

ENT.NextEmit = 0

function ENT:Initialize()
	self:SetColor(Color(0, 255, 0, 255))
	
	self.FloorModel = ClientsideModel(self:GetModel())
	if self.FloorModel:IsValid() then
		self.FloorModel:SetParent(self)
		self.FloorModel:SetOwner(self)
		self.FloorModel:SetPos(self:GetPos())
		self.FloorModel:SetAngles(self:GetAngles())
		self.FloorModel:Spawn()
		self.FloorModel:ManipulateBoneScale(0, Vector(0.01, 0.01, 0.01))
		self.FloorModel:SetSolid(SOLID_NONE)
		self.FloorModel:SetColor(Color(0, 255, 0, 255))
	end
end

function ENT:Draw()
	local base32 = self:GetDTInt(12)

	render.SetBlend(0.65 - (base32 > 12 and 0.2 or 0))
	self:DrawModel()
	render.SetBlend(1)
	local a = math.abs(math.sin(CurTime())) ^ 3
	local hscale = 0.2 + a * 0.04
	local floormodel = 	self.FloorModel
	local fmvalid = floormodel:IsValid()
	if fmvalid then
		local base = 0.08 * base32
		floormodel:ManipulateBoneScale(0, Vector(hscale * 2 + base , hscale * 2 + base, hscale * 2 + base))
	end

	if CurTime() < self.NextEmit then return end
	self.NextEmit = CurTime() + 0.025

	local pos = self:GetPos()


	local emitter = ParticleEmitter(pos)
	emitter:SetNearClip(24, 32)

	local particle = emitter:Add("particles/smokey", pos)
	particle:SetDieTime(math.Rand(0.4, 0.5))
	particle:SetStartAlpha(255)
	particle:SetEndAlpha(0)
	particle:SetStartSize(math.Rand(3, 5))
	particle:SetEndSize(0)
	particle:SetRoll(math.Rand(0, 255))
	particle:SetRollDelta(math.Rand(-10, 10))
	particle:SetVelocity((self:GetVelocity():GetNormalized() * -1 + VectorRand():GetNormalized()):GetNormalized() * math.Rand(16, 48))
	particle:SetLighting(true)
	particle:SetColor(30, 255, 30)

	emitter:Finish()
end

function ENT:OnRemove()

	if self.FloorModel:IsValid() then
		self.FloorModel:Remove()
	end
end