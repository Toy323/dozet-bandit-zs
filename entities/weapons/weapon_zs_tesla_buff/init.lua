INC_SERVER()
function SWEP:HaveAbility()
    if self:GetDTFloat(12) > CurTime() then return end
    self:SetDTFloat(12,CurTime() + 15)
    local owner = self:GetOwner()
    if owner:GetAmmoCount('pulse') > 24 then
        self:TakePrimaryAmmo(125)
        local effectdata = EffectData()
        effectdata:SetOrigin(owner:WorldSpaceCenter())
            effectdata:SetNormal(owner:GetShootPos())
        util.Effect("explosion_shockcore", effectdata)
        for k,v in pairs(player.FindInSphere(owner:WorldSpaceCenter(), 250)) do
            local wep = v:GetActiveWeapon()
            if  v:Team() == owner:Team() and wep.Primary.Ammo == "pulse" then
                wep:SetDTBool(12, true)
                timer.Simple(7, function() if wep and wep:IsValid() then                    wep.Primary.Damage = wep.Primary.Damage / 1.4                 wep.Primary.Delay = wep.Primary.Delay / 0.75            wep:SetDTBool(12, false) end end)
                wep.Primary.Damage = wep.Primary.Damage * 1.4
                wep.Primary.Delay = wep.Primary.Delay * 0.75
            end
        end
    end
end