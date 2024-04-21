
function GM:GetGlobalStamina(teamed)
    if teamed and !team.Valid(teamed) then
        MsgC( Color(179,17,17),"Team is invalid!")
        return "Team is invalid!"
    end
    local gstamina = 0
    local ply = teamed and team.GetPlayers(teamed) or player.GetAll()
	for _, pl in pairs(ply) do
        gstamina = gstamina + pl:GetStamina()
    end
    
    return gstamina
end
function GM:GetPercGlobalStamina(teamed, reverse)
    if teamed and !team.Valid(teamed) then
        MsgC( Color(179,17,17),"Team is invalid!")
        return "Team is invalid!"
    end
    local ply = teamed and team.GetPlayers(teamed) or player.GetAll()
    local gstamina = 0
	for _, pl in pairs(ply) do
        gstamina = gstamina + pl:GetStamina() * (reverse and -1 or 1)
    end
    return gstamina/#ply
end
local meta = FindMetaTable("Player")
if not meta then return end
function meta:SetStamina(stamina)
	self:SetDTFloat(DT_PLAYER_FLOAT_STAMINA,stamina)
end
function meta:GetStamina()
	return self:GetDTFloat(DT_PLAYER_FLOAT_STAMINA)
end
function meta:AddStamina(stamina, run)
    if GAMEMODE:GetSpecialWave() == "old" then return end
    if stamina < 0 then
        stamina = stamina * (self.StaminaUse or 1)
        if (self.AdrenalineNoUse or 0) > CurTime() then
            return
        end
    end
    if stamina > 0 then
        stamina = stamina * (self.StaminaAdd or 1)
    end
	self:SetStamina(math.Clamp(self:GetStamina() + stamina,0,100))
    if stamina < 0 then
        self.StaminaUsed = CurTime() + 1.1 + (self:GetActiveWeapon() ~= NULL and self:GetActiveWeapon().Primary.Delay or 1) * 1.7
        if run then
            self.StaminaRun = CurTime() + 0.5
        end
    end
end
