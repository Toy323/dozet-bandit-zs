EFFECT.Delta = 0

function EFFECT:Init( data )
	self.Position = data:GetStart()
	self.WeaponEnt = data:GetEntity()
	self.Attachment = data:GetAttachment()

	self.StartPos = self:GetTracerShootPos(self.Position, self.WeaponEnt, self.Attachment)
	self.EndPos = data:GetOrigin()

	self.DieTime = CurTime() + 0.5
	
	local emitter = ParticleEmitter( self.EndPos)
	emitter:SetNearClip(24, 32)

	for i=1, 9 do
		local particle = emitter:Add("sprites/glow04_noz",  self.EndPos)
		particle:SetDieTime(1)
		particle:SetColor( math.random(133,200),70, 35)
		particle:SetStartAlpha(255)
		particle:SetEndAlpha(0)
		particle:SetStartSize(8)
		particle:SetEndSize(0)
		particle:SetVelocity(VectorRand():GetNormal() * 10)
	end

	emitter:Finish() emitter = nil collectgarbage("step", 64)
	
	self:SetRenderBoundsWS( self.StartPos, self.EndPos )
end

function EFFECT:Think( )
	self.Delta = math.Clamp((self.DieTime - CurTime())/0.5,0,1)
	return CurTime() < self.DieTime
end

local beammat = Material("trails/laser")
local beam1mat = Material("trails/electric")
function EFFECT:Render()
	local texcoord = math.Rand(0, 1)
	local laser = false
	if !self.WeaponEnt or !self.WeaponEnt:IsValid() then return end
	if self.WeaponEnt:GetClass() == "prop_laser_turret" or   self.WeaponEnt:GetClass() == "weapon_zs_palka" then
		laser = true
	end

	local emitter = ParticleEmitter(self.EndPos)
	emitter:SetNearClip(24, 32)
	if self.Delta > 0.8 then
		local particle = emitter:Add("sprites/light_glow02_add", self.EndPos - (self.EndPos - self.StartPos) * math.Clamp(self.Delta-0.8,0,0.2)*5)
		local vel = Vector( 0, 0, 1 )
		particle:SetDieTime(0.5)
		particle:SetColor(196, 94, 32)
		particle:SetStartAlpha(255)
		particle:SetEndAlpha(0)
		particle:SetStartSize(5*(laser and 10 or 1))
		particle:SetEndSize(0)
	end
	emitter:Finish() emitter = nil collectgarbage("step", 64)
	
	local norm = (self.StartPos - self.EndPos)
	local nlen = norm:Length()
	render.SetMaterial(beammat)
	render.DrawBeam(self.StartPos, self.EndPos, 232*(laser and 18 or 1), texcoord, texcoord + nlen / 128, Color(164, 99, 20, 205 * math.Clamp(self.Delta-0.5,0,0.5)*2))
	render.SetMaterial(beam1mat)
	render.DrawBeam(self.StartPos, self.EndPos, 162*(laser and 18 or 1), texcoord, texcoord + nlen / 128, Color(174, 103, 41, 255 * math.Clamp(self.Delta-0.5,0,0.5)*2))
end