ENT.Type = "anim"

function ENT:ShouldNotCollide(ent)
	return ent:IsPlayer() and ent:Team() ~= self:GetOwner():Team() or true
end

util.PrecacheModel("models/props_junk/harpoon002a.mdl")
