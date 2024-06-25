INC_SERVER()
function ENT:SetDie(fTime)
	if fTime == 0 or not fTime then
		self.DieTime = 0
	elseif fTime == -1 then
		self.DieTime = 999999999
	else
		self.DieTime = CurTime() + fTime
		self:SetDuration(fTime)
	end
end

ENT.NextFire = 0
function ENT:Think()
	self:NextThink(CurTime())
	if self.DieTime <= CurTime() then
		self:Remove()
	end
	if self.NoIceThrower and self.NextFire < CurTime() then
		self.NextFire = CurTime() + 0.1
		local owner = self:GetOwner()
		local size = 300
		local dir = owner:GetAimVector()
		local angle = math.cos( math.rad( 45 ) ) -- 30 degrees
		local startPos = owner:EyePos()

		local entities = ents.FindInCone( startPos, dir, size, angle )
		for id, ent in ipairs( entities ) do
			if ent:IsValid() and ent:IsPlayer() and ent:Alive() and ent:Team() ~= owner:Team() and WorldVisible(ent:GetPos(),startPos) then
				ent:TakeDamage(1,owner,self)
				ent:AddCold(1)
				local cold = ent:GetCold()
				if cold > ent:GetMaximumCold() then
					ent:Kill()
					ent:EmitSound('physics/glass/glass_bottle_break'..math.random(2)..'.wav',70,100,10,CHAN_WEAPON+20)
					self:SetDTEntity(12,ent)
					timer.Simple(0.1, function() self:SetDTEntity(12,NULL) end)
				elseif ent:GetCold() > ent:GetMaximumCold()*0.2 then
					ent:ResetSpeed()
				end
			end
		end
	end
	return true
end
