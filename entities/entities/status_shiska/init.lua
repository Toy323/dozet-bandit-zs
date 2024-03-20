AddCSLuaFile("cl_init.lua")
AddCSLuaFile("shared.lua")

include("shared.lua")
ENT.TrailPositions = {}
function ENT:Think()
	local owner = self:GetOwner()

	if self:GetTime() <= 0 or !owner:Alive() then
		self:Remove()
		return
	end
	--print(self:GetTime())
	--print(math.Round(self:GetTime()/0.3/1.6,1))
	self:AddTime(-1)
	self:NextThink(CurTime() + 1.2)
	local pos3 = owner:GetPos()
	table.insert(self.TrailPositions, 1, pos3)
	if self.TrailPositions[1] then
		table.remove(self.TrailPositions, 5)
	end
	for k,v in pairs(team.GetPlayers(owner:Team() == TEAM_BANDIT and TEAM_HUMAN or TEAM_BANDIT)) do
		if v:IsValid() then
			for key,pos in pairs(self.TrailPositions) do
				if pos:DistToSqr(v:GetPos()) < 3690 then
					v:TakeDamage(2,owner,self)
					local bleed = v:GetStatus("bleed")
					if bleed and bleed:IsValid() then
						bleed:AddDamage(11)
						bleed.Damager = owner
					else
						local stat = v:GiveStatus("bleed")
						if stat and stat:IsValid() then
							stat:SetDamage(11)
							stat.Damager = owner
						end
					end
				end
			end
		end
	end
	return true
end
