GM.Skills = {}
GM.SkillModifiers = {}
GM.SkillFunctions = {}
GM.SkillModifierFunctions = {}
GM.UpgradableSkills = {}

function GM:AddSkill(id, name, description, x, y, connections, tree, level)
	local skill = {Connections = table.ToAssoc(connections or {})}

	if CLIENT then
		skill.x = x
		skill.y = y

		-- TODO: Dynamic skill descriptions based on modifiers on the skill.

		skill.Description = description
	end

	if #name == 0 then
		name = "Skill "..id
		skill.Disabled = true
	end

	skill.Name = name
	skill.Tree = tree
	skill.Level = level

	self.Skills[id] = skill

	return skill
end


-- Use this after all skills have been added. It assigns dynamic IDs!
function GM:AddTrinket(name, swepaffix, pairedweapon, veles, weles, tier, description, status, stocks, icon)
	local skill = {Connections = {}}

	skill.Name = name
	skill.Trinket = swepaffix
	skill.Status = status

	local datatab = {PrintName = name, DroppedEles = weles, Tier = tier, Description = description, Status = status, Stocks = stocks, Icon = icon}

	if pairedweapon then
		skill.PairedWeapon = "weapon_zs_t_" .. swepaffix
	end

	self.ZSInventoryItemData["trinket_" .. swepaffix] = datatab
	self.Skills[#self.Skills + 1] = skill

	return #self.Skills, self.ZSInventoryItemData["trinket_" .. swepaffix]
end

-- I'll leave this here, but I don't think it's needed.
function GM:GetTrinketSkillID(trinketname)
	for skillid, skill in pairs(GM.Skills) do
		if skill.Trinket and skill.Trinket == trinketname then
			return skillid
		end
	end
end

function GM:AddSkillModifier(skillid, modifier, amount)
	self.SkillModifiers[skillid] = self.SkillModifiers[skillid] or {}
	self.SkillModifiers[skillid][modifier] = (self.SkillModifiers[skillid][modifier] or 0) + amount
end

function GM:AddSkillFunction(skillid, func)
	self.SkillFunctions[skillid] = self.SkillFunctions[skillid] or {}
	table.insert(self.SkillFunctions[skillid], func)
end

function GM:SetSkillModifierFunction(modid, func)
	self.SkillModifierFunctions[modid] = func
end

function GM:MkGenericMod(modifiername)
	return function(pl, amount) pl[modifiername] = math.Clamp(amount + 1.0, 0.0, 1000.0) end
end

-- These are used for position on the screen
TREE_HEALTHTREE = 1
TREE_SPEEDTREE = 2
TREE_SUPPORTTREE = 3
TREE_BUILDINGTREE = 4
TREE_MELEETREE = 5
TREE_GUNTREE = 6
TREE_POINTTREE = 7
TREE_ANCIENTTREE = 8
TREE_DEFENSETREE = 9
TREE_DONATETREE = 10
TREE_USELESSTREE = 11

-- Dummy skill used for "connecting" to their trees.
SKILL_NONE = 0

--[[
SKILL_U_AMMOCRATE = 0 -- Unlock alternate arsenal crate that only sells cheap ammo (remove from regular?)
SKILL_U_DECOY = 0 -- "Unlock: Decoy", "Unlocks purchasing the Decoy\nZombies believe it is a human\nCan be destroyed\nExplodes when destroyed"

SKILL_OVERCHARGEFLASHLIGHT = 0 -- Your flashlight now produces a blinding flash that stuns zombies\nYour flashlight now breaks after one use

Unlock: Explosive body armor - Allows you to purchase explosive body armor, which knocks back both you and nearby zombies when you fall below 25 hp.
Olympian - +50% throw power\nsomething bad
Unlock: Antidote Medic Gun - Unlocks purchasing the Antidote Medic Gun\nTarget poison damage resistance +100%\nTarget immediately cleansed of all debuffs\nTarget is no longer healed or hastened
]]

-- unimplemented

SKILL_SPEED1 = 1
SKILL_SPEED2 = 2
SKILL_SPEED3 = 3
SKILL_SPEED4 = 4
SKILL_SPEED5 = 5
SKILL_STOIC1 = 6
SKILL_STOIC2 = 7
SKILL_STOIC3 = 8
SKILL_STOIC4 = 9
SKILL_STOIC5 = 10
SKILL_SURGEON1 = 11
SKILL_SURGEON2 = 12
SKILL_SURGEON3 = 13
SKILL_HANDY1 = 14
SKILL_HANDY2 = 15
SKILL_HANDY3 = 16
SKILL_BATTLER1 = 17
SKILL_BATTLER2 = 18
SKILL_BATTLER3 = 19
SKILL_BATTLER4 = 20
SKILL_BATTLER5 = 21
SKILL_GENERATOR = 22
SKILL_RELOAD1 = 23
SKILL_RELOAD2 = 24
SKILL_RELOAD3  = 25
SKILL_RELOAD4 = 26
SKILL_RELOAD5 = 27
SKILL_ULTRADEFENCE = 28
SKILL_BIO1 = 29
SKILL_BIO2 = 30
SKILL_BIO3 = 31
SKILL_BLOODHELL = 32
SKILL_KAMIKAZE = 33
SKILL_QUALITY = 34
SKILL_INJECTOR = 35
SKILL_TURRET_BUFF = 36

SKILLMOD_HEALTH = 1
SKILLMOD_SPEED = 2
SKILLMOD_WORTH = 3
SKILLMOD_BLOODARMOR = 4
SKILLMOD_PIECE_OF_AMULET = 5
SKILLMOD_FALLDAMAGE_SLOWDOWN_MUL = 6
SKILLMOD_FOODRECOVERY_MUL = 7
SKILLMOD_FOODEATTIME_MUL = 8
SKILLMOD_JUMPPOWER_MUL = 9
SKILLMOD_RELOADSPEED_MUL = 11
SKILLMOD_UNARMED_DAMAGE_MUL = 13
SKILLMOD_UNARMED_SWING_DELAY_MUL = 14
SKILLMOD_MELEE_DAMAGE_MUL = 15
SKILLMOD_HAMMER_SWING_DELAY_MUL = 16
SKILLMOD_CONTROLLABLE_SPEED_MUL = 17
SKILLMOD_CONTROLLABLE_HANDLING_MUL = 18
SKILLMOD_CONTROLLABLE_HEALTH_MUL = 19
SKILLMOD_MANHACK_DAMAGE_MUL = 20
SKILLMOD_BARRICADE_PHASE_SPEED_MUL = 21
SKILLMOD_MEDKIT_COOLDOWN_MUL = 22
SKILLMOD_MEDKIT_EFFECTIVENESS_MUL = 23
SKILLMOD_REPAIRRATE_MUL = 24
SKILLMOD_TURRET_HEALTH_MUL = 25
SKILLMOD_TURRET_SCANSPEED_MUL = 26
SKILLMOD_TURRET_SCANANGLE_MUL = 27
SKILLMOD_FALLDAMAGE_THRESHOLD_MUL = 28
SKILLMOD_MELEE_KNOCKBACK_MUL = 29
SKILLMOD_SELF_DAMAGE_MUL = 30
SKILLMOD_AIMSPREAD_MUL = 31
SKILLMOD_POINT_MULTIPLIER = 33
SKILLMOD_FALLDAMAGE_DAMAGE_MUL = 34
SKILLMOD_MANHACK_HEALTH_MUL = 35
SKILLMOD_DEPLOYABLE_HEALTH_MUL = 36
SKILLMOD_DEPLOYABLE_PACKTIME_MUL = 37
SKILLMOD_DRONE_SPEED_MUL = 38
SKILLMOD_DRONE_CARRYMASS_MUL = 39
SKILLMOD_MEDGUN_FIRE_DELAY_MUL = 40
SKILLMOD_RESUPPLY_DELAY_MUL = 41
SKILLMOD_FIELD_RANGE_MUL = 42
SKILLMOD_FIELD_DELAY_MUL = 43
SKILLMOD_DRONE_GUN_RANGE_MUL = 44
SKILLMOD_HEALING_RECEIVED = 45
SKILLMOD_RELOADSPEED_PISTOL_MUL = 46
SKILLMOD_RELOADSPEED_SMG_MUL = 47
SKILLMOD_RELOADSPEED_ASSAULT_MUL = 48
SKILLMOD_RELOADSPEED_SHELL_MUL = 49
SKILLMOD_RELOADSPEED_RIFLE_MUL = 50
SKILLMOD_RELOADSPEED_XBOW_MUL = 51
SKILLMOD_RELOADSPEED_PULSE_MUL = 52
SKILLMOD_RELOADSPEED_EXP_MUL = 53
SKILLMOD_MELEE_ATTACKER_DMG_REFLECT = 54
SKILLMOD_PULSE_WEAPON_SLOW_MUL = 55
SKILLMOD_MELEE_DAMAGE_TAKEN_MUL = 56
SKILLMOD_POISON_DAMAGE_TAKEN_MUL = 57
SKILLMOD_BLEED_DAMAGE_TAKEN_MUL = 58
SKILLMOD_MELEE_SWING_DELAY_MUL = 59
SKILLMOD_MELEE_DAMAGE_TO_BLOODARMOR_MUL = 60
SKILLMOD_MELEE_MOVEMENTSPEED_ON_KILL = 61
SKILLMOD_MELEE_POWERATTACK_MUL = 62
SKILLMOD_KNOCKDOWN_RECOVERY_MUL = 63
SKILLMOD_MELEE_RANGE_MUL = 64
SKILLMOD_SLOW_EFF_TAKEN_MUL = 65
SKILLMOD_EXP_DAMAGE_TAKEN_MUL = 66
SKILLMOD_FIRE_DAMAGE_TAKEN_MUL = 67
SKILLMOD_PROP_CARRY_CAPACITY_MUL = 68
SKILLMOD_PROP_THROW_STRENGTH_MUL = 69
SKILLMOD_PHYSICS_DAMAGE_TAKEN_MUL = 70
SKILLMOD_VISION_ALTER_DURATION_MUL = 71
SKILLMOD_DIMVISION_EFF_MUL = 72
SKILLMOD_PROP_CARRY_SLOW_MUL = 73
SKILLMOD_BLEED_SPEED_MUL = 74
SKILLMOD_MELEE_LEG_DAMAGE_ADD = 75
SKILLMOD_SIGIL_TELEPORT_MUL = 76
SKILLMOD_MELEE_ATTACKER_DMG_REFLECT_PERCENT = 77
SKILLMOD_POISON_SPEED_MUL = 78
SKILLMOD_PROJECTILE_DAMAGE_TAKEN_MUL = 79
SKILLMOD_EXP_DAMAGE_RADIUS = 80
SKILLMOD_MEDGUN_RELOAD_SPEED_MUL = 81
SKILLMOD_WEAPON_WEIGHT_SLOW_MUL = 82
SKILLMOD_FRIGHT_DURATION_MUL = 83
SKILLMOD_IRONSIGHT_EFF_MUL = 84
SKILLMOD_BLOODARMOR_DMG_REDUCTION = 85
SKILLMOD_BLOODARMOR_MUL = 86
SKILLMOD_BLOODARMOR_GAIN_MUL = 87
SKILLMOD_LOW_HEALTH_SLOW_MUL = 88
SKILLMOD_PROJ_SPEED = 89
SKILLMOD_ENDWAVE_POINTS = 91
SKILLMOD_ARSENAL_DISCOUNT = 92
SKILLMOD_CLOUD_RADIUS = 93
SKILLMOD_CLOUD_TIME = 94
SKILLMOD_PROJECTILE_DAMAGE_MUL = 95
SKILLMOD_EXP_DAMAGE_MUL = 96
SKILLMOD_TURRET_RANGE_MUL = 97
SKILLMOD_AIM_SHAKE_MUL = 98
SKILLMOD_MEDDART_EFFECTIVENESS_MUL = 99
SKILLMOD_DAMAGE = 100
SKILLMOD_SCRAPDISCOUNT = 101
SKILLMOD_XP = 102
SKILLMOD_LUCK = 103
SKILLMOD_CURSEM = 104
SKILLMOD_BLOCKMULTIPLIER = 105
SKILLMOD_RES_AMMO_MUL = 106
SKILLMOD_HEALTHMUL = 107
SKILLMOD_SPOINT = 108
SKILLMOD_SCALEMODEL = 109
SKILLMOD_M_DMG = 110
SKILLMOD_M_REG = 111
SKILLMOD_ADD_STATUS = 112
SKILLMOD_FALLDAMAGE_RECOVERY_MUL = 113
SKILLMOD_FIRE_DELAY = 114

local GOOD = "^"..COLORID_GREEN
local BAD = "^"..COLORID_RED
local NEUTRAL = "^"..COLORID_GRAY
local PURPLE = "^"..COLORID_PURPLE
--
GM:AddSkill(SKILL_RELOAD1, translate.Get("skill_q_r").."I", BAD.."-1%"..translate.Get("meleedamage")..GOOD.."+7%"..translate.Get("r_speed"),
																-4,			6,					{SKILL_NONE, SKILL_RELOAD2}, TREE_GUNTREE)

GM:AddSkill(SKILL_RELOAD2, translate.Get("skill_q_r").."II", BAD.."-2%"..translate.Get("meleedamage")..GOOD.."+8%"..translate.Get("r_speed"),
																-4,			4,					{SKILL_RELOAD3}, TREE_GUNTREE)
GM:AddSkill(SKILL_RELOAD3, translate.Get("skill_q_r").."III", BAD.."-4%"..translate.Get("meleedamage")..GOOD.."+9%"..translate.Get("r_speed"),
																-4,			2,					{SKILL_RELOAD4}, TREE_GUNTREE)
GM:AddSkill(SKILL_RELOAD4, translate.Get("skill_q_r").."IV", BAD.."-9%"..translate.Get("meleedamage")..GOOD.."+12%"..translate.Get("r_speed"),
																-4,			0,					{SKILL_RELOAD5}, TREE_GUNTREE)
GM:AddSkill(SKILL_RELOAD5, translate.Get("skill_q_r").."V", BAD.."-12%"..translate.Get("meleedamage")..GOOD.."+14%"..translate.Get("r_speed"),
																-4,			-2,					{SKILL_RELOAD4}, TREE_GUNTREE)
GM:AddSkill(SKILL_QUALITY, translate.Get("skill_quality"), BAD.."-50%"..translate.Get("meleedamage")..GOOD.."+50%"..translate.Get("w_ac"),
																-2,			-0,					{SKILL_RELOAD5}, TREE_GUNTREE)
-- Health Tree
GM:AddSkill(SKILL_STOIC1, translate.Get("skill_stoici_0"), GOOD..translate.Get("skill_stoici_d1")..BAD.."-7"..translate.Get("speed"),
																-4,			-6,					{SKILL_NONE, SKILL_STOIC2}, TREE_HEALTHTREE)
GM:AddSkill(SKILL_STOIC2, translate.Get("skill_stoicii_0"), GOOD..translate.Get("skill_stoicii_d1")..BAD.."-10"..translate.Get("speed"),
																-4,			-4,					{SKILL_STOIC3, SKILL_VITALITY1, SKILL_REGENERATOR}, TREE_HEALTHTREE)
GM:AddSkill(SKILL_STOIC3, translate.Get("skill_stoiciii_0"), GOOD..translate.Get("skill_stoiciii_d1")..BAD.."-9"..translate.Get("speed"),
																-3,			-2,					{SKILL_STOIC4}, TREE_HEALTHTREE)
GM:AddSkill(SKILL_STOIC4, translate.Get("skill_stoiciv_0"), GOOD..translate.Get("skill_stoiciv_d1")..BAD.."-11"..translate.Get("speed"),
																-3,			0,					{SKILL_STOIC5}, TREE_HEALTHTREE)
GM:AddSkill(SKILL_STOIC5, translate.Get("skill_stoicv_0"), GOOD..translate.Get("skill_stoicv_d1")..BAD.."-15"..translate.Get("speed"),
																-3,			2,					{SKILL_BLOODARMOR, SKILL_ULTRADEFENCE}, TREE_HEALTHTREE)
GM:AddSkill(SKILL_ULTRADEFENCE, translate.Get("skill_ultradefence"), GOOD..translate.Get("skill_ultradefence_d1")..BAD.."-70"..translate.Get("speed"),
																-2,			4,					{SKILL_STOIC5}, TREE_HEALTHTREE)

-- Speed Tree
GM:AddSkill(SKILL_SPEED1, translate.Get("skill_speed").."I", GOOD.."+7"..translate.Get("speed")..BAD.."-4"..translate.Get("health"),
																-4,			6,					{SKILL_NONE, SKILL_SPEED2}, TREE_SPEEDTREE)

GM:AddSkill(SKILL_SPEED2, translate.Get("skill_speed").."II", GOOD.."+10"..translate.Get("speed")..BAD.."-7"..translate.Get("health"),
																-4,			4,					{SKILL_SPEED3, SKILL_PHASER, SKILL_SPEED2, SKILL_U_CORRUPTEDFRAGMENT}, TREE_SPEEDTREE)
GM:AddSkill(SKILL_SPEED3, translate.Get("skill_speed").."III", GOOD.."+9"..translate.Get("speed")..BAD.."-6"..translate.Get("health"),
																-4,			2,					{SKILL_SPEED4}, TREE_SPEEDTREE)
GM:AddSkill(SKILL_SPEED4, translate.Get("skill_speed").."IV", GOOD.."+11"..translate.Get("speed")..BAD.."-8"..translate.Get("health"),
																-4,			0,					{SKILL_SPEED5, SKILL_SAFEFALL}, TREE_SPEEDTREE)
GM:AddSkill(SKILL_SPEED5, translate.Get("skill_speed").."V", GOOD.."+15"..translate.Get("speed")..BAD.."-11"..translate.Get("health"),
																-4,			-2,					{SKILL_ULTRANIMBLE, SKILL_BACKPEDDLER, SKILL_MOTIONI, SKILL_CARDIOTONIC, SKILL_UNBOUND}, TREE_SPEEDTREE)
GM:AddSkill(SKILL_BLOODHELL, translate.Get("skill_bloodyman"), GOOD..translate.Get("skill_bloodyman_d1")..BAD.."-45"..translate.Get("health"),
																-6,			-3,					{SKILL_SPEED5}, TREE_SPEEDTREE)
GM:AddSkill(SKILL_KAMIKAZE, translate.Get("skill_kamikaze"), GOOD..translate.Get("skill_kamikaze_d1")..BAD..translate.Get("skill_kamikaze_d2")..GOOD.."+66"..translate.Get("speed"),
																-2,			-3,					{SKILL_SPEED5}, TREE_SPEEDTREE)







-- Medic Tree
GM:AddSkill(SKILL_SURGEON1, translate.Get("skill_surg").."I", GOOD.."-6%"..translate.Get("med_cool"),
																-4,			6,					{SKILL_NONE, SKILL_SURGEON2}, TREE_SUPPORTTREE)
GM:AddSkill(SKILL_SURGEON2, translate.Get("skill_surg").."II", GOOD.."-9%"..translate.Get("med_cool"),
																-3,			3,					{SKILL_WORTHINESS4, SKILL_SURGEON3}, TREE_SUPPORTTREE)
GM:AddSkill(SKILL_SURGEON3, translate.Get("skill_surg").."III", GOOD.."-11%"..translate.Get("med_cool"),
																-2,			0,					{}, TREE_SUPPORTTREE)
GM:AddSkill(SKILL_BIO1, translate.Get("skill_bio").."I", GOOD.."+6%"..translate.Get("med_effect"),
																-3,			-1,					{SKILL_NONE,SKILL_BIO2}, TREE_SUPPORTTREE)
GM:AddSkill(SKILL_BIO2, translate.Get("skill_bio").."II", GOOD.."+7%"..translate.Get("med_effect"),
																-4,			1,					{SKILL_BIO1,SKILL_BIO3}, TREE_SUPPORTTREE)
GM:AddSkill(SKILL_BIO3, translate.Get("skill_bio").."III", GOOD.."+15%"..translate.Get("med_effect"),
																-4,			4,					{SKILL_INJECTOR}, TREE_SUPPORTTREE)
GM:AddSkill(SKILL_INJECTOR, translate.Get("skill_inj"), GOOD..translate.Get("skill_inj_d1")..BAD..translate.Get("skill_inj_d2"),
																-4,			5,					{SKILL_BIO3}, TREE_SUPPORTTREE)
-- Defence Tree
GM:AddSkill(SKILL_HANDY1, translate.Get("skill_handy").."I", GOOD.."+5%"..translate.Get("repair"),
																-5,			-6,					{SKILL_NONE, SKILL_HANDY2}, TREE_BUILDINGTREE)
GM:AddSkill(SKILL_HANDY2, translate.Get("skill_handy").."II", GOOD.."+6%"..translate.Get("repair"),
																-5,			-4,					{SKILL_HANDY3}, TREE_BUILDINGTREE)
GM:AddSkill(SKILL_HANDY3, translate.Get("skill_handy").."III", GOOD.."+8%"..translate.Get("repair"),
																-5,			-1,					{SKILL_TURRET_BUFF}, TREE_BUILDINGTREE)
GM:AddSkill(SKILL_TURRET_BUFF, translate.Get("skill_t_buff"), GOOD..translate.Get("skill_t_buff_d1"),
																-6,			-3,					{}, TREE_BUILDINGTREE)

GM:AddSkill(SKILL_BATTLER1, translate.Get("skill_battler").."I", GOOD.."+3%"..translate.Get("meleedamage")..BAD.."-2%"..translate.Get("r_speed"),
																-6,			-6,					{SKILL_BATTLER2, SKILL_NONE}, TREE_MELEETREE)
GM:AddSkill(SKILL_BATTLER2, translate.Get("skill_battler").."II", GOOD.."+6%"..translate.Get("meleedamage")..BAD.."-4%"..translate.Get("r_speed"),
																-6,			-4,					{SKILL_BATTLER3}, TREE_MELEETREE)
GM:AddSkill(SKILL_BATTLER3, translate.Get("skill_battler").."III", GOOD.."+8%"..translate.Get("meleedamage")..BAD.."-9%"..translate.Get("r_speed"),
																-4,			-2,					{SKILL_BATTLER4}, TREE_MELEETREE)
GM:AddSkill(SKILL_BATTLER4, translate.Get("skill_battler").."IV", GOOD.."+9%"..translate.Get("meleedamage")..BAD.."-13%"..translate.Get("r_speed"),
																-2,			0,					{SKILL_BATTLER5}, TREE_MELEETREE)
GM:AddSkill(SKILL_BATTLER5, translate.Get("skill_battler").."V", GOOD.."+13%"..translate.Get("meleedamage")..BAD.."-16%"..translate.Get("r_speed"),
																0,			2,					{SKILL_GENERATOR}, TREE_MELEETREE)
GM:AddSkill(SKILL_GENERATOR, translate.Get("skill_generator"), BAD.."-10%"..translate.Get("meleedamage")..GOOD..translate.Get("skill_generator_d1").."-30"..translate.Get("health"),
																0,			1,					{}, TREE_MELEETREE)







GM:SetSkillModifierFunction(SKILLMOD_ADD_STATUS, function(pl, amount)
	pl.AdditionalStatusTime = math.Clamp(amount + 1.0, 0, 1000.0)
end)


GM:SetSkillModifierFunction(SKILLMOD_SPEED, function(pl, amount)
	pl.SkillSpeedAdd = amount
end)
GM:SetSkillModifierFunction(SKILLMOD_LUCK, function(pl, amount)
	pl.Luck = amount
end)


GM:SetSkillModifierFunction(SKILLMOD_MEDKIT_EFFECTIVENESS_MUL, function(pl, amount)
	pl.MedicHealMul = math.Clamp(amount + 1.0, 0.0, 1000.0)
end)


GM:SetSkillModifierFunction(SKILLMOD_MEDKIT_COOLDOWN_MUL, function(pl, amount)
	pl.MedicCooldownMul = math.Clamp(amount + 1.0, 0.0, 1000.0)
end)
GM:SetSkillModifierFunction(SKILLMOD_M_REG, function(pl, amount)
	pl.MagicRegen = math.Clamp(amount + 1.0, 0.0, 1000.0)
end)
GM:SetSkillModifierFunction(SKILLMOD_M_DMG, function(pl, amount)
	pl.MagicDamage = math.Clamp(amount + 1.0, 0.0, 1000.0)
end)



GM:SetSkillModifierFunction(SKILLMOD_WORTH, function(pl, amount)
	pl.ExtraStartingWorth = amount
end)

GM:SetSkillModifierFunction(SKILLMOD_FALLDAMAGE_THRESHOLD_MUL, function(pl, amount)
	pl.FallDamageThresholdMul = math.Clamp(amount + 1.0, 0.0, 1000.0)
end)

GM:SetSkillModifierFunction(SKILLMOD_FALLDAMAGE_SLOWDOWN_MUL, function(pl, amount)
	pl.FallDamageSlowDownMul = math.Clamp(amount + 1.0, 0.0, 1000.0)
end)

GM:SetSkillModifierFunction(SKILLMOD_FOODEATTIME_MUL, function(pl, amount)
	pl.FoodEatTimeMul = math.Clamp(amount + 1.0, 0, 1000.0)
end)
GM:SetSkillModifierFunction(SKILLMOD_SPOINT, function(pl, amount)
	pl.SkillPoints = math.Clamp(amount + 0, 0, 1000.0)
end)

GM:SetSkillModifierFunction(SKILLMOD_JUMPPOWER_MUL, function(pl, amount)
	pl.JumpPowerMul = math.Clamp(amount + 1.0, 0.0, 10.0)

	if SERVER then
		pl:ResetJumpPower()
	end
end)
GM:SetSkillModifierFunction(SKILLMOD_DAMAGE, function(pl, amount)
	pl.BulletMul = math.Clamp(amount + 1.0, 0.0, 100.0)
end)


GM:SetSkillModifierFunction(SKILLMOD_BLOODARMOR, function(pl, amount)
	local oldarmor = pl:GetBloodArmor()
	local oldcap = pl.MaxBloodArmor or 100
	local new = 100 + math.Clamp(amount, 0, 1000)

	pl.MaxBloodArmor = new

	if SERVER then
		if oldarmor > oldcap then
			local overcap = oldarmor - oldcap
			pl:SetBloodArmor(pl.MaxBloodArmor + overcap)
		else
			pl:SetBloodArmor(pl:GetBloodArmor() / oldcap * new)
		end
	end
end)
GM:SetSkillModifierFunction(SKILLMOD_HEALTHMUL, GM:MkGenericMod("HealthMul"))

GM:SetSkillModifierFunction(SKILLMOD_RELOADSPEED_MUL, function(pl, amount)
	pl.ReloadSpeedMultiplier = math.Clamp(amount + 1.0, 0.05, 100.0)
end)

GM:SetSkillModifierFunction(SKILLMOD_MELEE_DAMAGE_MUL, function(pl, amount)
	pl.MeleeDamageMultiplier = math.Clamp(amount + 1.0, 0.0, 100.0)
end)


GM:SetSkillModifierFunction(SKILLMOD_SELF_DAMAGE_MUL, function(pl, amount)
	pl.SelfDamageMul = math.Clamp(amount + 1.0, 0.0, 100.0)
end)

GM:SetSkillModifierFunction(SKILLMOD_MELEE_KNOCKBACK_MUL, function(pl, amount)
	pl.MeleeKnockbackMultiplier = math.Clamp(amount + 1.0, 0.0, 10000.0)
end)

GM:SetSkillModifierFunction(SKILLMOD_UNARMED_DAMAGE_MUL, function(pl, amount)
	pl.UnarmedDamageMul = math.Clamp(amount + 1.0, 0.0, 100.0)
end)

GM:SetSkillModifierFunction(SKILLMOD_UNARMED_SWING_DELAY_MUL, function(pl, amount)
	pl.UnarmedDelayMul = math.Clamp(amount + 1.0, 0.0, 100.0)
end)

GM:SetSkillModifierFunction(SKILLMOD_BARRICADE_PHASE_SPEED_MUL, function(pl, amount)
	pl.BarricadePhaseSpeedMul = math.Clamp(amount + 1.0, 0.05, 1000.0)
end)

GM:SetSkillModifierFunction(SKILLMOD_HAMMER_SWING_DELAY_MUL, function(pl, amount)
	pl.HammerSwingDelayMul = math.Clamp(amount + 1.0, 0.01, 1.0)
end)

GM:SetSkillModifierFunction(SKILLMOD_REPAIRRATE_MUL, function(pl, amount)
	pl.RepairRateMul = math.Clamp(amount + 1.0, 0, 1000.0)
end)

GM:SetSkillModifierFunction(SKILLMOD_AIMSPREAD_MUL, function(pl, amount)
	pl.AimSpreadMul = math.Clamp(amount + 1.0, 0, 1000.0)
end)

GM:SetSkillModifierFunction(SKILLMOD_MEDGUN_FIRE_DELAY_MUL, function(pl, amount)
	pl.MedgunFireDelayMul = math.Clamp(amount + 1.0, 0.0, 100.0)
end)

GM:SetSkillModifierFunction(SKILLMOD_MEDGUN_RELOAD_SPEED_MUL, function(pl, amount)
	pl.MedgunReloadSpeedMul = math.Clamp(amount + 1.0, 0.0, 100.0)
end)

GM:SetSkillModifierFunction(SKILLMOD_DRONE_GUN_RANGE_MUL, function(pl, amount)
	pl.DroneGunRangeMul = math.Clamp(amount + 1.0, 0.0, 100.0)
end)

GM:SetSkillModifierFunction(SKILLMOD_HEALING_RECEIVED, function(pl, amount)
	pl.HealingReceived = math.Clamp(amount + 1.0, 0.0, 100.0)
end)

GM:SetSkillModifierFunction(SKILLMOD_RELOADSPEED_PISTOL_MUL, function(pl, amount)
	pl.ReloadSpeedMultiplierPISTOL = math.Clamp(amount + 1.0, 0.0, 100.0)
end)

GM:SetSkillModifierFunction(SKILLMOD_RELOADSPEED_SMG_MUL, function(pl, amount)
	pl.ReloadSpeedMultiplierSMG1 = math.Clamp(amount + 1.0, 0.0, 100.0)
end)

GM:SetSkillModifierFunction(SKILLMOD_RELOADSPEED_ASSAULT_MUL, function(pl, amount)
	pl.ReloadSpeedMultiplierAR2 = math.Clamp(amount + 1.0, 0.0, 100.0)
end)

GM:SetSkillModifierFunction(SKILLMOD_RELOADSPEED_SHELL_MUL, function(pl, amount)
	pl.ReloadSpeedMultiplierBUCKSHOT = math.Clamp(amount + 1.0, 0.0, 100.0)
end)

GM:SetSkillModifierFunction(SKILLMOD_RELOADSPEED_RIFLE_MUL, function(pl, amount)
	pl.ReloadSpeedMultiplier357 = math.Clamp(amount + 1.0, 0.0, 100.0)
end)

GM:SetSkillModifierFunction(SKILLMOD_RELOADSPEED_XBOW_MUL, function(pl, amount)
	pl.ReloadSpeedMultiplierXBOWBOLT = math.Clamp(amount + 1.0, 0.0, 100.0)
end)

GM:SetSkillModifierFunction(SKILLMOD_RELOADSPEED_PULSE_MUL, function(pl, amount)
	pl.ReloadSpeedMultiplierPULSE = math.Clamp(amount + 1.0, 0.0, 100.0)
end)

GM:SetSkillModifierFunction(SKILLMOD_RELOADSPEED_EXP_MUL, function(pl, amount)
	pl.ReloadSpeedMultiplierIMPACTMINE = math.Clamp(amount + 1.0, 0.0, 100.0)
end)

GM:SetSkillModifierFunction(SKILLMOD_MELEE_ATTACKER_DMG_REFLECT, function(pl, amount)
	pl.BarbedArmor = math.Clamp(amount, 0.0, 1000.0)
end)

GM:SetSkillModifierFunction(SKILLMOD_PULSE_WEAPON_SLOW_MUL, function(pl, amount)
	pl.PulseWeaponSlowMul = math.Clamp(amount + 1.0, 0.0, 1000.0)
end)

GM:SetSkillModifierFunction(SKILLMOD_MELEE_DAMAGE_TAKEN_MUL, function(pl, amount)
	pl.MeleeDamageTakenMul = math.Clamp(amount + 1.0, 0.05, 1000.0)
end)

GM:SetSkillModifierFunction(SKILLMOD_POISON_DAMAGE_TAKEN_MUL, function(pl, amount)
	pl.PoisonDamageTakenMul = math.Clamp(amount + 1.0, 0.0, 1000.0)
end)

GM:SetSkillModifierFunction(SKILLMOD_BLEED_DAMAGE_TAKEN_MUL, function(pl, amount)
	pl.BleedDamageTakenMul = math.Clamp(amount + 1.0, 0.0, 1000.0)
end)

GM:SetSkillModifierFunction(SKILLMOD_MELEE_SWING_DELAY_MUL, function(pl, amount)
	pl.MeleeSwingDelayMul = math.Clamp(amount + 1.0, 0, 1000.0)
end)

GM:SetSkillModifierFunction(SKILLMOD_MELEE_DAMAGE_TO_BLOODARMOR_MUL, function(pl, amount)
	pl.MeleeDamageToBloodArmorMul = math.Clamp(amount, 0, 1000.0)
end)

GM:SetSkillModifierFunction(SKILLMOD_MELEE_MOVEMENTSPEED_ON_KILL, function(pl, amount)
	pl.MeleeMovementSpeedOnKill = math.Clamp(amount, -15, 1000.0)
end)

GM:SetSkillModifierFunction(SKILLMOD_MELEE_POWERATTACK_MUL, function(pl, amount)
	pl.MeleePowerAttackMul = math.Clamp(amount + 1.0, 0, 1000.0)
end)

GM:SetSkillModifierFunction(SKILLMOD_KNOCKDOWN_RECOVERY_MUL, function(pl, amount)
	pl.KnockdownRecoveryMul = math.Clamp(amount + 1.0, 0, 1000.0)
end)

GM:SetSkillModifierFunction(SKILLMOD_MELEE_RANGE_MUL, function(pl, amount)
	pl.MeleeRangeMul = math.Clamp(amount + 1.0, 0, 1000.0)
end)

GM:SetSkillModifierFunction(SKILLMOD_SLOW_EFF_TAKEN_MUL, function(pl, amount)
	pl.SlowEffTakenMul = math.Clamp(amount + 1.0, 0, 1000.0)
end)

GM:SetSkillModifierFunction(SKILLMOD_EXP_DAMAGE_TAKEN_MUL, function(pl, amount)
	pl.ExplosiveDamageTakenMul = math.Clamp(amount + 1.0, 0.0, 1000.0)
end)

GM:SetSkillModifierFunction(SKILLMOD_FIRE_DAMAGE_TAKEN_MUL, function(pl, amount)
	pl.FireDamageTakenMul = math.Clamp(amount + 1.0, 0.0, 1000.0)
end)
GM:SetSkillModifierFunction(SKILLMOD_CURSEM, function(pl, amount)
	pl.CurseMultiplier = math.Clamp(amount + 1.0, 0.0, 1000.0)
end)

GM:SetSkillModifierFunction(SKILLMOD_PROP_CARRY_CAPACITY_MUL, function(pl, amount)
	pl.PropCarryCapacityMul = math.Clamp(amount + 1.0, 0.0, 1000.0)
end)

GM:SetSkillModifierFunction(SKILLMOD_PROP_THROW_STRENGTH_MUL, function(pl, amount)
	pl.ObjectThrowStrengthMul = math.Clamp(amount + 1.0, 0.0, 1000.0)
end)

GM:SetSkillModifierFunction(SKILLMOD_PHYSICS_DAMAGE_TAKEN_MUL, function(pl, amount)
	pl.PhysicsDamageTakenMul = math.Clamp(amount + 1.0, 0.0, 1000.0)
end)

GM:SetSkillModifierFunction(SKILLMOD_VISION_ALTER_DURATION_MUL, function(pl, amount)
	pl.VisionAlterDurationMul = math.Clamp(amount + 1.0, 0.0, 1000.0)
end)
GM:SetSkillModifierFunction(SKILLMOD_RES_AMMO_MUL, function(pl, amount)
	pl.RessuplyMul = math.Clamp(amount + 1.0, 0.0, 1000.0)
end)

GM:SetSkillModifierFunction(SKILLMOD_DIMVISION_EFF_MUL, function(pl, amount)
	pl.DimVisionEffMul = math.Clamp(amount + 1.0, 0.0, 1000.0)
end)

GM:SetSkillModifierFunction(SKILLMOD_XP, function(pl, amount)
	pl.XPMulti = math.Clamp(amount + 1.0, 0.0, 1000.0)
end)
GM:SetSkillModifierFunction(SKILLMOD_PROP_CARRY_SLOW_MUL, function(pl, amount)
	pl.PropCarrySlowMul = math.Clamp(amount + 1.0, 0.0, 1000.0)
end)

GM:SetSkillModifierFunction(SKILLMOD_PIECE_OF_AMULET, function(pl, amount)
	pl.AmuletPiece = math.Clamp(amount, -999, 1000.0)
end)
GM:SetSkillModifierFunction(SKILLMOD_BLEED_SPEED_MUL, function(pl, amount)
	pl.BleedSpeedMul = math.Clamp(amount + 1.0, 0.1, 1000.0)
end)
GM:SetSkillModifierFunction(SKILLMOD_FIRE_DELAY, function(pl, amount)
	pl.M_FireDelay = math.Clamp(amount + 1.0, 0.1, 1000.0)
end)

GM:SetSkillModifierFunction(SKILLMOD_MELEE_LEG_DAMAGE_ADD, function(pl, amount)
	pl.MeleeLegDamageAdd = math.Clamp(amount, 0, 1000.0)
end)

GM:SetSkillModifierFunction(SKILLMOD_SIGIL_TELEPORT_MUL, function(pl, amount)
	pl.SigilTeleportTimeMul = math.Clamp(amount + 1.0, 0.1, 1000.0)
end)

GM:SetSkillModifierFunction(SKILLMOD_BLOCKMULTIPLIER, function(pl, amount)
	pl.BlockMultiplier = math.Clamp(amount + 1.0, 0.1, 1000.0)
end)

GM:SetSkillModifierFunction(SKILLMOD_MELEE_ATTACKER_DMG_REFLECT_PERCENT, function(pl, amount)
	pl.BarbedArmorPercent = math.Clamp(amount, 0, 1000.0)
end)

GM:SetSkillModifierFunction(SKILLMOD_POISON_SPEED_MUL, function(pl, amount)
	pl.PoisonSpeedMul = math.Clamp(amount + 1.0, 0.1, 1000.0)
end)
GM:SetSkillModifierFunction(SKILLMOD_SCALEMODEL, function(pl, amount)
	pl.ScaleModel = math.Clamp(amount + 1.0, 0.15, 1000.0)
end)


GM:SetSkillModifierFunction(SKILLMOD_PROJECTILE_DAMAGE_TAKEN_MUL, GM:MkGenericMod("ProjDamageTakenMul"))
GM:SetSkillModifierFunction(SKILLMOD_EXP_DAMAGE_RADIUS, GM:MkGenericMod("ExpDamageRadiusMul"))
GM:SetSkillModifierFunction(SKILLMOD_WEAPON_WEIGHT_SLOW_MUL, GM:MkGenericMod("WeaponWeightSlowMul"))
GM:SetSkillModifierFunction(SKILLMOD_FRIGHT_DURATION_MUL, GM:MkGenericMod("FrightDurationMul"))
GM:SetSkillModifierFunction(SKILLMOD_IRONSIGHT_EFF_MUL, GM:MkGenericMod("IronsightEffMul"))
GM:SetSkillModifierFunction(SKILLMOD_MEDDART_EFFECTIVENESS_MUL, GM:MkGenericMod("MedDartEffMul"))

GM:SetSkillModifierFunction(SKILLMOD_BLOODARMOR_DMG_REDUCTION, function(pl, amount)
	pl.BloodArmorDamageReductionAdd = amount
end)

GM:SetSkillModifierFunction(SKILLMOD_BLOODARMOR_MUL, function(pl, amount)
	local mul = math.Clamp(amount + 1.0, 0.0, 1000.0)

	pl.MaxBloodArmorMul = mul

	local oldarmor = pl:GetBloodArmor()
	local oldcap = pl.MaxBloodArmor or 20
	local new = pl.MaxBloodArmor * mul

	pl.MaxBloodArmor = new

	if SERVER then
		if oldarmor > oldcap then
			local overcap = oldarmor - oldcap
			pl:SetBloodArmor(pl.MaxBloodArmor + overcap)
		else
			pl:SetBloodArmor(pl:GetBloodArmor() / oldcap * new)
		end
	end
end)

GM:SetSkillModifierFunction(SKILLMOD_BLOODARMOR_GAIN_MUL, GM:MkGenericMod("BloodarmorGainMul"))
GM:SetSkillModifierFunction(SKILLMOD_LOW_HEALTH_SLOW_MUL, GM:MkGenericMod("LowHealthSlowMul"))
GM:SetSkillModifierFunction(SKILLMOD_PROJ_SPEED, GM:MkGenericMod("ProjectileSpeedMul"))

GM:SetSkillModifierFunction(SKILLMOD_ENDWAVE_POINTS, function(pl,amount)
	pl.EndWavePointsExtra = math.Clamp(amount, 0.0, 1000.0)
end)
GM:SetSkillModifierFunction(SKILLMOD_ARSENAL_DISCOUNT, function(pl, amount)
	pl.ArsenalDiscount = math.Clamp(amount + 1.0, 0.05, 1000.0)
end)
GM:SetSkillModifierFunction(SKILLMOD_SCRAPDISCOUNT, GM:MkGenericMod("ScrapDiscount"))
GM:SetSkillModifierFunction(SKILLMOD_CLOUD_RADIUS, GM:MkGenericMod("CloudRadius"))
GM:SetSkillModifierFunction(SKILLMOD_CLOUD_TIME, GM:MkGenericMod("CloudTime"))
GM:SetSkillModifierFunction(SKILLMOD_EXP_DAMAGE_MUL, GM:MkGenericMod("ExplosiveDamageMul"))
GM:SetSkillModifierFunction(SKILLMOD_PROJECTILE_DAMAGE_MUL, GM:MkGenericMod("ProjectileDamageMul"))
GM:SetSkillModifierFunction(SKILLMOD_TURRET_RANGE_MUL, GM:MkGenericMod("TurretRangeMul"))
GM:SetSkillModifierFunction(SKILLMOD_AIM_SHAKE_MUL, GM:MkGenericMod("AimShakeMul"))


GM:AddSkillModifier(SKILL_KAMIKAZE, SKILLMOD_SPEED, 66)

GM:AddSkillModifier(SKILL_SPEED1, SKILLMOD_SPEED, 7)
GM:AddSkillModifier(SKILL_SPEED1, SKILLMOD_HEALTH, -4)

GM:AddSkillModifier(SKILL_SPEED2, SKILLMOD_SPEED, 10)
GM:AddSkillModifier(SKILL_SPEED2, SKILLMOD_HEALTH, -7)

GM:AddSkillModifier(SKILL_SPEED3, SKILLMOD_SPEED, 9)
GM:AddSkillModifier(SKILL_SPEED3, SKILLMOD_HEALTH, -6)

GM:AddSkillModifier(SKILL_SPEED4, SKILLMOD_SPEED, 11)
GM:AddSkillModifier(SKILL_SPEED4, SKILLMOD_HEALTH, -8)

GM:AddSkillModifier(SKILL_SPEED5, SKILLMOD_SPEED, 15)
GM:AddSkillModifier(SKILL_SPEED5, SKILLMOD_HEALTH, -11)

GM:AddSkillModifier(SKILL_STOIC1, SKILLMOD_HEALTH, 4)
GM:AddSkillModifier(SKILL_STOIC1, SKILLMOD_SPEED, -7)

GM:AddSkillModifier(SKILL_STOIC2, SKILLMOD_HEALTH, 5)
GM:AddSkillModifier(SKILL_STOIC2, SKILLMOD_SPEED, -10)

GM:AddSkillModifier(SKILL_STOIC3, SKILLMOD_HEALTH, 6)
GM:AddSkillModifier(SKILL_STOIC3, SKILLMOD_SPEED, -9)

GM:AddSkillModifier(SKILL_STOIC4, SKILLMOD_HEALTH, 8)
GM:AddSkillModifier(SKILL_STOIC4, SKILLMOD_SPEED, -11)

GM:AddSkillModifier(SKILL_STOIC5, SKILLMOD_HEALTH, 11)
GM:AddSkillModifier(SKILL_STOIC5, SKILLMOD_SPEED, -15)
GM:AddSkillModifier(SKILL_BLOODHELL, SKILLMOD_HEALTH, -45)

GM:AddSkillModifier(SKILL_SURGEON1, SKILLMOD_MEDKIT_COOLDOWN_MUL, -0.06)
GM:AddSkillModifier(SKILL_SURGEON2, SKILLMOD_MEDKIT_COOLDOWN_MUL, -0.09)
GM:AddSkillModifier(SKILL_SURGEON3, SKILLMOD_MEDKIT_COOLDOWN_MUL, -0.11)


GM:AddSkillModifier(SKILL_BIO1, SKILLMOD_MEDKIT_EFFECTIVENESS_MUL, 0.06)
GM:AddSkillModifier(SKILL_BIO2, SKILLMOD_MEDKIT_EFFECTIVENESS_MUL, 0.07)
GM:AddSkillModifier(SKILL_BIO3, SKILLMOD_MEDKIT_EFFECTIVENESS_MUL, 0.15)



GM:AddSkillModifier(SKILL_HANDY1, SKILLMOD_REPAIRRATE_MUL, 0.05)
GM:AddSkillModifier(SKILL_HANDY2, SKILLMOD_REPAIRRATE_MUL, 0.06)
GM:AddSkillModifier(SKILL_HANDY3, SKILLMOD_REPAIRRATE_MUL, 0.08)




GM:AddSkillModifier(SKILL_BATTLER1, SKILLMOD_MELEE_DAMAGE_MUL, 0.03)
GM:AddSkillModifier(SKILL_BATTLER2, SKILLMOD_MELEE_DAMAGE_MUL, 0.06)
GM:AddSkillModifier(SKILL_BATTLER3, SKILLMOD_MELEE_DAMAGE_MUL, 0.08)
GM:AddSkillModifier(SKILL_BATTLER4, SKILLMOD_MELEE_DAMAGE_MUL, 0.09)
GM:AddSkillModifier(SKILL_BATTLER5, SKILLMOD_MELEE_DAMAGE_MUL, 0.13)

GM:AddSkillModifier(SKILL_GENERATOR, SKILLMOD_MELEE_DAMAGE_MUL, -0.10)
GM:AddSkillModifier(SKILL_GENERATOR, SKILLMOD_HEALTH, 30)

GM:AddSkillModifier(SKILL_QUALITY, SKILLMOD_MELEE_DAMAGE_MUL, -0.50)
GM:AddSkillModifier(SKILL_QUALITY, SKILLMOD_AIMSPREAD_MUL, -0.50)


GM:AddSkillModifier(SKILL_BATTLER1, SKILLMOD_RELOADSPEED_MUL, -0.02)
GM:AddSkillModifier(SKILL_BATTLER2, SKILLMOD_RELOADSPEED_MUL, -0.04)
GM:AddSkillModifier(SKILL_BATTLER3, SKILLMOD_RELOADSPEED_MUL, -0.09)
GM:AddSkillModifier(SKILL_BATTLER4, SKILLMOD_RELOADSPEED_MUL, -0.13)
GM:AddSkillModifier(SKILL_BATTLER5, SKILLMOD_RELOADSPEED_MUL, -0.16)

GM:AddSkillModifier(SKILL_RELOAD1, SKILLMOD_MELEE_DAMAGE_MUL, -0.01)
GM:AddSkillModifier(SKILL_RELOAD2, SKILLMOD_MELEE_DAMAGE_MUL, -0.02)
GM:AddSkillModifier(SKILL_RELOAD3, SKILLMOD_MELEE_DAMAGE_MUL, -0.04)
GM:AddSkillModifier(SKILL_RELOAD4, SKILLMOD_MELEE_DAMAGE_MUL, -0.09)
GM:AddSkillModifier(SKILL_RELOAD5, SKILLMOD_MELEE_DAMAGE_MUL, -0.12)



GM:AddSkillModifier(SKILL_RELOAD1, SKILLMOD_RELOADSPEED_MUL, 0.07)
GM:AddSkillModifier(SKILL_RELOAD2, SKILLMOD_RELOADSPEED_MUL, 0.08)
GM:AddSkillModifier(SKILL_RELOAD3, SKILLMOD_RELOADSPEED_MUL, 0.09)
GM:AddSkillModifier(SKILL_RELOAD4, SKILLMOD_RELOADSPEED_MUL, 0.12)
GM:AddSkillModifier(SKILL_RELOAD5, SKILLMOD_RELOADSPEED_MUL, 0.14)

GM:AddSkillModifier(SKILL_ULTRADEFENCE, SKILLMOD_SPEED, -70)
