INC_SERVER()

function ENT:SetDie(fTime)
	if fTime == 0 or not fTime then
		self.DieTime = 0
	elseif fTime == -1 then
		self.DieTime = 999999999
	else
		self.DieTime = CurTime() + fTime
		self:SetDuration(fTime)
	end
end
function ENT:OnRemove() 
	if self:GetOwner():IsValid() then
		self:GetOwner():GiveStatus("c_debuff",10)
	end
end

function ENT:EntityTakeDamage(ent, dmginfo)
	local attacker = dmginfo:GetAttacker()
	if attacker ~= self:GetOwner() then return end

	if attacker:IsValid() and attacker:IsPlayer() and self.Applier:IsValid()--[[and inflictor == wep and wep.IsMelee]] then
		local dmg = dmginfo:GetDamage()
		local extradamage = dmg * (self.Applier:IsSkillActive(SKILL_S_CINDERELA_B1) and 0.35 or 0.25)
		if self.Applier:IsSkillActive(SKILL_S_CINDERELA_B2) and self:GetDTFloat(12) > 0 then
			extradamage = dmg * (self:GetDTFloat(12)/625)
		end
		dmginfo:SetDamage(dmg + extradamage)

		if  ent:IsPlayer() then
			local applier = self.Applier
			local points = extradamage / ent:GetMaxHealth() * 0.3
			applier:AddPoints(points)
		end
	end
end
