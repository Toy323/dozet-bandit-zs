ENT.Type = "anim"

ENT.CanPackUp = true

ENT.m_NoNailUnfreeze = true
ENT.NoNails = true

ENT.IsBarricadeObject = true
ENT.AlwaysGhostable = true

ENT.MaxUpgrades = 3
ENT.UpgradeCost = 14
--ENT.AvailableUpgrades = 2


function ENT:GetUpgrade()
	return self:GetDTInt(12)
end
function ENT:SetUpgrade(upg)
	return self:SetDTInt(12, upg)
end
function ENT:SetObjectOwner(owner)
	self:SetDTEntity(0, owner)
end

function ENT:GetObjectOwner()
	return self:GetDTEntity(0)
end

function ENT:SetObjectHealth(health)
	self:SetDTFloat(0, health)

	if health <= 0 and not self.Destroyed then
		self.Destroyed = true
		if SERVER then
			local effectdata = EffectData()
				effectdata:SetOrigin(self:LocalToWorld(self:OBBCenter()))
			util.Effect("Explosion", effectdata, true, true)
		end
	end
end

ENT.WhatUpgradeGive = { ["Доп.Радиус защиты"] = {20,0,1}
}

function ENT:GetObjectHealth()
	return self:GetDTFloat(0)
end

function ENT:SetMaxObjectHealth(health)
	self:SetDTFloat(1, health)
end

function ENT:GetMaxObjectHealth()
	return self:GetDTFloat(1)
end