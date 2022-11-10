

local meta = FindMetaTable("Player")
if not meta then return end
function meta:SetStamina(stamina)
	self:SetDTFloat(DT_PLAYER_FLOAT_STAMINA,stamina)
end
function meta:GetStamina()
	return self:GetDTFloat(DT_PLAYER_FLOAT_STAMINA)
end
function meta:AddStamina(stamina)
	self:SetStamina(math.Clamp(self:GetStamina() + stamina,0,100))
    if stamina < 0 then
        self.StaminaUsed = CurTime() + 1.1 + (self:GetActiveWeapon().Primary.Delay or 1)
    end
end
