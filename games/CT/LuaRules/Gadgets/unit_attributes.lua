--------------------------------------------------------------------------------
--------------------------------------------------------------------------------

function gadget:GetInfo()
   return {
      name      = "Attributes",
      desc      = "Handles UnitRulesParam attributes.",
      author    = "CarRepairer",
      date      = "2009-11-27",
      license   = "GNU GPL, v2 or later",
      layer     = -1,
      enabled   = true, 
   }
end


--------------------------------------------------------------------------------
--------------------------------------------------------------------------------

--SYNCED
if gadgetHandler:IsSyncedCode() then

--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
local spGetUnitDefID        	= Spring.GetUnitDefID
local spGetUnitStates  			= Spring.GetUnitStates

local spGetUnitRulesParam  		= Spring.GetUnitRulesParam
local spSetUnitRulesParam  		= Spring.SetUnitRulesParam

local spGetUnitHealth  			= Spring.GetUnitHealth
local spSetUnitHealth  			= Spring.SetUnitHealth

local spGetUnitCOBValue  		= Spring.GetUnitCOBValue
local spSetUnitCOBValue  		= Spring.SetUnitCOBValue

local spSetUnitWeaponState  = Spring.SetUnitWeaponState

local spGetUnitsInCylinder 	= Spring.GetUnitsInCylinder
local spGetUnitPosition 	= Spring.GetUnitPosition

local spSpawnCEG 				= Spring.SpawnCEG

local random	= math.random
local echo = Spring.Echo

local MAX_SPEED = 75

local COBRATIO = 1/30*65535

--------------------------------------------------------------------------------
--------------------------------------------------------------------------------


if not GG.attUnits then
	GG.attUnits = {}
end

local burrow_crusts = {}



