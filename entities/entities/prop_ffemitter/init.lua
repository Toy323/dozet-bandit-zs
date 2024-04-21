AddCSLuaFile("cl_init.lua")
AddCSLuaFile("shared.lua")

include("shared.lua")

local function RefreshCrateOwners(pl)
	for _, ent in pairs(ents.FindByClass("prop_ffemitter")) do
		if ent:IsValid() and ent:GetObjectOwner() == pl then
			ent:SetObjectOwner(NULL)
		end
	end
end
hook.Add("PlayerDisconnected", "FFemitter.PlayerDisconnected", RefreshCrateOwners)
hook.Add("OnPlayerChangedTeam", "FFemitter.OnPlayerChangedTeam", RefreshCrateOwners)

function ENT:Initialize()
	self:SetModel("models/props_lab/lab_flourescentlight002b.mdl")
	self:PhysicsInit(SOLID_VPHYSICS)
	self:SetUseType(SIMPLE_USE)
	self:SetCollisionGroup(COLLISION_GROUP_PASSABLE_DOOR)
	self:SetMaxObjectHealth(100)
	self:SetObjectHealth(self:GetMaxObjectHealth())
	local phys = self:GetPhysicsObject()
	if phys:IsValid() then
		phys:EnableMotion(false)
		phys:Wake()
	end
	self:ManipulateBoneScale(0, Vector(1.5,1.5, 1))
	local ent = ents.Create("prop_ffemitterfield")
	if ent:IsValid() then
		self.Field = ent
		ent:SetPos(self:GetPos() + self:GetForward() * 48)
		ent:SetAngles(self:GetAngles())
		ent:SetOwner(self)
		ent:Spawn()
	end
end

function ENT:OnRemove()
	if self.Field and self.Field:IsValid() then
		self.Field:Remove()
	end
	if self.Field2 and self.Field2:IsValid() then
		self.Field2:Remove()
	end
end

function ENT:OnTakeDamage(dmginfo)
	self:TakePhysicsDamage(dmginfo)

	if not self.Destroyed then
		local attacker = dmginfo:GetAttacker()
		if not (attacker:IsValid() and attacker:IsPlayer() and self:GetObjectOwner():IsPlayer() and attacker:Team() == self:GetObjectOwner():Team()) then
			self:ResetLastBarricadeAttacker(attacker, dmginfo)
			self:SetObjectHealth(self:GetObjectHealth() - dmginfo:GetDamage())
		end
	end
end

function ENT:AltUse(activator, tr)
	self:PackUp(activator)
end

function ENT:OnPackedUp(pl)
	pl:GiveEmptyWeapon("weapon_zs_ffemitter")
	pl:GiveAmmo(1, "slam")

	pl:PushPackedItem(self:GetClass(), self:GetObjectHealth(), self:GetUpgrade())

	self:Remove()
end
ENT.OldUpgrade = 0
function ENT:Think()
	if self.Destroyed then
		self:Remove()
	end
	local upg = self:GetUpgrade()
	if upg ~= self.OldUpgrade then
		self:ManipulateBoneScale(0, Vector(1.5-(upg*0.2),1.5-(upg*0.2), 1))
		self.OldUpgrade = upg
		self.Field:ManipulateBoneScale(0, Vector(0.8+ upg*0.2,.8 + upg*0.2, 1))
		if upg == 3 then
			local ent = ents.Create("prop_ffemitterfield")
			if ent:IsValid() and (!self.Field2 or !self.Field2:IsValid()) then
				self.Field2 = ent
				ent:SetPos(self:GetPos() + Vector(0,0,96) + self:GetUp()*36)
				ent:SetAngles(self:GetAngles()-Angle(90,0,0))
				ent:SetOwner(self)
				ent:Spawn()
			end
		else
			if self.Field2 and self.Field2:IsValid() then
				self.Field2:Remove()
			end
		end
	end
end
