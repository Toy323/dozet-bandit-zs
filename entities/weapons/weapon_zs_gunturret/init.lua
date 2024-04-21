AddCSLuaFile("cl_init.lua")
AddCSLuaFile("shared.lua")

include("shared.lua")

SWEP.IsConsumable = true

function SWEP:Deploy()
	gamemode.Call("WeaponDeployed", self:GetOwner(), self)

	self.IdleAnimation = CurTime() + self:SequenceDuration()

	self:SpawnGhost()

	return true
end

function SWEP:OnRemove()
	self:RemoveGhost()
end

function SWEP:Holster()
	self:RemoveGhost()
	return true
end

function SWEP:SpawnGhost()
	local owner = self:GetOwner()
	if owner and owner:IsValid() then
		owner:GiveStatus("ghost_gunturret")
	end
end

function SWEP:RemoveGhost()
	local owner = self:GetOwner()
	if owner and owner:IsValid() then
		owner:RemoveStatus("ghost_gunturret", false, true)
	end
end

function SWEP:PrimaryAttack()
	if not self:CanPrimaryAttack() then return end

	local owner = self:GetOwner()

	local status = owner.status_ghost_gunturret
	if not (status and status:IsValid()) then return end
	status:RecalculateValidity()
	if not status:GetValidPlacement() then return end

	local pos, ang = status:RecalculateValidity()
	if not pos or not ang then return end

	self:SetNextPrimaryAttack(CurTime() + self.Primary.Delay)
	local stored = owner:PopPackedItem('prop_gunturret')
	local class = 'prop_gunturret'
	if stored and stored[4] == "mortar" then
		class = 'prop_mortar'
	elseif stored and stored[4] == "laser" then
		class = 'prop_laser_turret'
	end
	local ent = ents.Create(class)
	if ent:IsValid() then
		ent:SetPos(pos + (stored and stored[4] == "mortar" and Vector(0,0,19) or Vector(0,0,0)))
		ent:SetAngles(ang)
		ent:Spawn()

		ent:SetObjectOwner(owner)

		ent:EmitSound("npc/dog/dog_servo12.wav")

		ent:GhostAllPlayersInMe(5)

		self:TakePrimaryAmmo(1)

		if stored then
			ent:SetObjectHealth(stored[1])
			ent:SetAmmo(stored[2])
			ent:SetUpgrade(stored[3])
		end

		if not owner:HasWeapon("weapon_zs_gunturretcontrol") then
			owner:Give("weapon_zs_gunturretcontrol")
		end

		if self:GetPrimaryAmmoCount() <= 0 then
			owner:StripWeapon(self:GetClass())
		end
	end
end
