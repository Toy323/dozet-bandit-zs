ENT.Type = "anim"
ENT.RenderGroup = RENDERGROUP_BOTH

ENT.SearchDistance = 968
ENT.MinimumAimDot = 0.5
ENT.DefaultAmmo = 1000
ENT.MaxAmmo = 2500

ENT.PosePitch = 0
ENT.PoseYaw = 0

ENT.m_NoNailUnfreeze = true
ENT.NoNails = true

ENT.CanPackUp = true

ENT.IsBarricadeObject = true
ENT.AlwaysGhostable = true
ENT.MaxUpgrades = 4
ENT.UpgradeCost = 25

local NextCache = 0
local CachedFilter = {}

function ENT:ShouldNotCollide(ent)
	return ent:IsPlayer() and self:GetObjectOwner():IsPlayer() and ent:Team() == self:GetObjectOwner():Team()
end
function ENT:GetMaxAmmo()
	return self.MaxAmmo
end

function ENT:GetLocalAnglesToTarget(target)
	return self:WorldToLocalAngles(self:GetAnglesToTarget(target))
end

function ENT:GetAnglesToTarget(target)
	return self:GetAnglesToPos(self:GetTargetPos(target))
end

function ENT:GetLocalAnglesToPos(pos)
	return self:WorldToLocalAngles(self:GetAnglesToPos(pos))
end

function ENT:GetAnglesToPos(pos)
	return (pos - self:ShootPos()):Angle()
end
function ENT:GetUpgrade()
	return self:GetDTInt(12)
end
function ENT:SetUpgrade(upg)
	return self:SetDTInt(12, upg)
end
ENT.MaxShieldCapacity = 250
function ENT:GetShieldDamage()
	return self:GetDTFloat(12)
end
function ENT:SetShieldDamage(dmg)
	return self:SetDTFloat(12, dmg)
end
ENT.BaseDamageST = 6
ENT.WhatUpgradeGive = { ["Урон"] = 3,
["Трата патрон"] = {100,1},
}

function ENT:IsValidTarget(target)
	if target:IsPlayer() then
		return self:GetObjectOwner():IsPlayer() and target:Team() ~= self:GetObjectOwner():Team() and target:Alive() and self:GetForward():Dot(self:GetAnglesToTarget(target):Forward()) >= self.MinimumAimDot and TrueVisible(self:ShootPos(), self:GetTargetPos(target), self)
	elseif (target:GetClass() == "prop_drone" or target:GetClass() == "prop_manhack") and not target:IsSameTeam(self:GetObjectOwner()) then
		return true
	elseif (target:IsNailed() or target.IsBarricadeObject) and not target:IsSameTeam(self:GetObjectOwner()) and not target:GetClass() == "prop_obj_transmitter" then
		return true
	end
end

local temp_attacker
local temp_attacker_team
local function ManualTraceFilter(ent)
	if ent == temp_attacker or ent:IsPlayer() and ent:Team() == temp_attacker_team then
		return false
	end

	return true
end

local trace_manual = {mask = MASK_SHOT, filter = ManualTraceFilter}
function ENT:GetManualTrace()
	local owner = self:GetObjectOwner()
	local start = self:ShootPos()

	trace_manual.start = start
	trace_manual.endpos = start + owner:GetAimVector() * 4096

	temp_attacker = self
	temp_attacker_team = owner:IsPlayer() and owner:Team() or -1
	return util.TraceLine(trace_manual)
end
ENT.IgnoreDamageScaling = true
function ENT:CalculatePoseAngles()
	local owner = self:GetObjectOwner()
	if not owner:IsValid() or self:GetAmmo() <= 0 or self:GetMaterial() ~= "" or not GAMEMODE:GetWaveActive() then
		self.PoseYaw = math.Approach(self.PoseYaw, 0, FrameTime() * 60)
		self.PosePitch = math.Approach(self.PosePitch, 15, FrameTime() * 30)
		return
	end
	local deltatime = FrameTime()
	if self:GetManualControl() then
		local ang = self:GetLocalAnglesToPos(self:GetManualTrace().HitPos)
		self.PoseYaw = math.Approach(self.PoseYaw, math.Clamp(math.NormalizeAngle(ang.yaw), -90, 90), FrameTime() * 140)
		self.PosePitch = math.Approach(self.PosePitch, math.Clamp(math.NormalizeAngle(ang.pitch), -15, 15), FrameTime() * 140)
	else
		local target = self:GetTarget()
		if target:IsValid() then
			local ang = self:GetLocalAnglesToTarget(target)
			self.PoseYaw = math.Approach(self.PoseYaw, math.Clamp(math.NormalizeAngle(ang.yaw), -90, 90), FrameTime() * 140)
			self.PosePitch = math.Approach(self.PosePitch, math.Clamp(math.NormalizeAngle(ang.pitch), -15, 15), FrameTime() * 100)
		else
			local ct = CurTime() * 1.8 + self:EntIndex()*32
			self.PoseYaw = math.Approach(self.PoseYaw, math.sin(ct) * 75 , deltatime * 60)
			self.PosePitch = math.Approach(self.PosePitch, math.cos(ct * 1.4) * 10, deltatime * 30)
		end
	end
