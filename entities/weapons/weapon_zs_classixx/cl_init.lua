include("shared.lua")

SWEP.Slot = 3
SWEP.SlotPos = 0

SWEP.ViewModelFlip = false
SWEP.ViewModelFOV = 58

SWEP.HUD3DBone = "Base"
SWEP.HUD3DPos = Vector(3, -0.5, -13)
SWEP.HUD3DAng = Angle(180, 0, 0)
SWEP.HUD3DScale = 0.03


SWEP.ViewModelBoneMods = {
	["ValveBiped.Bip01_L_UpperArm"] = { scale = Vector(1, 1, 1), pos = Vector(0, -1, -0.3), angle = Angle(0, 0, 0) },
	["Base"] = { scale = Vector(0.009, 0.009, 0.009), pos = Vector(0, 0, 3), angle = Angle(0, 0, 0) }
}

local colBG = Color(16, 16, 16, 90)
local colRed = Color(220, 0, 0, 230)
local colWhite = Color(220, 220, 220, 230)
