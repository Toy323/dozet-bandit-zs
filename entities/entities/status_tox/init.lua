AddCSLuaFile("cl_init.lua")
AddCSLuaFile("shared.lua")

include("shared.lua")

function ENT:Think()
	local owner = self:GetOwner()

	if self:GetTime() <= 0 or not owner:Alive() or (owner:Team() == self.Damager:Team() and owner ~= self.Damager) or owner:IsSkillActive(SKILL_SUPER_BIO) then
		self:Remove()
		return
	end

	local dmg = self.Damage
	owner:EmitSound("ambient/machines/steam_release_2.wav", 70, 125)
	local who = self.Damager and self.Damager:IsValid() and self.Damager:IsPlayer() and self.Damager:Team() ~= owner:Team() and self.Damager or owner
	owner:TakeSpecialDamage(dmg * (who:IsSkillActive(SKILL_NEW_FORMULA) and 1.7 or 1), DMG_NERVEGAS, who, self)
	self:AddTime(-self.TimeInterval)
	self:NextThink(CurTime() + self.TimeInterval)
	return true
end
