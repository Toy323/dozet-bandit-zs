ENT.Type = "anim"

ENT.CanPackUp = true

ENT.m_NoNailUnfreeze = true
ENT.NoNails = true

function ENT:ShouldNotCollide(ent)
	if ent:IsProjectile() then 
		return !ent.ShieldFree
	elseif (ent:GetClass() == "prop_drone") or (ent:GetClass() == "prop_manhack") then
		return true
	else
		return false
	end
end