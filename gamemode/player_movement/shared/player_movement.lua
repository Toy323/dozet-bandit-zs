--CACHED GLOBALS
local math_min = math.min
local curtime = CurTime

local TEAM_HUMAN = TEAM_HUMAN

local GM_MaxLegDamage = GM.MaxLegDamage

local M_Entity = FindMetaTable("Entity")
local M_Player = FindMetaTable("Player")
local M_CMoveData = FindMetaTable("CMoveData")

local E_GetTable = M_Entity.GetTable
local E_GetDTFloat = M_Entity.GetDTFloat
local E_GetDTBool = M_Entity.GetDTBool
local P_Team = M_Player.Team
local P_Down = M_Player.KeyDown
local P_GetZombieClassTable = M_Player.GetZombieClassTable
local P_GetLegDamage = M_Player.GetLegDamage
local P_GetBarricadeGhosting = M_Player.GetBarricadeGhosting
local P_GetActiveWeapon = M_Player.GetActiveWeapon
local M_SetVelocity = M_CMoveData.SetVelocity
local M_GetVelocity = M_CMoveData.GetVelocity
local M_SetMaxSpeed = M_CMoveData.SetMaxSpeed
local M_GetMaxSpeed = M_CMoveData.GetMaxSpeed
local M_SetMaxClientSpeed = M_CMoveData.SetMaxClientSpeed
local M_GetMaxClientSpeed = M_CMoveData.GetMaxClientSpeed
local M_GetForwardSpeed = M_CMoveData.GetForwardSpeed
local M_GetSideSpeed = M_CMoveData.GetSideSpeed

function GM:SetupMove(pl, move, cmd)
end

local fw, sd, pt, vel, mul, phase
function GM:Move(pl, move)
	pt = E_GetTable(pl)
	M_SetMaxClientSpeed(move, M_GetMaxClientSpeed(move) * (P_Down(pl,IN_SPEED) and 2 or 1))
		if P_GetBarricadeGhosting(pl) and not E_GetDTBool(pl, 1) then
			-- Use 7, because friction will amount this to a velocity of 1 roughly.

			M_SetMaxClientSpeed(move, math_min(M_GetMaxClientSpeed(move), (30 * (pt.BarricadePhaseSpeedMul or 1))))
		elseif not pt.NoBWSpeedPenalty then
			fw = M_GetForwardSpeed(move)
			if fw < 0 then
				sd = M_GetSideSpeed(move)
				if sd < 0 then sd = -sd end

				if sd > fw then
					M_SetMaxClientSpeed(move, M_GetMaxClientSpeed(move) * (P_GetActiveWeapon(pl).IsMelee and 0.75 or 0.5))
				end
			end
		end
			local wep = P_GetActiveWeapon(pl)
			if wep.Move then
				wep:Move(move) 
			end

	legdmg = P_GetLegDamage(pl)
	if legdmg > 0 then
		M_SetMaxClientSpeed(move, M_GetMaxClientSpeed(move) * (1 - math_min(1, legdmg / GM_MaxLegDamage)))
	end
end