end

function ENT:GetScanFilter()
	local scanteam = nil
	if self:GetObjectOwner():IsPlayer() then scanteam = self:GetObjectOwner():Team() end
	local filter = team.GetPlayers(scanteam)
	filter[#filter + 1] = self
	return filter
end

local NextCache = 0
function ENT:GetCachedScanFilter()
	if CurTime() < NextCache and self.CachedFilter then return self.CachedFilter end

	self.CachedFilter = self:GetScanFilter()
	NextCache = CurTime() + 1

	return self.CachedFilter
end

local tabSearch = {mask = MASK_SHOT}
function ENT:SearchForTarget()
	local shootpos = self:ShootPos()

	tabSearch.start = shootpos
	tabSearch.endpos = shootpos + self:GetGunAngles():Forward() * self.SearchDistance
	tabSearch.filter = self:GetCachedScanFilter()
	local tr = util.TraceLine(tabSearch)
	local ent = tr.Entity
	if ent and ent:IsValid() and self:IsValidTarget(ent) then
		return ent
	end
end

function ENT:GetTargetPos(target)
		local boneid = target:GetHitBoxBone(HITGROUP_HEAD, 0)
		if boneid and boneid > 0 then
			local p, a = target:GetBonePosition(boneid)
			if pl then
				return p
			end
		end

	return target:LocalToWorld(target:OBBCenter()) + Vector(0,0,19)
end

function ENT:HumanHoldable(pl)
	return true
end

ENT.SCKMaterials = {"metal/metalcombine002",}
ENT.WElements = {
	["Gun"] = { type = "Model", model = "models/mechanics/solid_steel/steel_beam_4.mdl", bone = "Gun", rel = "", pos = Vector(0, -16, 0), angle = Angle(180, 180, 0), size = Vector(0.393, 0.393, 0.393), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} },
	["ball"] = { type = "Model", model = "models/hunter/misc/sphere1x1.mdl", bone = "", rel = "Gun", pos = Vector(-0.179, 9.61, -12.824), angle = Angle(-90, 0, 0), size = Vector(0.18, 0.18, 0.18), color = Color(200, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "phoenix_storms/mat/mat_phx_plastic", skin = 0, bodygroup = {} },
	["ball2"] = { type = "Model", model = "models/hunter/misc/sphere1x1.mdl", bone = "", rel = "Gun", pos = Vector(8.19, 4.522, -12.823), angle = Angle(-90, 0, 0), size = Vector(0.18, 0.18, 0.18), color = Color(200, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "phoenix_storms/mat/mat_phx_plastic", skin = 0, bodygroup = {} },
	["ball3"] = { type = "Model", model = "models/hunter/misc/sphere1x1.mdl", bone = "", rel = "Gun", pos = Vector(-8.552, 4.521, -12.823), angle = Angle(-90, 0, 0), size = Vector(0.18, 0.18, 0.18), color = Color(200, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "phoenix_storms/mat/mat_phx_plastic", skin = 0, bodygroup = {} },
	["ball4"] = { type = "Model", model = "models/hunter/misc/sphere1x1.mdl", bone = "", rel = "Gun", pos = Vector(-8.555, -4.518, -12.823), angle = Angle(-90, 0, 0), size = Vector(0.18, 0.18, 0.18), color = Color(200, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "phoenix_storms/mat/mat_phx_plastic", skin = 0, bodygroup = {} },
	["ball5"] = { type = "Model", model = "models/hunter/misc/sphere1x1.mdl", bone = "", rel = "Gun", pos = Vector(-0.18, -9.609, -12.823), angle = Angle(-90, 0, 0), size = Vector(0.18, 0.18, 0.18), color = Color(200, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "phoenix_storms/mat/mat_phx_plastic", skin = 0, bodygroup = {} },
	["ball6"] = { type = "Model", model = "models/hunter/misc/sphere1x1.mdl", bone = "", rel = "Gun", pos = Vector(8.188, -4.518, -12.823), angle = Angle(-90, 0, 0), size = Vector(0.18, 0.18, 0.18), color = Color(200, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "phoenix_storms/mat/mat_phx_plastic", skin = 0, bodygroup = {} },
	["batary_stvola"] = { type = "Model", model = "models/props_interiors/Radiator01a.mdl", bone = "", rel = "Gun", pos = Vector(-0.178, 0, -25.757), angle = Angle(0, 45, 90), size = Vector(0.245, 0.5, 0.245), color = Color(148, 148, 148, 255), surpresslightning = false, bonemerge = false, material = "metal/citadel_metalwall078a", skin = 0, bodygroup = {} },
	["batary_stvola+"] = { type = "Model", model = "models/props_interiors/Radiator01a.mdl", bone = "", rel = "Gun", pos = Vector(-0.178, 0, -25.757), angle = Angle(0, 135, 90), size = Vector(0.245, 0.5, 0.245), color = Color(148, 148, 148, 255), surpresslightning = false, bonemerge = false, material = "metal/citadel_metalwall078a", skin = 0, bodygroup = {} },
	["core"] = { type = "Model", model = "models/hunter/misc/shell2x2x45.mdl", bone = "", rel = "Gun", pos = Vector(-0.011, 0, -4.158), angle = Angle(-22.5, 180, -90), size = Vector(0.42, 0.42, 0.25), color = Color(223, 250, 255, 255), surpresslightning = false, bonemerge = false, material = "phoenix_storms/concrete0", skin = 0, bodygroup = {} },
	["core2"] = { type = "Model", model = "models/combine_helicopter/bomb_debris_1.mdl", bone = "", rel = "Gun", pos = Vector(-0.012, 5.543, -2.768), angle = Angle(0, -90, -30.442), size = Vector(3.596, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/error/new light1", skin = 0, bodygroup = {} },
	["core3"] = { type = "Model", model = "models/props_phx/construct/windows/window_dome360.mdl", bone = "", rel = "Gun", pos = Vector(0.579, 10.874, -3.022), angle = Angle(-86.385, 90, -180), size = Vector(0.097, 0.097, 0.074), color = Color(210, 250, 255, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} },
	["end_stvol"] = { type = "Model", model = "models/hunter/tubes/tube4x4x2to2x2.mdl", bone = "", rel = "Gun", pos = Vector(-0.179, 0, -42.914), angle = Angle(0, 180, 180), size = Vector(0.047, 0.047, 0.099), color = Color(220, 220, 255, 255), surpresslightning = false, bonemerge = false, material = "phoenix_storms/concrete0", skin = 0, bodygroup = {} },
	["end_stvol2"] = { type = "Model", model = "models/hunter/tubes/circle4x4.mdl", bone = "", rel = "Gun", pos = Vector(-0.18, 0, -37.865), angle = Angle(0, 180, 180), size = Vector(0.049, 0.049, 0.049), color = Color(220, 220, 255, 255), surpresslightning = false, bonemerge = false, material = "phoenix_storms/concrete0", skin = 0, bodygroup = {} },
	["lepestky"] = { type = "Model", model = "models/hunter/triangles/2x1x1.mdl", bone = "", rel = "Gun", pos = Vector(5.06, 8.782, -14.601), angle = Angle(0, 30, -108), size = Vector(0.11, 0.11, 0.11), color = Color(220, 220, 255, 255), surpresslightning = false, bonemerge = false, material = "phoenix_storms/concrete0", skin = 0, bodygroup = {} },
	["lepestky2"] = { type = "Model", model = "models/hunter/triangles/2x1x1.mdl", bone = "", rel = "Gun", pos = Vector(9.751, 0, -14.601), angle = Angle(0, 90, -108), size = Vector(0.11, 0.11, 0.11), color = Color(220, 220, 255, 255), surpresslightning = false, bonemerge = false, material = "phoenix_storms/concrete0", skin = 0, bodygroup = {} },
	["lepestky3"] = { type = "Model", model = "models/hunter/triangles/2x1x1.mdl", bone = "", rel = "Gun", pos = Vector(5.06, -8.783, -14.601), angle = Angle(0, 150, -108), size = Vector(0.11, 0.11, 0.11), color = Color(220, 220, 255, 255), surpresslightning = false, bonemerge = false, material = "phoenix_storms/concrete0", skin = 0, bodygroup = {} },
	["lepestky4"] = { type = "Model", model = "models/hunter/triangles/2x1x1.mdl", bone = "", rel = "Gun", pos = Vector(-5.431, -8.781, -14.6), angle = Angle(0, -150, -108), size = Vector(0.11, 0.11, 0.11), color = Color(220, 220, 255, 255), surpresslightning = false, bonemerge = false, material = "phoenix_storms/concrete0", skin = 0, bodygroup = {} },
	["lepestky5"] = { type = "Model", model = "models/hunter/triangles/2x1x1.mdl", bone = "", rel = "Gun", pos = Vector(-10.162, 0, -14.601), angle = Angle(0, -90, -108), size = Vector(0.11, 0.11, 0.11), color = Color(220, 220, 255, 255), surpresslightning = false, bonemerge = false, material = "phoenix_storms/concrete0", skin = 0, bodygroup = {} },
	["lepestky6"] = { type = "Model", model = "models/hunter/triangles/2x1x1.mdl", bone = "", rel = "Gun", pos = Vector(-5.431, 8.783, -14.6), angle = Angle(0, -30, -108), size = Vector(0.11, 0.11, 0.11), color = Color(220, 220, 255, 255), surpresslightning = false, bonemerge = false, material = "phoenix_storms/concrete0", skin = 0, bodygroup = {} },
	["middle_stvol"] = { type = "Model", model = "models/props_phx/construct/metal_wire_angle360x1.mdl", bone = "", rel = "Gun", pos = Vector(-0.18, 0, -25.523), angle = Angle(0, 180, 180), size = Vector(0.1, 0.1, 0.27), color = Color(220, 220, 255, 255), surpresslightning = false, bonemerge = false, material = "phoenix_storms/concrete0", skin = 0, bodygroup = {} },
	["middle_stvol2"] = { type = "Model", model = "models/props_phx/construct/metal_wire_angle360x1.mdl", bone = "", rel = "Gun", pos = Vector(-0.179, 0, -37.617), angle = Angle(0, 180, 180), size = Vector(0.1, 0.1, 0.19), color = Color(220, 220, 255, 255), surpresslightning = false, bonemerge = false, material = "phoenix_storms/concrete0", skin = 0, bodygroup = {} },
	["nachalo_stvol"] = { type = "Model", model = "models/hunter/tubes/tube4x4x2to2x2.mdl", bone = "", rel = "Gun", pos = Vector(-0.18, 0, -20.843), angle = Angle(0, 180, 180), size = Vector(0.1, 0.1, 0.1), color = Color(220, 220, 255, 255), surpresslightning = false, bonemerge = false, material = "phoenix_storms/concrete0", skin = 0, bodygroup = {} },
	["nachalo_stvol2"] = { type = "Model", model = "models/hunter/tubes/circle4x4.mdl", bone = "", rel = "Gun", pos = Vector(-0.18, 0, -15.975), angle = Angle(0, 0, 0), size = Vector(0.1, 0.1, 0.1), color = Color(220, 220, 255, 255), surpresslightning = false, bonemerge = false, material = "phoenix_storms/concrete0", skin = 0, bodygroup = {} },
	["osnova"] = { type = "Model", model = "models/hunter/tubes/circle2x2.mdl", bone = "", rel = "turret", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(0.619, 0.619, 0.619), color = Color(210, 210, 210, 255), surpresslightning = false, bonemerge = false, material = "phoenix_storms/iron_rails", skin = 0, bodygroup = {} },
	["osnova2"] = { type = "Model", model = "models/hunter/misc/shell2x2a.mdl", bone = "", rel = "turret", pos = Vector(0, 0, 0), angle = Angle(0, 11.85, 0), size = Vector(0.6, 0.6, 0.318), color = Color(0, 63, 255, 255), surpresslightning = false, bonemerge = false, material = "phoenix_storms/concrete1", skin = 0, bodygroup = {} },
	["osnova3"] = { type = "Model", model = "models/hunter/misc/shell2x2a.mdl", bone = "", rel = "turret", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(0.6, 0.6, 0.318), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "phoenix_storms/concrete1", skin = 0, bodygroup = {} },
	["osnova4"] = { type = "Model", model = "models/hunter/tubes/tube4x4x1to2x2.mdl", bone = "", rel = "turret", pos = Vector(0, 0, 19.783), angle = Angle(0, 0, 0), size = Vector(0.14, 0.14, 0.14), color = Color(210, 210, 210, 255), surpresslightning = false, bonemerge = false, material = "phoenix_storms/iron_rails", skin = 0, bodygroup = {} },
	["osnova5"] = { type = "Model", model = "models/hunter/tubes/circle4x4.mdl", bone = "", rel = "turret", pos = Vector(0, 0, 19.68), angle = Angle(0, 0, 0), size = Vector(0.07, 0.07, 0.07), color = Color(210, 210, 210, 255), surpresslightning = false, bonemerge = false, material = "phoenix_storms/iron_rails", skin = 0, bodygroup = {} },
	["osnova6"] = { type = "Model", model = "models/hunter/tubes/tube4x4x5.mdl", bone = "", rel = "turret", pos = Vector(0, 0, 19.68), angle = Angle(0, 0, 0), size = Vector(0.048, 0.048, 0.125), color = Color(210, 210, 210, 255), surpresslightning = false, bonemerge = false, material = "phoenix_storms/iron_rails", skin = 0, bodygroup = {} },
	["osnova7"] = { type = "Model", model = "models/hunter/misc/shell2x2a.mdl", bone = "", rel = "turret", pos = Vector(0, 0, 39.545), angle = Angle(0, 0, -180), size = Vector(0.24, 0.24, 0.24), color = Color(210, 210, 210, 255), surpresslightning = false, bonemerge = false, material = "phoenix_storms/iron_rails", skin = 0, bodygroup = {} },
	["osnova8"] = { type = "Model", model = "models/hunter/misc/shell2x2a.mdl", bone = "", rel = "turret", pos = Vector(0, 0, 39.552), angle = Angle(0, 0, 0), size = Vector(0.24, 0.24, 0.05), color = Color(210, 210, 210, 255), surpresslightning = false, bonemerge = false, material = "phoenix_storms/iron_rails", skin = 0, bodygroup = {} },
	["osnova_gun"] = { type = "Model", model = "models/hunter/misc/shell2x2a.mdl", bone = "", rel = "Gun", pos = Vector(-0.117, 0.001, -3.759), angle = Angle(0, 180, -180), size = Vector(0.25, 0.25, 0.25), color = Color(223, 250, 255, 255), surpresslightning = false, bonemerge = false, material = "phoenix_storms/concrete0", skin = 0, bodygroup = {} },
	["osnova_gun2"] = { type = "Model", model = "models/hunter/misc/shell2x2x45.mdl", bone = "", rel = "Gun", pos = Vector(-0.071, 0, -3.743), angle = Angle(-90, 90, 0), size = Vector(0.85, 0.25, 0.25), color = Color(223, 250, 255, 255), surpresslightning = false, bonemerge = false, material = "phoenix_storms/concrete0", skin = 0, bodygroup = {} },
	["osnova_gun2+"] = { type = "Model", model = "models/hunter/misc/shell2x2x45.mdl", bone = "", rel = "Gun", pos = Vector(-0.071, 0, -3.742), angle = Angle(-90, -90, 0), size = Vector(0.85, 0.25, 0.25), color = Color(223, 250, 255, 255), surpresslightning = false, bonemerge = false, material = "phoenix_storms/concrete0", skin = 0, bodygroup = {} },
	["osnova_gun3"] = { type = "Model", model = "models/hunter/tubes/circle2x2c.mdl", bone = "", rel = "Gun", pos = Vector(-0.438, 0, -4.007), angle = Angle(-73.758, 180, 180), size = Vector(0.635, 0.247, 0.247), color = Color(223, 250, 255, 255), surpresslightning = false, bonemerge = false, material = "phoenix_storms/concrete0", skin = 0, bodygroup = {} },
	["osnova_gun3+"] = { type = "Model", model = "models/hunter/tubes/circle2x2c.mdl", bone = "", rel = "Gun", pos = Vector(0.367, 0, -4.172), angle = Angle(-73.758, 0, 0), size = Vector(0.635, 0.245, 0.248), color = Color(223, 250, 255, 255), surpresslightning = false, bonemerge = false, material = "phoenix_storms/concrete0", skin = 0, bodygroup = {} },
	["osnova_gun5"] = { type = "Model", model = "models/hunter/tubes/tube4x4x6.mdl", bone = "", rel = "Gun", pos = Vector(-0.094, 0, -15.374), angle = Angle(0, -180, 180), size = Vector(0.049, 0.049, 0.005), color = Color(223, 250, 255, 255), surpresslightning = false, bonemerge = false, material = "phoenix_storms/concrete0", skin = 0, bodygroup = {} },
	["turret"] = { type = "Model", model = "models/combine_turrets/floor_turret.mdl", bone = "Base", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 270), size = Vector(1, 1, 1), color = Color(255, 255, 255, 0), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} }
}

function ENT:DefaultPos()
	return self:GetPos() + self:GetUp() * 55
end

function ENT:ShootPos()
	local attachid = self:LookupAttachment("Gun")
	if attachid then
		local attach = self:GetAttachment(attachid)
		if attach then return attach.Pos  + Vector(0,0,15) end
	end

	return self:DefaultPos() + Vector(0,0,15)
end

function ENT:LaserPos()
	return self.WElements['end_stvol'].modelEnt:GetPos() - Vector(0,0,15)
end
ENT.LightPos = ENT.LaserPos

function ENT:GetGunAngles()
	local ang = self:GetAngles()
	ang:RotateAroundAxis(ang:Right(), -self.PosePitch)
	ang:RotateAroundAxis(ang:Up(), self.PoseYaw)
	return ang
end

function ENT:SetAmmo(ammo)
	self:SetDTInt(0, math.min(ammo,self:GetMaxAmmo()))
end

function ENT:GetAmmo()
	return self:GetDTInt(0)
end

function ENT:SetTarget(ent)
	if ent:IsValid() then
		self:SetTargetReceived(CurTime())
		if SERVER then
			self.LastHitSomething = CurTime()
		end
	else
		self:SetTargetLost(CurTime())
	end
	self:SetDTEntity(0, ent)
end

function ENT:GetObjectHealth()
	return self:GetDTFloat(3)
end

function ENT:SetMaxObjectHealth(health)
	self:SetDTInt(1, health)
end

function ENT:GetMaxObjectHealth()
	return self:GetDTInt(1)
end

function ENT:GetTarget()
	return self:GetDTEntity(0)
end

function ENT:SetObjectOwner(ent)
	self:SetDTEntity(1, ent)
end

function ENT:GetObjectOwner()
	return self:GetDTEntity(1)
end

function ENT:ClearObjectOwner()
	self:SetObjectOwner(NULL)
end

function ENT:ClearTarget()
	self:SetTarget(NULL)
end

function ENT:SetTargetReceived(tim)
	self:SetDTFloat(0, tim)
end

function ENT:GetTargetReceived()
	return self:GetDTFloat(0)
end

function ENT:SetTargetLost(tim)
	self:SetDTFloat(1, tim)
end

function ENT:GetTargetLost()
	return self:GetDTFloat(1)
end

function ENT:SetNextFire(tim)
	self:SetDTFloat(2, tim)
end

function ENT:GetNextFire()
	return self:GetDTFloat(2)
end

function ENT:SetFiring(onoff)
	self:SetDTBool(0, onoff)
end

function ENT:IsFiring()
	return self:GetDTBool(0)
end

function ENT:GetManualControl()
	local owner = self:GetObjectOwner()
	if owner:IsValid() and owner:Alive() and (owner:Team() == TEAM_HUMAN or owner:Team() == TEAM_BANDIT) then
		local wep = owner:GetActiveWeapon()
		if wep:IsValid() and wep:GetClass() == "weapon_zs_gunturretcontrol" and not wep:GetDTBool(0) then
			return true
		end
	end
	return false
end

function ENT:CanBePackedBy(pl)
	local owner = self:GetObjectOwner()
	if not pl:IsPlayer() or not owner:IsPlayer() then return false end
	return not owner:IsValid() or owner == pl or owner:Team() == pl:Team() or gamemode.Call("PlayerIsAdmin", pl)
end


util.PrecacheSound("npc/turret_floor/die.wav")
util.PrecacheSound("npc/turret_floor/active.wav")
util.PrecacheSound("npc/turret_floor/deploy.wav")
util.PrecacheSound("npc/turret_floor/shoot1.wav")
util.PrecacheSound("npc/turret_floor/shoot2.wav")
util.PrecacheSound("npc/turret_floor/shoot3.wav")
