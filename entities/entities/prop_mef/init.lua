AddCSLuaFile("cl_init.lua")
AddCSLuaFile("shared.lua")

include("shared.lua")

function ENT:Initialize()
	self:SetModel("models/mef/mef.mdl")
	self:PhysicsInit(SOLID_VPHYSICS)
	self:SetSolid(SOLID_VPHYSICS)
	self:SetCollisionGroup(COLLISION_GROUP_DEBRIS_TRIGGER)
	self:SetUseType(SIMPLE_USE)
	self:SetTrigger(true)
	local phys = self:GetPhysicsObject()
	if phys:IsValid() then
		phys:SetMaterial("material")
		phys:EnableMotion(true)
		phys:Wake()
	end

	self:ItemCreated()
end

function ENT:Use(activator, caller)
	if self.IgnoreUse then return end
	self:GiveToActivator(activator, caller)
end

function ENT:GiveToActivator(activator, caller)
	if activator:IsPlayer() and activator:Alive() and not activator:KeyDown(GAMEMODE.UtilityKey) and (activator:Team() == TEAM_HUMAN or activator:Team() == TEAM_BANDIT) and not self.Removing then
		
		local wep = activator:GetActiveWeapon()
		if not wep:IsValid() then return end
		local ammotype = wep:GetPrimaryAmmoTypeString()
		if not GAMEMODE.AmmoResupply[ammotype] then return end	
		local owner = self:GetOwner()
		
	
		
		activator.HumanSpeedAdder=activator.HumanSpeedAdder+10-- скорость
		activator:SetHealth(activator:Health()+10)--хп
		activator:ResetSpeed() 
		local owner = self:GetOwner()
		if activator ~= owner and owner:IsValid() and owner:IsPlayer() and owner:Team() == activator:Team() then
			owner:AddPoints(10)--10 пойнтов тебе за подбор тимейта
			net.Start("zs_commission")
				net.WriteEntity(self)
				net.WriteEntity(activator)
				net.WriteUInt(1, 16)
			net.Send(owner)
		end
		self:RemoveNextFrame()
	end
end

function ENT:StartTouch(ent)
	if ent:IsPlayer() and ent:Alive() then
		self:GiveToActivator(ent,ent)
	end
end