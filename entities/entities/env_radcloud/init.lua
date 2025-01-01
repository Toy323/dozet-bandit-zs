INC_SERVER()

ENT.TickTime = 1
ENT.Ticks = 6


function ENT:Initialize()
	local owner = self:GetOwner()

	self:DrawShadow(false)
	self.Ticks = math.floor(self.Ticks)

	self:Fire("damage", "", self.TickTime)
	self:Fire("kill", "", self.TickTime * self.Ticks + 0.01)
end

function ENT:AcceptInput(name, activator, caller, arg)
	if name ~= "damage" then return end

	self.Ticks = self.Ticks - 1

	local owner = self:GetOwner()
	if not owner:IsValid() then owner = self end

	local vPos = self:GetPos()
	for _, ent in pairs(ents.FindInSphere(vPos, 255)) do
		if ent and ent:IsPlayer() and WorldVisible(vPos, ent:NearestPoint(vPos)) then
			ent:TakeDamage(12, owner, self)
		end
	end

	if self.Ticks > 0 then
		self:Fire("damage", "", self.TickTime)
	end

	return true
end
