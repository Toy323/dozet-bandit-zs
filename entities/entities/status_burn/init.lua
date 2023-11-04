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
	owner:EmitSound("ambient/fire/mtov_flame2.wav", 70, 125)
	local who = self.Damager and self.Damager:IsValid() and self.Damager:IsPlayer() and self.Damager:Team() ~= owner:Team() and self.Damager or owner
	owner:TakeSpecialDamage(dmg, DMG_BURN, who, self)
	owner:SetBloodArmor(math.max(0,owner:GetBloodArmor()-6))
	self:AddTime(-0.4)
	self:NextThink(CurTime() + 0.2)
	if owner:WaterLevel() > 1 then
		self:Remove()
		self:AddTime(-999)
		return
	end
	return true
end
