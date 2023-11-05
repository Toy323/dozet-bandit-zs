INC_SERVER()

if SERVER then
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
end

function ENT:EntityTakeDamage(ent, dmginfo)
	local attacker = dmginfo:GetAttacker()
	if ent ~= self:GetOwner() then return end
	if (attacker:IsValid() and attacker:IsPlayer() and self:GetOwner():IsPlayer() and attacker:Team() == self:GetOwner():Team()) then return end
	if attacker:IsPlayer() and self.Applier:Alive() then
		local protect = 0.2

		local dmgfraction = dmginfo:GetDamage() * protect
		dmginfo:SetDamage(dmginfo:GetDamage() * (1 - protect))

		local hpperpoint = 50
		local points = dmgfraction / hpperpoint

		if self.Applier and self.Applier:IsValid() and self.Applier:IsPlayer() then
			self.Applier:AddPoints(math.max(0,points))
		end
	end
end
