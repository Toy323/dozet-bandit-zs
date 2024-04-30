include("shared.lua")
ENT.NextEmit = 0
local function GetRandomBonePos(pl)
	if pl ~= MySelf or pl:ShouldDrawLocalPlayer() then
		local bone = pl:GetBoneMatrix(math.random(0,25))
		if bone then
			return bone:GetTranslation()
		end
	end

	return pl:GetShootPos()
end
ENT.PosLast = Vector(0,0,0)

local beammat = Material("trails/electric")
local ColTrail = Color(47,227,255)
pos = Vector(0,0,0)
function ENT:Draw()
	local ent = self:GetOwner()
	if not ent:IsValid() then return end
	if self.NextEmit < CurTime() then
		self.NextEmit = CurTime() + 0.1
		if ent == MySelf and not ent:ShouldDrawLocalPlayer() then
			local aa, bb = ent:WorldSpaceAABB()
			pos = Vector(math.Rand(aa.x, bb.x), math.Rand(aa.y, bb.y), math.Rand(aa.z, bb.z))
		else
			pos = GetRandomBonePos(ent)
		end
		self.PosLast = pos
	end
	render.SetMaterial(beammat)
	render.DrawBeam(pos, self.PosLast, 12, 1, 0, ColTrail)
end
