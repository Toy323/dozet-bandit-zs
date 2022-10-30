AddCSLuaFile()

if CLIENT then
	SWEP.TranslateName = "weapon_manhack_saw_name"
	SWEP.TranslateDesc = "weapon_manhack_saw_desc"
end

SWEP.Base = "weapon_zs_manhack"

SWEP.DeployClass = "prop_manhack_saw"
SWEP.ControlWeapon = "weapon_zs_manhackcontrol_saw"

SWEP.Primary.Ammo = "manhack_saw"
local colBG = Color(16, 16, 16, 90)
local colWhite = Color(220, 220, 220, 230)

SWEP.HUD3DPos = Vector(5, 2, 0)

function SWEP:PostDrawViewModel(vm)

	if not self.HUD3DPos or GAMEMODE.WeaponHUDMode == 1 then return end

	local bone = vm:LookupBone("ValveBiped.Bip01_R_Hand")
	if not bone then return end

	local m = vm:GetBoneMatrix(bone)
	if not m then return end

	local pos, ang = m:GetTranslation(), m:GetAngles()

	local offset = self.HUD3DPos

	pos = pos + ang:Forward() * offset.x + ang:Right() * offset.y + ang:Up() * offset.z

	ang:RotateAroundAxis(ang:Up(), math.sin(CurTime() * math.pi) * 20)
	ang:RotateAroundAxis(ang:Right(), CurTime() * 180)

	pos = pos + ang:Forward() * 7

	ang:RotateAroundAxis(ang:Right(), 270)
	ang:RotateAroundAxis(ang:Up(), 180)

	local wid, hei = 144, 144
	local x, y = wid * -0.5, hei * -0.5
	local clip = self:GetPrimaryAmmoCount()

	cam.Start3D2D(pos, ang, 0.0125)
		draw.RoundedBox(32, x, y, wid, hei, colBG)
		draw.SimpleText(clip, "ZS3D2DFontBig", x + wid * 0.5, y + hei * 0.5, colWhite, TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
	cam.End3D2D()
end