AddCSLuaFile("cl_init.lua")
AddCSLuaFile("shared.lua")

include("shared.lua")
ENT.TrailPositions = {}
function ENT:Think()
	local owner = self:GetOwner()

	if self:GetTime() <= 0 then
		self:Remove()
		return
	end
	--print(self:GetTime())
	--print(math.Round(self:GetTime()/0.3/1.6,1))
	self:AddTime(-1)
	self:NextThink(CurTime() + 0.6)
	local pos3 = owner:GetPos()
	table.insert(self.TrailPositions, 1, pos3)
	if self.TrailPositions[1] then
		table.remove(self.TrailPositions, 5)
	end
	for k,v in pairs(team.GetPlayers(owner:Team() == TEAM_BANDIT and TEAM_HUMAN or TEAM_BANDIT)) do
		if v:IsValid() then
			for key,pos in pairs(self.TrailPositions) do
				print(pos:DistToSqr(v:GetPos()))
				if pos:DistToSqr(v:GetPos()) < 4190 then
					v:TakeDamage(9,owner,self)
				end
			end
		end
	end
	return true
end