function gadget:GameFrame(f)
	
	if f % 32 < .1 then
		for unitID, teamID in pairs(GG.attUnits) do
		
			if not Spring.ValidUnitID(unitID) then
				GG.attUnits[unitID] = nil
				if burrow_crusts[unitID] then
					Spring.DestroyUnit(burrow_crusts[unitID])
					burrow_crusts[unitID] = nil
				end
			end
		
			local udid = spGetUnitDefID(unitID)
			if not udid then return end
				
			local ud = UnitDefs[udid]
			
			local burrowed = spGetUnitRulesParam(unitID,"burrowed")
			--[[
			-- SLOW --
			if burrowed ~= 1 then
				local slowLevel = spGetUnitRulesParam(unitID,"slowState")
				if slowLevel then
					slowLevel = 1 - slowLevel
					
					local origSpeed = ud.speed * COBRATIO
					spSetUnitCOBValue(unitID, MAX_SPEED, origSpeed * slowLevel)
					
					for i,w in ipairs(ud.weapons) do
						local origReload = WeaponDefs[w.weaponDef].reload
						spSetUnitWeaponState(unitID, i-1, {reloadTime = origReload * (2 - slowLevel) })
					end	
				end
			end
			--end slow
			]]
			-- AURAS --
			--- Frenzy ---
			--[[
			if burrowed ~= 1 and spGetUnitRulesParam(unitID,"Frenzy Aura") == 1 then
				for i,w in ipairs(ud.weapons) do
					local origReload = WeaponDefs[w.weaponDef].reload
					local origAcc = WeaponDefs[w.weaponDef].accuracy
					
					local slowLevel = spGetUnitRulesParam(unitID,"slowState") or 0
					local curReload = origReload * (1 + slowLevel)
					spSetUnitWeaponState(unitID, i-1, {reloadTime = curReload / 2, accuracy = origAcc * 3 } )
				end
			end
			]]
			--- Heal --
			if spGetUnitRulesParam(unitID,"Heal Aura") == 1 then
				spSetUnitHealth(unitID, spGetUnitHealth(unitID)+50 ) --10
			end
			--- Focus --
			if spGetUnitRulesParam(unitID,"Focus Aura") == 1 then
				for i,w in ipairs(ud.weapons) do
					local origAcc = WeaponDefs[w.weaponDef].accuracy
					local origRange = WeaponDefs[w.weaponDef].range					
					spSetUnitWeaponState(unitID, i-1, {accuracy = origAcc * 0.66 } )
					spSetUnitWeaponState(unitID, i-1, {range = origRange * 1.2 } )					
				end
			end
			-- Thorns --
			if spGetUnitRulesParam(unitID,"Thorns Aura") == 1 then
				spSetUnitHealth(unitID, spGetUnitHealth(unitID)-20 )
			end	
			--- Curse --
			if spGetUnitRulesParam(unitID,"Curse Aura") == 1 then
				for i,w in ipairs(ud.weapons) do
					local origAcc = WeaponDefs[w.weaponDef].accuracy
					spSetUnitWeaponState(unitID, i-1, {accuracy = origAcc * 5 } )
				end
			end
			--end auras

			if spGetUnitRulesParam(unitID,"Focus Aura") ~= 1 and spGetUnitRulesParam(unitID,"Curse Aura") ~= 1 and spGetUnitRulesParam(unitID,"Frenzy Aura") ~= 1 then
				for i,w in ipairs(ud.weapons) do
					local origAcc = WeaponDefs[w.weaponDef].accuracy
					local origRange = WeaponDefs[w.weaponDef].range					
					spSetUnitWeaponState(unitID, i-1, {accuracy = origAcc} )
					spSetUnitWeaponState(unitID, i-1, {range = origRange} )					
				end
			end
			
			if spGetUnitRulesParam(unitID,"Frenzy Aura") ~= 1 then
				local slowLevel = spGetUnitRulesParam(unitID,"slowState")
				if not slowLevel then
					for i,w in ipairs(ud.weapons) do
						local origReload = WeaponDefs[w.weaponDef].reload
						spSetUnitWeaponState(unitID, i-1, {reloadTime = origReload } )
					end
				end
			end

			--[[
			-- BURROWED --
			if burrowed == 1 then
			
				if not burrow_crusts[unitID] then
					--make crust
					local x,y,z = spGetUnitPosition(unitID)
					local teamID = Spring.GetUnitTeam(unitID)					
					local crustID = Spring.CreateUnit('burrowcrust', x,y,z, 0, teamID )
					burrow_crusts[unitID] = crustID
					SendToUnsynced('setselectable', crustID, false)
					Spring.SetUnitCloak(crustID, 2, 50)
					
					--set cloak
					Spring.SetUnitCloak(unitID, 2, 50)
					Spring.SetUnitStealth(unitID, true)
				
					--don't shoot
					for i,w in ipairs(ud.weapons) do
						spSetUnitWeaponState(unitID, i-1, {reloadTime = 99999, reloadState = 99999 } )
					end
					
					--don't block other units
					Spring.SetUnitBlocking(unitID, false)
					
					--don't move
				--	spSetUnitCOBValue(unitID, MAX_SPEED, 1)
					
					--make blind
					Spring.SetUnitSensorRadius(unitID, 'los', 0)
					Spring.SetUnitSensorRadius(unitID, 'airLos', 0)
				end
				
				--heal unit twice as fast when burrowed
				local autoheal = ud.idleAutoHeal * 30 / 16
				spSetUnitHealth(unitID, spGetUnitHealth(unitID) + autoheal )
				
			elseif burrowed == 0 then
				if burrow_crusts[unitID] then

					--shoot again
					for i,w in ipairs(ud.weapons) do
						local origReload = WeaponDefs[w.weaponDef].reload
						spSetUnitWeaponState(unitID, i-1, {reloadTime = origReload, reloadState = origReload } )
					end
					
					--move again
				--	local origSpeed = ud.speed * COBRATIO
				--	spSetUnitCOBValue(unitID, MAX_SPEED, origSpeed )
					
					--see again
					local los = Spring.GetUnitSensorRadius(unitID, 'los')
					local airlos = Spring.GetUnitSensorRadius(unitID, 'airLos')
					local los		= ud.losRadius*16
					local airlos 	= ud.airLosRadius*16 
					Spring.SetUnitSensorRadius(unitID, 'los', los)
					Spring.SetUnitSensorRadius(unitID, 'airLos', airlos)
					
					--decloak
					Spring.SetUnitCloak(unitID, false)
					Spring.SetUnitStealth(unitID, false)
					
					--lock other units again
					Spring.SetUnitBlocking(unitID, true)					
											
					--remove crust
					Spring.DestroyUnit(burrow_crusts[unitID])
					burrow_crusts[unitID] = nil
				end
									
			end
			--end burrowed
				]]
			
		end
	end
	
end

--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
--SYNCED
else
--UNSYNCED
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
--UNSYNCED
end
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
