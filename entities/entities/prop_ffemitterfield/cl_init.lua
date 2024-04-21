include("shared.lua")

ENT.RenderGroup = RENDERGROUP_TRANSLUCENT

function ENT:Initialize()
	self.Seed = math.Rand(0, 10)
	self:DrawShadow(false)

	self.AmbientSound = CreateSound(self, "ambient/machines/combine_shield_touch_loop1.wav")
	self.AmbientSound:PlayEx(0.1, 100)
end

function ENT:Think()
	self.AmbientSound:PlayEx(0.1, 100 + RealTime() % 1)
end

function ENT:OnRemove()
	self.AmbientSound:Stop()
end

local matGlow = Material("models/spawn_effect2")
function ENT:DrawTranslucent()
	local upgrades = self:GetOwner() and self:GetOwner().GetUpgrade and self:GetOwner():GetUpgrade() or 0
	render.SuppressEngineLighting(true)
	render.ModelMaterialOverride(matGlow)
	render.SetColorModulation(0.5, 0.6-(upgrades*0.2), 1-(upgrades*0.1))
	render.SetBlend(0.1 + math.abs(math.cos(CurTime()*1.5+upgrades^2)) ^ 10 * (upgrades+1) * 0.3 )
	self:DrawModel()
	render.SetBlend(1)
	render.SetColorModulation(1, 1, 1)
	render.ModelMaterialOverride(0)
	render.SuppressEngineLighting(false)
end
