EFFECT.Delta = 0

function EFFECT:Init( data )
	self.Position = data:GetStart()
	self.WeaponEnt = data:GetEntity()
	self.Attachment = data:GetAttachment()

	self.StartPos = self:GetTracerShootPos(self.Position, self.WeaponEnt, self.Attachment)
	self.EndPos = data:GetOrigin()

	self.DieTime = CurTime() + 2

	self:SetRenderBoundsWS( self.StartPos, self.EndPos )

	local emitter = ParticleEmitter(self.StartPos)
	emitter:SetNearClip(12, 24)

	for i=1, 4 do
		local particle = emitter:Add("effects/rollerglow", self.StartPos)
		particle:SetDieTime(0.5)
		particle:SetColor(135,135,135)
		particle:SetStartAlpha(178)
		particle:SetEndAlpha(0)
		particle:SetStartSize(0)
		particle:SetEndSize(45)
		particle:SetVelocity(VectorRand():GetNormal() * 1)
	end

	emitter:Finish() emitter = nil collectgarbage("step", 64)
end

function EFFECT:Think( )
	self.Delta = math.Clamp((self.DieTime - CurTime())/2,0,1)
	return CurTime() < self.DieTime
end

local beammat = Material("trails/electric")

function EFFECT:Render()
	local texcoord = math.Rand(0, 1)

	local norm = (self.StartPos - self.EndPos)
	local nlen = norm:Length()
	render.SetMaterial(beammat)
	render.DrawBeam(self.StartPos, self.EndPos, 16, texcoord, texcoord + nlen / 128, Color(66, 197, 255, 255 * self.Delta))
end