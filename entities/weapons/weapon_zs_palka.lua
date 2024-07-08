AddCSLuaFile()

if CLIENT then
	SWEP.TranslateName = "weapon_palka_name"
	SWEP.TranslateDesc = "weapon_palka_desc"
	SWEP.ViewModelFOV = 55
	SWEP.ViewModelFlip = false

	SWEP.ShowViewModel = false
	SWEP.ShowWorldModel = false
	SWEP.VElements = {
		["ceil_crystall"] = { type = "Model", model = "models/hunter/misc/platehole1x1d.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "palka", pos = Vector(7.279, -5.953, 1.867), angle = Angle(11.294, 67.297, -14.023), size = Vector(0.093, 0.093, 0.093), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/props_foliage/driftwood_01a", skin = 0, bodygroup = {} },
		["ceil_crystall2"] = { type = "Model", model = "models/hunter/misc/platehole1x1d.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "palka", pos = Vector(8.126, -3.751, 1.904), angle = Angle(-10.386, -112.804, 13.41), size = Vector(0.093, 0.093, 0.093), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/props_foliage/driftwood_01a", skin = 0, bodygroup = {} },
		["ceil_crystall_center"] = { type = "Model", model = "models/props_phx/construct/metal_angle90.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "palka", pos = Vector(8.738, -0.984, 2.406), angle = Angle(-7, 135, -14), size = Vector(0.045, 0.045, 0.045), color = Color(180, 180, 180, 255), surpresslightning = false, bonemerge = false, material = "models/props_foliage/driftwood_01a", skin = 0, bodygroup = {} },
		["ceil_crystall_center2"] = { type = "Model", model = "models/props_phx/construct/metal_angle90.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "ceil_crystall_center", pos = Vector(-4.5, 4.5, 0), angle = Angle(0, -180, 0), size = Vector(0.045, 0.045, 0.045), color = Color(180, 180, 180, 255), surpresslightning = false, bonemerge = false, material = "models/props_foliage/driftwood_01a", skin = 0, bodygroup = {} },
		["ceil_crystall_center3"] = { type = "Model", model = "models/props_phx/construct/metal_angle90.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "ceil_crystall_center", pos = Vector(-4.5, 0, 0), angle = Angle(0, 90, 0), size = Vector(0.045, 0.045, 0.045), color = Color(180, 180, 180, 255), surpresslightning = false, bonemerge = false, material = "models/props_foliage/driftwood_01a", skin = 0, bodygroup = {} },
		["ceil_crystall_center4"] = { type = "Model", model = "models/props_phx/construct/metal_angle90.mdl", bone = "ValveBiped.Bip01", rel = "ceil_crystall_center", pos = Vector(0, 4.5, 0), angle = Angle(0, -90, 0), size = Vector(0.045, 0.045, 0.045), color = Color(180, 180, 180, 255), surpresslightning = false, bonemerge = false, material = "models/props_foliage/driftwood_01a", skin = 0, bodygroup = {} },
		["ceil_crystall_second"] = { type = "Model", model = "models/hunter/tubes/tube2x2x025c.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "palka", pos = Vector(9.291, 5.611, 0.143), angle = Angle(0, -46, 0), size = Vector(0.034, 0.034, 0.04), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/props_foliage/driftwood_01a", skin = 0, bodygroup = {} },
		["ceil_crystall_second2"] = { type = "Model", model = "models/hunter/misc/platehole1x1d.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "palka", pos = Vector(8.515, 4.738, 0.143), angle = Angle(0, 88, 0), size = Vector(0.096, 0.096, 0.14), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/props_foliage/driftwood_01a", skin = 0, bodygroup = {} },
		["crystall"] = { type = "Model", model = "models/hunter/misc/cone4x2mirrored.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "palka", pos = Vector(7.747, -4.867, 1.883), angle = Angle(-71.895, 10.925, -98.343), size = Vector(0.011, 0.011, 0.011), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "effects/flicker_256", skin = 0, bodygroup = {} },
		["crystall_center"] = { type = "Model", model = "models/hunter/misc/cone4x2mirrored.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "ceil_crystall_center", pos = Vector(-2.24, 2.24, 0), angle = Angle(0, 0, -90), size = Vector(0.015, 0.015, 0.015), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "effects/flicker_256", skin = 0, bodygroup = {} },
		["crystall_second"] = { type = "Model", model = "models/hunter/misc/cone4x2mirrored.mdl", bone = "ValveBiped.Bip01", rel = "palka", pos = Vector(9.223, 5.526, 0.143), angle = Angle(90, -46, 0), size = Vector(0.012, 0.012, 0.012), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "effects/flicker_256", skin = 0, bodygroup = {} },
		["palka"] = { type = "Model", model = "models/props_foliage/driftwood_02a.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(5.108, 0.902, -8.258), angle = Angle(-80, 0, 180), size = Vector(0.04, 0.05, 0.05), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/props_foliage/driftwood_01a", skin = 1, bodygroup = {} },
		["palka2"] = { type = "Model", model = "models/props_pipes/pipecluster16d_003a.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "palka", pos = Vector(7.359, -3.677, 2.991), angle = Angle(-5.443, 122.71, -106.712), size = Vector(0.058, 0.058, 0.058), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/props_foliage/driftwood_01a", skin = 0, bodygroup = {} },
		["palka3"] = { type = "Model", model = "models/props_foliage/driftwood_03a.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "palka", pos = Vector(5.364, 2.864, 0.981), angle = Angle(-180, -15.004, 0), size = Vector(0.049, 0.041, 0.052), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} }
		}
		
		SWEP.WElements = {
		["ceil_crystall"] = { type = "Model", model = "models/hunter/misc/platehole1x1d.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "palka", pos = Vector(7.279, -5.953, 1.867), angle = Angle(11.294, 67.297, -14.023), size = Vector(0.093, 0.093, 0.093), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/props_foliage/driftwood_01a", skin = 0, bodygroup = {} },
		["ceil_crystall2"] = { type = "Model", model = "models/hunter/misc/platehole1x1d.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "palka", pos = Vector(8.126, -3.751, 1.904), angle = Angle(-10.386, -112.804, 13.41), size = Vector(0.093, 0.093, 0.093), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/props_foliage/driftwood_01a", skin = 0, bodygroup = {} },
		["ceil_crystall_center"] = { type = "Model", model = "models/props_phx/construct/metal_angle90.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "palka", pos = Vector(8.738, -0.984, 2.406), angle = Angle(-7, 135, -14), size = Vector(0.045, 0.045, 0.045), color = Color(180, 180, 180, 255), surpresslightning = false, bonemerge = false, material = "models/props_foliage/driftwood_01a", skin = 0, bodygroup = {} },
		["ceil_crystall_center2"] = { type = "Model", model = "models/props_phx/construct/metal_angle90.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "ceil_crystall_center", pos = Vector(-4.5, 4.5, 0), angle = Angle(0, -180, 0), size = Vector(0.045, 0.045, 0.045), color = Color(180, 180, 180, 255), surpresslightning = false, bonemerge = false, material = "models/props_foliage/driftwood_01a", skin = 0, bodygroup = {} },
		["ceil_crystall_center3"] = { type = "Model", model = "models/props_phx/construct/metal_angle90.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "ceil_crystall_center", pos = Vector(-4.5, 0, 0), angle = Angle(0, 90, 0), size = Vector(0.045, 0.045, 0.045), color = Color(180, 180, 180, 255), surpresslightning = false, bonemerge = false, material = "models/props_foliage/driftwood_01a", skin = 0, bodygroup = {} },
		["ceil_crystall_center4"] = { type = "Model", model = "models/props_phx/construct/metal_angle90.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "ceil_crystall_center", pos = Vector(0, 4.5, 0), angle = Angle(0, -90, 0), size = Vector(0.045, 0.045, 0.045), color = Color(180, 180, 180, 255), surpresslightning = false, bonemerge = false, material = "models/props_foliage/driftwood_01a", skin = 0, bodygroup = {} },
		["ceil_crystall_second"] = { type = "Model", model = "models/hunter/tubes/tube2x2x025c.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "palka", pos = Vector(9.291, 5.611, 0.143), angle = Angle(0, -46, 0), size = Vector(0.034, 0.034, 0.04), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/props_foliage/driftwood_01a", skin = 0, bodygroup = {} },
		["ceil_crystall_second2"] = { type = "Model", model = "models/hunter/misc/platehole1x1d.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "palka", pos = Vector(8.515, 4.738, 0.143), angle = Angle(0, 88, 0), size = Vector(0.096, 0.096, 0.14), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/props_foliage/driftwood_01a", skin = 0, bodygroup = {} },
		["crystall"] = { type = "Model", model = "models/hunter/misc/cone4x2mirrored.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "palka", pos = Vector(7.747, -4.867, 1.883), angle = Angle(-71.895, 10.925, -98.343), size = Vector(0.011, 0.011, 0.011), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "effects/flicker_256", skin = 0, bodygroup = {} },
		["crystall_center"] = { type = "Model", model = "models/hunter/misc/cone4x2mirrored.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "ceil_crystall_center", pos = Vector(-2.24, 2.24, 0), angle = Angle(0, 0, -90), size = Vector(0.015, 0.015, 0.015), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "effects/flicker_256", skin = 0, bodygroup = {} },
		["crystall_second"] = { type = "Model", model = "models/hunter/misc/cone4x2mirrored.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "palka", pos = Vector(9.223, 5.526, 0.143), angle = Angle(90, -46, 0), size = Vector(0.012, 0.012, 0.012), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "effects/flicker_256", skin = 0, bodygroup = {} },
		["palka"] = { type = "Model", model = "models/props_foliage/driftwood_02a.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(5.108, 0.902, -8.258), angle = Angle(-80, 0, 180), size = Vector(0.04, 0.05, 0.05), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/props_foliage/driftwood_01a", skin = 1, bodygroup = {} },
		["palka2"] = { type = "Model", model = "models/props_pipes/pipecluster16d_003a.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "palka", pos = Vector(7.359, -3.677, 2.991), angle = Angle(-5.443, 122.71, -106.712), size = Vector(0.058, 0.058, 0.058), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "models/props_foliage/driftwood_01a", skin = 0, bodygroup = {} },
		["palka3"] = { type = "Model", model = "models/props_foliage/driftwood_03a.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "palka", pos = Vector(5.364, 2.864, 0.981), angle = Angle(-180, -15.004, 0), size = Vector(0.049, 0.041, 0.052), color = Color(255, 255, 255, 255), surpresslightning = false, bonemerge = false, material = "", skin = 0, bodygroup = {} }
		}
		
end

SWEP.Base = "weapon_zs_basemelee"

SWEP.DamageType = DMG_SLASH

SWEP.ViewModel = "models/weapons/v_stunstick.mdl"
SWEP.WorldModel = "models/weapons/w_stunbaton.mdl"
SWEP.ShowViewModel = false
SWEP.ShowWorldModel = false
SWEP.UseHands = true
SWEP.NoDroppedWorldModel = true
--[[SWEP.BoxPhysicsMax = Vector(8, 1, 4)
SWEP.BoxPhysicsMin = Vector(-8, -1, -4)]]

SWEP.MeleeDamage = 14
SWEP.MeleeRange = 48
SWEP.MeleeSize = 0.875
SWEP.Primary.Delay = 0.35

SWEP.WalkSpeed = SPEED_FAST

SWEP.Stamina = 4

SWEP.MaxRunes = 3

SWEP.UseMelee1 = true

SWEP.HitGesture = ACT_HL2MP_GESTURE_RANGE_ATTACK_MELEE
SWEP.MissGesture = SWEP.HitGesture

SWEP.HitDecal = "Manhackcut"
SWEP.HitAnim = ACT_VM_MISSCENTER

SWEP.Magics = {}
SWEP.Ochered = {}
SWEP.AntiCrash = 0
local function AddMagic(self, tal, cooldown)
	tal[5] = cooldown
	self.Magics[#self.Magics+1] = tal
	self.Magics[tal[1]] = tal
	if !cooldown then return end
	self[cooldown] = 0
--	print(tal[1])
end
function SWEP:GetMagicID(name)
	return self.Magics[name]
end
if 1 then
	local function DoRicochet(attacker, hitpos, hitnormal, normal, damage, call)
		attacker:FireBullets({Num = 1, Src = hitpos, Dir =  2 * hitnormal * hitnormal:Dot(normal * -1) + normal, Spread = Vector(0, 0, 0), Tracer = 1, TracerName = 'tracer_interception', Force = 1, Damage = damage, Callback = call})
	end
	local function DoTrace(attacker, hitpos, hitnormal, normal, damage, call, ent)
		attacker:FireBullets({Num = 1, Src = hitpos, Dir = normal, Spread = Vector(0, 0, 0), Tracer = 1, TracerName = 'tracer_interception', Force = 1, Damage = damage, Callback = call,IgnoreEntity = ent})
	end
	function  SWEP.BulletCallback(attacker, tr, dmginfo)
		local ent = tr.Entity 
		local hitpos, hitnormal, normal, dmg= tr.HitPos, tr.HitNormal, tr.Normal, dmginfo:GetDamage()
		local inf = dmginfo:GetInflictor()
		if inf and !inf.AntiCrash  then
			inf.AntiCrash = 0
		end
		if inf.AntiCrash > 15 then
			return
		end
		if ent and ent:IsValid() and ent:GetClass() == 'prop_ffemitterfield' then
			timer.Simple(0, function() 
				DoRicochet(attacker, hitpos, hitnormal, normal, dmg,inf.BulletCallback) 
			end)
			inf.AntiCrash = inf.AntiCrash + 1
		elseif ent and ent:IsValid() then
			inf.AntiCrash = inf.AntiCrash + 1
			timer.Simple(0, function() 
				DoTrace(attacker, hitpos, hitnormal, normal, dmg, inf.BulletCallback, ent) 
			end)
		end
	end
end
local OffensiveColor = Color(107,0,0)
local StrategicColor = Color(0,83,185)
local MovementColor = Color(158,255,228)
local DefensiveColor = Color(55,196,0)
local ULTIMATEColor = Color(145,22,207)
local function Call_Func(self, func, ...)
	if self.NextUseFalse then self.NextUseFalse = false return false end
	return func(...)
end
AddMagic(SWEP, {"Копирщик",
function(self, pl, count, pos) 
	local max = self.MaxRunes
	local hah = self:GetMagicID(self.Ochered[((count+1)%max)+1])
	--print(self.Ochered[(count+1%max)+1])
	if hah and !hah.NoUse then
		for i=1,2 do
			Call_Func(self, hah[2],self,pl,count, pos)
		end
	end
end, "Копирует следующее заклинание 2 раза(если последний,то копирует первое заклинание),не копирует себя.", StrategicColor, NoUse = true})

AddMagic(SWEP, {"Левитайто",
function(self, pl, time, pos) 	if self["fixing"] > CurTime() then return end pl:SetVelocity(Vector(0,0,65)) end, "Немного левитации.", MovementColor},"fixing")

AddMagic(SWEP, {"Рывокство",
function(self, pl, time, pos) 	if self["tlepe"] > CurTime() then return end 
	timer.Simple(0, function() if self and self:IsValid() then self["tlepe"] = CurTime() + 1 	pl:SendLua('MySelf:GetActiveWeapon()["tlepe"] = CurTime() + 1')  end end)
	local pushvel = pl:GetEyeTrace().Normal * 0 + (pl:GetAngles():Forward()*(pl:OnGround() and 126 or 112))
	pl:SetVelocity(pushvel)
	 end, "Делает ОЧЕНЬ НЕБОЛЬШОЙ рывок вперед.", MovementColor},"tlepe")

AddMagic(SWEP, {"Яблочиум",
function(self, pl, time, pos)
	if self["apple"] > CurTime() then return end
	self["fixing"] = CurTime() + 2
	pl:SendLua('MySelf:GetActiveWeapon()["fixing"] = CurTime() + 2') 
	timer.Simple(0, function() if self and self:IsValid() then self["apple"] = CurTime() + 12 	pl:SendLua('MySelf:GetActiveWeapon()["apple"] = CurTime() + 12')  end end)
 	pl:SetVelocity(Vector(0,0,-795)) end, "Познай силу гравитации.", OffensiveColor},"apple")

AddMagic(SWEP, {"Лечито",
function(self, pl) self.NextHeal = self.NextHeal + 1 if self.NextHeal > 4 then self.NextHeal = 0 pl:SetHealth(math.min(pl:GetMaxHealth(),pl:Health()+1)) end end, "Раз в 4 тика лечит 1 хп.", DefensiveColor})

AddMagic(SWEP, {"Шаидухизм",
function(self, pl, time, pos)
	if self["antiboom"] > CurTime() then return end
	timer.Simple(0, function() if self and self:IsValid() then self["antiboom"] = CurTime() + 5 pl:SendLua('MySelf:GetActiveWeapon()["antiboom"] = CurTime() + 5') end end)
	util.BlastDamage2(self, pl, pos, 156, 67)
	pl:EmitSound("c4.explode")
	local effectdata = EffectData()
		effectdata:SetOrigin(pos)
	util.Effect("Explosion", effectdata)

end, "Вы взорветесь как шахид.\nНаносит вам урон во славу аллаха!\n.", OffensiveColor}, "antiboom")

AddMagic(SWEP, {"Лазур",
function(self, pl, time, pos)
	if self["lasur"] > CurTime() then return end
	timer.Simple(0, function() if self and self:IsValid() then self["lasur"] = CurTime() + 0.2 end end)
	pl:FireBullets({Num = 1, Src = pos, Dir = pl:GetAimVector(), Spread = Vector(.1, .1, 0), Tracer = 1, TracerName = 'tracer_interception', Force = 1, Damage = 2, Callback = self.BulletCallback})

end, "Вы будете стрелять магией с уроном 2.", OffensiveColor}, "lasur")


AddMagic(SWEP, {"Лечилокинь",
function(self, pl, time, pos)
	if self["heaker"] > CurTime() then return end
	timer.Simple(0, function() if self and self:IsValid() then self["heaker"] = CurTime() + 1.9 pl:SendLua('MySelf:GetActiveWeapon()["heaker"] = CurTime() + 1.9') end end)
	local aimvec = pl:GetAimVector()

	local ent = ents.Create("projectile_healdart")
	if ent:IsValid() then
		ent:SetPos(pos)
		ent:SetAngles(aimvec:Angle())
		ent:SetOwner(pl)
		ent:Spawn()
		if self.ProjectileCreate then
			self:ProjectileCreate(ent)
			self.ProjectileCreate = function()
			end
		end

		ent.Heal = math.ceil(9 * (pl.HumanHealMultiplier or 1))

		local phys = ent:GetPhysicsObject()
		if phys:IsValid() then
			phys:Wake()
			phys:SetVelocityInstantaneous(aimvec * 2300 + VectorRand(-70,70))
		end
		return ent
	end
end, "Бросьте мед.дротик.", OffensiveColor}, "heaker")

--[[AddMagic(SWEP, {"Враговиз",
function(self, pl, time, pos)
	self.ProjectileCreate = function(self, ent)
		ent._Think = ent.Think
		ent.trg = NULL
		ent.Think = function(ent)
			if !ent.trg:IsValid() then
				local targets = {}
				for _, enemy in pairs(ents.FindInSphere(ent:GetPos(), 1048)) do
					if !enemy:IsValid() or !enemy:IsPlayer() then continue end
					target = enemy
					if WorldVisible(ent:LocalToWorld(Vector(0, 0, 30)), enemy:NearestPoint(ent:LocalToWorld(Vector(0, 0, 30))))  then
						if target:Team() ~= self:GetOwner():Team() then 
							targets[(#targets or 0) + 1] = {Health = enemy:Health(), trg = target}
						end
					end
				end
				for k, target1 in pairs(targets) do
					target = target1.trg
					--print( target1.Health)
					if target and target:Team() ~= self:GetOwner():Team() then
						ent.trg = target
						break
					end
				end
			else
				local target = ent.trg
				local targetpos = target:LocalToWorld(target:OBBCenter())
				local direction = (targetpos - ent:GetPos()):GetNormal()
				ent:SetAngles(direction:Angle())
				local phys = ent:GetPhysicsObject()
				phys:SetVelocityInstantaneous(direction * 300)
			end
			ent:_Think()
		end
	end
end, "Следующий снаряд имеет самонаводку.", StrategicColor})]]
AddMagic(SWEP, {"Двойка",
function(self2, pl, count, pos)
	self2.ProjectileCreate = function(self, ent)
		ent._OnRemove = ent.OnRemove
		ent.OnRemove = function()
			if !IsValid(self) then return end
			local max = self.MaxRunes or 3
			local hah = self:GetMagicID(self.Ochered[((count+1)%max)+1])
			if hah and !hah.NoUse  then
				for i=1,2 do
					Call_Func(self, hah[2],self,pl,count, ent:GetPos())
				end
			end
			ent:_OnRemove()
		end
	end
end, "Следующий снаряд при уничтожение использует следующее заклинание там 2 раза.", StrategicColor, NoUse = true})

AddMagic(SWEP, {"Блабласыр",
function(self2, pl, count, pos)
	self2.ProjectileCreate = function(self, ent)
		ent._OnRemove = ent.OnRemove
		ent.OnRemove = function()
			local hah = self.Magics[math.random(1,#self.Magics)]
			--print(hah[1])
			if hah and !hah.NoUse then
				Call_Func(self, hah[2],self,pl,count, ent:GetPos())
			end
			ent:_OnRemove()
		end
	end
end, "Следующий снаряд при уничтожение использует случайное заклинание там.", StrategicColor})

AddMagic(SWEP, {"Тишее",
function(self2, pl, count, pos)
	for k,v in pairs(ents.FindInSphere(pos, 321)) do
		if v and IsValid(v) and v:IsPlayer() then
			for _,wep in pairs(v:GetWeapons()) do
				wep:SetNextSecondaryFire(CurTime()+12)
			end
		end
	end
end, "Узбеки спят...Отключает блок или вторую атаку на время вокруг себя.\nВсем без исключения,даже себе.", StrategicColor})

AddMagic(SWEP, {"Идинахуй",
function(self, pl, count, pos)
	if self["barrier"] > CurTime() then return end
	timer.Simple(0, function() if self and self:IsValid() then self["barrier"] = CurTime() + 7 pl:SendLua('MySelf:GetActiveWeapon()["barrier"] = CurTime() + 7') end end)
	for i=1,4 do
		timer.Simple(0, function()	local ent = ents.Create("prop_ffemitterfield")
			if ent:IsValid() then
				if i==2 or i==4 then
					ent:SetPos(pos+pl:GetAngles():Right()*46*(i==2 and -1 or 1))
				else
					ent:SetPos(pos+pl:GetAngles():Forward()*46*(i==3 and -1 or 1))
				end
				ent:SetAngles(pl:GetAngles()-Angle(0,90*i,90))
				ent:SetOwner(pl)
				ent:Spawn()
				timer.Simple(6, function(arguments)
					if ent:IsValid() then
						ent:Remove()
					end
				end)			
			end
		end)
	end
end, "Создает вокруг себя баррьер на 6 секунд.", DefensiveColor}, "barrier")

AddMagic(SWEP, {"Барибари",
function(self, pl, count, pos)
	if self["barrier2"] > CurTime() then return end
	timer.Simple(0, function() if self and self:IsValid() then self["barrier2"] = CurTime() + 12 pl:SendLua('MySelf:GetActiveWeapon()["barrier2"] = CurTime() + 12') end end)
	for i=1,4 do
		timer.Simple(0, function()	local ent = ents.Create("prop_ffemitterfield")
			if ent:IsValid() then
				if i==2 or i==4 then
					ent:SetPos(pos+pl:GetAngles():Right()*46*(i==2 and -1 or 1))
				else
					ent:SetPos(pos+pl:GetAngles():Forward()*46*(i==3 and -1 or 1))
				end
				ent:SetAngles(pl:GetAngles()-Angle(0,90*i,90))
				ent:SetOwner(pl)
				ent:Spawn()
				ent:SetParent(pl)
				timer.Simple(6, function(arguments)
					if ent:IsValid() then
						ent:Remove()
					end
				end)			
			end
		end)
	end
end, "Создает вокруг себя совершенный баррьер привязанный к вам на 6 секунд.\nДолгое КД.", DefensiveColor}, "barrier2")

AddMagic(SWEP, {"Длиннолуй",
function(self, pl, count, pos)
	local max = self.MaxRunes or 3
	local hah = self:GetMagicID(self.Ochered[((count+1)%max)+1])
	if hah and !hah.NoUse  then
		for i=1,2 do
			Call_Func(self, hah[2],self,pl,count, pos + pl:GetAngles():Forward()*200)
		end
	end
end, "Использует следующее заклинание на 200 юнитов впереди 2 раза.", StrategicColor, NoUse = true})

AddMagic(SWEP, {"Каменюга",
function(self, pl, time, pos)
	if self["came"] > CurTime() then return end
	timer.Simple(0, function() if self and self:IsValid() then self["came"] = CurTime() + 3 pl:SendLua('MySelf:GetActiveWeapon()["came"] = CurTime() + 3') end end)
	local aimvec = pl:GetAimVector()

	local ent = ents.Create("projectile_stone")
	if ent:IsValid() then
		ent:SetPos(pos)
		ent:SetAngles(aimvec:Angle())
		ent:SetOwner(pl)
		ent:Spawn()
		if self.ProjectileCreate then
			self:ProjectileCreate(ent)
			self.ProjectileCreate = function()
			end
		end

		ent.Damage = 10
		local phys = ent:GetPhysicsObject()
		if phys:IsValid() then
			phys:Wake()
			phys:SetVelocityInstantaneous(aimvec * 2300 + VectorRand(-70,70))
		end
		return ent
	end
end, "Бросьте камень.", OffensiveColor}, "came")

AddMagic(SWEP, {"Тилипопато",
function(self, pl, time, pos)
	if pos == pl:GetShootPos() then return end
	pl:SetPos(pos)
end, "Тилипотато.", StrategicColor})

AddMagic(SWEP, {"Подайка",
function(self, pl, time, pos)
	local trace = pl:GetEyeTrace()
	local ent = trace.Entity
	if ent and ent:IsValid() then
		local targetpos = ent:LocalToWorld(ent:OBBCenter())
		local direction = (targetpos - pl:GetPos()):GetNormal()
		if ent:GetPhysicsObject() and ent:GetPhysicsObject():IsValid() and !ent:IsPlayer() then
			ent:GetPhysicsObject():SetVelocityInstantaneous(direction*-350)
		else
			ent:SetVelocity(direction*-260)
		end
	end
end, "Тянет энтити к вам.", OffensiveColor})

AddMagic(SWEP, {"Спиноворот",
function(self, pl, count, pos)
	local position
	for i=1,4 do
		if i==2 or i==4 then
			position = pos+pl:GetAngles():Right()*46*(i==2 and -1 or 1)
		else
			position = pos+pl:GetAngles():Forward()*46*(i==3 and -1 or 1)
		end
		local max = self.MaxRunes or 3
		local hah = self:GetMagicID(self.Ochered[((count+1)%max)+1])
		if hah and !hah.NoUse then
			ent = Call_Func(self, hah[2],self,pl,count, position)
			if ent and ent:IsValid() then
			 	local phys = ent:GetPhysicsObject()
				if phys:IsValid() then
					if i==2 or i==4 then
						phys:SetVelocityInstantaneous(pl:GetAngles():Right()*1546*(i==2 and -1 or 1))
					else
						phys:SetVelocityInstantaneous(pl:GetAngles():Forward()*1546*(i==3 and -1 or 1))
					end
				end
			end
		end
	end
end, "По 4 стороны света будут использовани ваши заклинания.", StrategicColor, NoUse = true})

AddMagic(SWEP, {"Уди",
function(self, pl, time, pos)
	local trace = pl:GetEyeTrace()
	local ent = trace.Entity
	if ent and ent:IsValid() then
		local targetpos = ent:LocalToWorld(ent:OBBCenter())
		local direction = (targetpos - pl:GetPos()):GetNormal()
		if ent:GetPhysicsObject() and ent:GetPhysicsObject():IsValid() and !ent:IsPlayer() then
			ent:GetPhysicsObject():SetVelocityInstantaneous(direction*350)
		else
			ent:SetVelocity(direction*260)
		end
	end
end, "Посылает врага куда подальше.", OffensiveColor})

AddMagic(SWEP, {"Пердешитуса",
function(self, pl, time, pos)
	if self["puke"] > CurTime() then return end
	timer.Simple(0, function() if self and self:IsValid() then self["puke"] = CurTime() + 0.1 pl:SendLua('MySelf:GetActiveWeapon()["puke"] = CurTime() + 0.1') end end)
	for k,v in pairs(ents.FindInSphere(pos, 221)) do
		if v and IsValid(v) and v:IsPlayer() and !(v == pl and pl:GetShootPos() == pos)  and v:Team() ~= pl:Team() then
			local targetpos = v:LocalToWorld(v:OBBCenter())
			local direction = (targetpos - pos):GetNormal()
			v:SetVelocity(direction*720)
		end
	end
end, "Толкает всех вокруг.", DefensiveColor}, "puke")


AddMagic(SWEP, {"Пшык",
function(self2, pl, time, pos)
	self2.ProjectileCreate = function(self, ent)
		ent._OnRemove = ent.OnRemove
		ent.OnRemove = function()
			if !IsValid(self) then return end
			local pos2 = ent:GetPos()
			util.BlastDamage2(self, pl, pos2, 96, 12)
			local effectdata = EffectData()
				effectdata:SetOrigin(pos2)
			util.Effect("Explosion", effectdata)
		
			ent:_OnRemove()
		end
	end
end, "ЧТООО???ДОЗЕТ РЕФЕРЕНС???\nСледующий снаряд делаеет бимбим бамбам при уничтожении.\nВзрыв намного слабее шахидных вариаций.", OffensiveColor})

AddMagic(SWEP, {"Падажи",
function(self, pl, time, pos)
	local ah = pos
	timer.Simple(1.5, function() 
		if !self or !self:IsValid() then return end
		local max = self.MaxRunes
		local hah = self:GetMagicID(self.Ochered[((time+1)%max)+1])
		if hah then
			Call_Func(self, hah[2],self,pl,time, ah)
		end
	end)
end, "Да бля,постой!!!\nИспользует следующее заклинание через 1.5 секунду(НА ТОМ ЖЕ МЕСТЕ ГДЕ ВЫ СТОЯЛИ ПРИ ИСПОЛЬЗОВАНИИ)", StrategicColor})

AddMagic(SWEP, {"ОСТАНОВИСЬ",
function(self, pl, time, pos)
	local ah = pos
	timer.Simple(4, function() 
		if !self or !self:IsValid() then return end
		local max = self.MaxRunes
		local hah = self:GetMagicID(self.Ochered[((time+1)%max)+1])
		if hah then
			Call_Func(self, hah[2],self,pl,time, ah)
		end
	end)
end, "Остановись нахуй и стой смирно!!!\nИспользует следующее заклинание через 4 секунды(НА ТОМ ЖЕ МЕСТЕ ГДЕ ВЫ СТОЯЛИ ПРИ ИСПОЛЬЗОВАНИИ)", StrategicColor})

AddMagic(SWEP, {"Скакунок",
function(self, owner, time, pos)
	if self["skuf"] > CurTime() then return end
	timer.Simple(0, function() if self and self:IsValid() then self["skuf"] = CurTime() + 1.3 owner:SendLua('MySelf:GetActiveWeapon()["skuf"] = CurTime() + 1.3') end end)
	owner:DoAttackEvent()

	local aimvec = owner:GetAimVector()
	if SERVER then
		local ent = ents.Create("projectile_bouncebolt")
		if ent:IsValid() then
			ent:SetPos(pos)
			ent:SetAngles(aimvec:Angle())
			ent:SetOwner(owner)
			ent:Spawn()
			ent.Damage = 6
			if self.ProjectileCreate then
				self:ProjectileCreate(ent)
				self.ProjectileCreate = function()
				end
			end
			local phys = ent:GetPhysicsObject()
			if phys:IsValid() then
				phys:Wake()
				phys:SetVelocity(aimvec *2300)
			end
			return ent
		end
    end
end, "Мал,да удал.\nСпавнит скакущий арбалетный снаряд c уроном в 6 единиц.", OffensiveColor}, "skuf")

AddMagic(SWEP, {"4",
function(self, owner, time, pos)
	if self["skuf2"] > CurTime() then return end
	timer.Simple(0, function() if self and self:IsValid() then self["skuf2"] = CurTime() + 5 owner:SendLua('MySelf:GetActiveWeapon()["skuf2"] = CurTime() + 5') end end)
	owner:DoAttackEvent()

	local aimvec = owner:GetAimVector()
	if SERVER then
		local ent = ents.Create("projectile_mp1_grenade")
		if ent:IsValid() then
			ent:SetPos(pos)
			ent:SetAngles(aimvec:Angle())
			ent:SetOwner(owner)
			ent:Spawn()
			ent.Damage = 6
			if self.ProjectileCreate then
				self:ProjectileCreate(ent)
				self.ProjectileCreate = function()
				end
			end
			local phys = ent:GetPhysicsObject()
			if phys:IsValid() then
				phys:Wake()
				phys:SetVelocity(aimvec *1200)
			end
			return ent
		end
    end
end, "Кидает гранату которая взрывается при прикосновение.", OffensiveColor}, "skuf2")

AddMagic(SWEP, {"Вдохновил",
function(self, pl, time, pos)
	if self["puke3"] > CurTime() then return end
	timer.Simple(0, function() if self and self:IsValid() then self["puke3"] = CurTime() + 0.1 pl:SendLua('MySelf:GetActiveWeapon()["puke3"] = CurTime() + 0.1') end end)
	for k,v in pairs(ents.FindInSphere(pos, 251)) do
		if v and IsValid(v) and v ~= pl and (v.Team and v:Team() ~= pl:Team() or !v.Team) then
			local targetpos = v:LocalToWorld(v:OBBCenter())
			local direction = (targetpos - pos):GetNormal()
			v:SetVelocity(-direction*420)
			local phys = v.GetPhysicsObject and v:GetPhysicsObject() or NULL 
			v:SetPhysicsAttacker(pl)
			if phys and phys:IsValid() then
				phys:SetVelocityInstantaneous(-direction*320)
			end
		end
	end
end, "Притягивает всё вокруг к себе.", ULTIMATEColor}, "puke3")

AddMagic(SWEP, {"Апчхи",
function(self, pl, time, pos)
	if self["chix"] > CurTime() then return end
	timer.Simple(0, function() if self and self:IsValid() then self["chix"] = CurTime() + 1.3 pl:SendLua('MySelf:GetActiveWeapon()["chix"] = CurTime() + 1.3') end end)
	for k,v in pairs(ents.FindInSphere(pos, 251)) do
		if v and IsValid(v) and v ~= pl and (v.Team and v:Team() ~= pl:Team() or !v.Team) then
			local targetpos = v:LocalToWorld(v:OBBCenter())
			local direction = (targetpos - pos):GetNormal()
			v:SetVelocity(direction*2720)
			local phys = v.GetPhysicsObject and v:GetPhysicsObject() or NULL 
			if phys and phys:IsValid() then
				phys:SetVelocityInstantaneous(direction*2320)
			end
		end
	end
end, "Очень сильно толкает.", OffensiveColor}, "chix")

AddMagic(SWEP, {"Сосулькус",
function(self, owner, time, pos)
	if self["sosulka"] > CurTime() then return end
	timer.Simple(0, function() if self and self:IsValid() then self["sosulka"] = CurTime() + 5 owner:SendLua('MySelf:GetActiveWeapon()["sosulka"] = CurTime() + 5') end end)
	owner:DoAttackEvent()

	local aimvec = owner:GetAimVector()
	if SERVER then
		local ent = ents.Create("projectile_sosulka")
		if ent:IsValid() then
			ent:SetPos(pos)
			ent:SetAngles(aimvec:Angle())
			ent:SetOwner(owner)
			ent:Spawn()
			ent.Damage = 16
			if self.ProjectileCreate then
				self:ProjectileCreate(ent)
				self.ProjectileCreate = function()
				end
			end
			local phys = ent:GetPhysicsObject()
			
			if phys:IsValid() then
				phys:Wake()
				phys:SetVelocity(aimvec *1200)
			end
			return ent
		end
    end
end, "Кидает сосульку.", OffensiveColor}, "sosulka")


AddMagic(SWEP, {"Айбля",
function(self, pl, time, pos)
	if !self or !self:IsValid() then return end
	local max = self.MaxRunes
	local hah = self:GetMagicID(self.Ochered[((time+1)%max)+1])
	if hah and !hah.NoUse then
		Call_Func(self, hah[2],self,pl,time, pos + Vector(0,0,156))
	end
end, "Использует следующее заклинание выше вашей головы.", StrategicColor, NoUse = true})


AddMagic(SWEP, {"Яйцомороз",
function(self, pl, time, pos)
	if self["xolod"] > CurTime() then return end
	timer.Simple(0, function() if self and self:IsValid() then self["xolod"] = CurTime() + 0.6 pl:SendLua('MySelf:GetActiveWeapon()["xolod"] = CurTime() + 0.6') end end)
	for k,v in pairs(ents.FindInSphere(pos, 221)) do
		if v and IsValid(v) and v:IsPlayer() and !(v == pl and pl:GetShootPos() == pos)  and v:Team() ~= pl:Team() then
			v:AddCold(1)
		end
	end
end, "Морозит яйца ваших врагов.", OffensiveColor, NoUse = true}, "xolod")

AddMagic(SWEP, {"Лазерит",
function(self, pl, time, pos)
	if self["lasur3"] > CurTime() then return end
	timer.Simple(0, function() if self and self:IsValid() then self["lasur3"] = CurTime() + 1.4 pl:SendLua('MySelf:GetActiveWeapon()["lasur"] = CurTime() + 1.4')end end)
	pl:FireBullets({Num = 1, Src = pos, Dir = pl:GetAimVector(), Spread = Vector(.05, .05, 0), Tracer = 1, TracerName = 'tracer_interception', Force = 1, Damage = 12, Callback = self.BulletCallback})

end, "Вы будете стрелять магией с уроном 12.\nНамного точный.", OffensiveColor}, "lasur3")

AddMagic(SWEP, {"Запретито",
function(self, pl, time, pos)
	timer.Simple(0, function() self.NextUseFalse = true end)
end, "Запрещает использования следующего заклинания.", StrategicColor})


local colBG = Color( 10, 10, 10, 252 )
local colBGH = Color( 200, 200, 200, 5 )
local blur = Material( "pp/blurscreen" )
SWEP.NextHeal = 0

local function TrinketPanelPaint( self, w, h )
	draw.RoundedBox( 2, 0, 0, w, h, ( self.Depressed or self.On) and Color(80,80,80) or self.Item[4] or COLOR_GREEN  )

	draw.RoundedBox( 2, 2, 2, w - 4, h - 4, colBG )
	if self.On or self.Hovered  then
		draw.RoundedBox( 2, 2, 2, w - 4, h - 4, colBGH )
	end

	if self.Item then
		draw.SimpleText( self.Item[1], "ZSAmmoName", w/2, h/6, Color( 255, 255, 255 ), TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER )	
		local wep = self.Owner.Wep
		--print(wep)
		local key = 0
		local povtor = 1
		local oldk = 0
		if wep.Ochered and istable(wep.Ochered)  then
			for k,v in pairs(wep.Ochered) do
				if v == self.Item[1] then
					key = k
					break
				end
			end
		end
		draw.SimpleText(key ~= 0 and key or "", "ZSHUDFontTiniestStatus", w/2, h/2, Color( 255, 255, 255 ), TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER )	
	end

	return true
end
local function ItemPanelDoClick(self)
	net.Start("zs_hah")
	net.WriteString(self.Item[1])
	net.SendToServer()
	self.Owner:Close()
	local wep = self.Wep
	local och =  wep.Ochered
	local max = wep.MaxRunes
	wep.NextWep = wep.NextWep%max + 1
--	print(((#och+1)%3) + 1)
	wep.Ochered[wep.NextWep] = self.Item[1]
end
SWEP.NextWep = 1
if SERVER then
	net.Receive("zs_hah", function(length,pl)
		local wep = pl:GetActiveWeapon()
		local och =  wep.Ochered
		local max = wep.MaxRunes
		wep.NextWep = wep.NextWep%max + 1
	--	print(((#och+1)%3) + 1)
		wep.Ochered[wep.NextWep] = net.ReadString()
	end)
end
local function InventoryAdd(self, item, i)
	local screenscale = BetterScreenScale()
		local itempan = vgui.Create("DButton", self)
		itempan:SetText( "" )
		itempan.Paint = TrinketPanelPaint

		itempan.Owner = self
		itempan.Item = item
		itempan.SWEP =  custom 
		itempan.Wep = self.Wep
		itempan.DoClick = ItemPanelDoClick
		itempan.Category = category
		itempan:Center()
		itempan:SetSize(90 * screenscale,90 * screenscale)
		local y = itempan:GetY()-200*screenscale
		if i > 10 then
			y = y + 100*screenscale
			i = i - 1
		end
		if i > 19 then
			y = y + 100*screenscale
		end
		if i > 29 then
			y = y + 100*screenscale
		end
		itempan:SetPos(100 * screenscale * ((i%10)+1) - 90 * screenscale,y)

		itempan:SetTooltip(item[3] or "")


		local mdlframe = vgui.Create("DPanel", itempan)
		mdlframe:SizeToContents()
		mdlframe:Center()
		mdlframe:SetPos(100 * screenscale * i,screenscale*0.1)
		mdlframe:SetMouseInputEnabled( false )
		mdlframe.Paint = function() end

end
local function CreateOkno(self, wep)
	local scr = BetterScreenScale()
    local panel = vgui.Create("DFrame")
    panel:SetSize(1020*scr, 500*scr)
    panel:SetTitle("Выбери заклинание посоху.")
    panel:Center()
    panel:MakePopup()
	panel:SetDraggable(false)
	panel.Wep = wep
	for i=1,#self.Magics do
		InventoryAdd(panel, self.Magics[i], i)
	end
end


function SWEP:PrimaryAttack()
	if !self:CanPrimaryAttack() or CLIENT then return end
	self:SetNextPrimaryFire(CurTime()+0.1)
	--PrintTable(self.Ochered)
	local owner = self:GetOwner()
	for i=1,self.MaxRunes do
		local id = self:GetMagicID(self.Ochered[i])
		if id and owner:IsValid() then
			Call_Func(self, id[2],self, owner, i, owner:GetShootPos())
		end
	end
end
function SWEP:SecondaryAttack()
	if !self:CanSecondaryAttack() then return end
	self:SetNextSecondaryFire(CurTime()+0.7)
	if (IsFirstTimePredicted()) and CLIENT then
		CreateOkno(self, self)
	end
end
if not CLIENT then return end
function SWEP:PreDrawViewModel(vm)
	if self.ShowViewModel == false then
		render.SetBlend(0)
	end
	local i = 0
	for k,v in pairs(self.VElements) do
		if string.sub(k,0,#"crystall") == "crystall" then
			i = i + 1
			
			local tgl = self:GetMagicID(self.Ochered[i]) 
			if tgl and tgl[5] and self[tgl[5]] > CurTime() then v.color = COLOR_WHITE continue end
			if tgl and tgl[4] then
				v.color = tgl[4]
			end
			if k ~= "crystall_center" then
				v.angle.r = math.cos(math.pi*CurTime())*6
			else
				v.angle.y = math.cos(math.pi*CurTime())*12
				v.angle.p = math.tan(math.pi*CurTime())*9
			end
		end
	end
end
