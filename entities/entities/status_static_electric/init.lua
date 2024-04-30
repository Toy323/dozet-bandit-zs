AddCSLuaFile("cl_init.lua")
AddCSLuaFile("shared.lua")

include("shared.lua")

function ENT:Think()
	local owner = self:GetOwner()

	if self:GetTime() <= 0 or not owner:Alive() or (owner:Team() == self.Damager:Team() and owner ~= self.Damager) then
		self:Remove()
		return
	end

	local dmg = self.Damage or 1
	owner:EmitSound("ambient/energy/zap"..math.random(1,9)..".wav", 70, 125)
	local who = self.Damager and self.Damager:IsValid() and self.Damager:IsPlayer() and self.Damager:Team() ~= owner:Team() and self.Damager or owner
	owner:TakeSpecialDamage(dmg * (1+owner:WaterLevel()), DMG_SHOCK, who, self)
	self:AddTime(-0.1)
	self:NextThink(CurTime() + 0.1)
	return true
end
