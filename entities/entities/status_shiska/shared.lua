ENT.Type = "anim"
ENT.Base = "status__base"
ENT.TimeInterval = 0.2
function ENT:SetupDataTables()
	self:NetworkVar( "Float", 0, "RemainingTime" )
end
function ENT:Initialize()
	self.BaseClass.Initialize(self)
	self:DrawShadow(false)

	if SERVER then
		hook.Add("EntityTakeDamage", self, self.EntityTakeDamage)

		self:SetDTInt(1, 0)
	end

	if CLIENT then
		hook.Add("Draw", self, self.Draw)
	end
end
function ENT:AddTime(time)
	self:SetTime(self:GetTime() + time)
end

function ENT:SetTime(time)
	self:SetNWFloat("RemainingTime", time)
end

function ENT:GetTime()
	return self:GetNWFloat("RemainingTime")
end
