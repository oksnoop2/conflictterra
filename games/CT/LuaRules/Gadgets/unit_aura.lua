--------------------------------------------------------------------------------
--------------------------------------------------------------------------------

function gadget:GetInfo()
   return {
      name      = "Aura",
      desc      = "Give certain units an aura that affects units around them.",
      author    = "CarRepairer",
      date      = "2009-07-01",
      license   = "GNU GPL, v2 or later",
      layer     = 0,
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
local spAreUnitsAllied        	= Spring.AreUnitsAllied
local spGetUnitTeam        		= Spring.GetUnitTeam
local spSetUnitRulesParam  		= Spring.SetUnitRulesParam
local spGetUnitRulesParam  		= Spring.GetUnitRulesParam
local spGetUnitHealth  			= Spring.GetUnitHealth
local spSetUnitHealth  			= Spring.SetUnitHealth
local spGetUnitStates  			= Spring.GetUnitStates

local spSetUnitWeaponState  = Spring.SetUnitWeaponState

local spGetUnitsInCylinder 	= Spring.GetUnitsInCylinder
local spGetUnitPosition 	= Spring.GetUnitPosition

local spSpawnCEG 				= Spring.SpawnCEG

local random	= math.random
local echo = Spring.Echo

if not GG.attUnits then
	GG.attUnits = {}
end

--------------------------------------------------------------------------------
--------------------------------------------------------------------------------


local auraDefs = {
	--[[
	['Frenzy Aura'] = {
		unittypes = {
			[UnitDefNames['tc_lich'].id] = 200,
			[UnitDefNames['tc_lich_sum'].id] = 200,
		},
		ally = true,
		aceg = 'AURA_FRENZY_CASTING',
		ceg = 'AURA_FRENZY',
		req = UnitDefNames['tc_totem_red'].id,
		encName= 'Frenzy',
	},
	]]
	['Heal Aura'] = {
		unittypes = {
			[UnitDefNames['bgeneraltank'].id] = 500,
		},
		ally = true,
		aceg = '',
		ceg = 'ct_aura_health',
		req = UnitDefNames['bgeneraltank'].id,
		encName= 'Regeneration',
	},
	--[[
	['Focus Aura'] = {
		unittypes = {
			[UnitDefNames['euf_priest'].id] = 250,
		},
		ally = true,
		aceg = 'AURA_FOCUS_CASTING',
		ceg = 'AURA_FOCUS',
		req = UnitDefNames['euf_church'].id,
		encName= 'Focus',
	},
	['Thorns Aura'] = {
		unittypes = {
			[UnitDefNames['euf_paladin'].id] = 250,
		},
		ally = false,
		aceg = 'AURA_CURSE_CASTING',
		ceg = 'AURA_CURSE',
		req = UnitDefNames['euf_sanctum'].id,
		encName= 'Thorns',
	},		
	['Curse Aura'] = {
		unittypes = {
			[UnitDefNames['tc_witch'].id] = 350,
			[UnitDefNames['tc_witch_shield'].id] = 350,
		},
		ally = false,
		aceg = 'AURA_CURSE_CASTING',
		ceg = 'AURA_CURSE',
		req = UnitDefNames['tc_totem_black'].id,
		encName= 'Cursed',
	},
	]]
}

local auraUnits = {
	['Heal Aura'] = {},
--	['Focus Aura'] = {},	
--	['Frenzy Aura'] = {},
--	['Thorns Aura'] = {},		
--	['Curse Aura'] = {},	
}
local auraUnitsByUnit = {}
local encUnits = {}
local reqs = {}

local function addAura(auraType, auraDef, unitID, unitDefID, teamID)
	auraUnits[auraType][unitID] = nil
	spSetUnitRulesParam(unitID,'has_'..auraType,0)
	if reqs[teamID][auraType] ~= 0 then
		local range = auraDef.unittypes[unitDefID]
		if range then
			auraUnits[auraType][unitID] = range
			spSetUnitRulesParam(unitID,'has_'..auraType,1)
			GG.attUnits[unitID] = true
			encUnits[unitID] = true
		end
	end
	
end
			
local function updateAuraUnits(teamID)
	for _, unitID in ipairs(Spring.GetTeamUnits(teamID)) do
		local unitDefID = spGetUnitDefID(unitID)
		
		for auraType, auraDef in pairs(auraDefs) do
			addAura(auraType, auraDef, unitID, unitDefID, teamID)
		end
	end
end


function gadget:Initialize()
	local allTeams = Spring.GetTeamList()
	for _,team in ipairs(allTeams) do
		reqs[team] = reqs[team] or {}
		for auraType, auraDef in pairs(auraDefs) do
			reqs[team][auraType] = 0
		end
	end
	
	for _, unitID in ipairs(Spring.GetAllUnits()) do
		local teamID = spGetUnitTeam(unitID)
		local unitDefID = spGetUnitDefID(unitID)
		gadget:UnitFinished(unitID, unitDefID, teamID)
	end
	
	
end

function gadget:UnitFinished(unitID, unitDefID, teamID)
	for auraType, auraDef in pairs(auraDefs) do
		--echo (unitDefID, auraDef.req)
		if unitDefID == auraDef.req then
			reqs[teamID][auraType] = reqs[teamID][auraType] + 1
			if reqs[teamID][auraType] == 1 then
				updateAuraUnits(teamID)
			end
		end
		
		addAura(auraType, auraDef, unitID, unitDefID, teamID)
	end
end

function gadget:UnitDestroyed(unitID, unitDefID, teamID)
	for auraType,auraDef in pairs(auraDefs) do
		if unitDefID == auraDef.req then
			reqs[teamID][auraType] = reqs[teamID][auraType] - 1
			if reqs[teamID][auraType] == 0 then
				updateAuraUnits(teamID)
			end
		end
		
		auraUnits[auraType][unitID] = nil
		spSetUnitRulesParam(unitID,'has_'..auraType,0)
		GG.attUnits[unitID] = true
	end
	encUnits[unitID] = nil

end

function gadget:UnitTaken(unitID, unitDefID, oldTeamID, teamID)
	local _,_,_,_,buildProgress = Spring.GetUnitHealth(unitID)
	if buildProgress == 1 then
		gadget:UnitDestroyed(unitID, unitDefID, oldTeamID)
		gadget:UnitFinished(unitID, unitDefID, teamID)
	end
	
end


function gadget:GameFrame(f)
	
	if f % 32 < .1 then
	
		for eUnitID, _ in pairs(encUnits) do
			for auraType, _ in pairs(auraUnits) do
				spSetUnitRulesParam(eUnitID,auraType,0)
				--[[
				local eudid = spGetUnitDefID(eUnitID)
				if eudid then
					for i,w in ipairs(UnitDefs[eudid].weapons) do
						local origReload = WeaponDefs[w.weaponDef].reload
						local origAcc = WeaponDefs[w.weaponDef].accuracy
						spSetUnitWeaponState(eUnitID, i-1, {reloadTime = origReload, accuracy = origAcc} )
					end
				else
					encUnits[eUnitID] = nil
				end
				--]]
			end
		end
	
		for auraType, units in pairs(auraUnits) do
			local alliedAura = auraDefs[auraType].ally
			
			for unitID, range in pairs(units) do
				local alliance = Spring.GetUnitAllyTeam(unitID)
	
				local x, y, z = spGetUnitPosition(unitID)
				if x and alliance then
					local alliedTeamList = Spring.GetTeamList(alliance)
					
					if alliedAura then
						for _,team in ipairs(alliedTeamList) do
							local eUnits = spGetUnitsInCylinder(x,z, range, team)
							for _,eUnitID in ipairs(eUnits) do
								if eUnitID ~= unitID then
									spSetUnitRulesParam(eUnitID,auraType,1)
									GG.attUnits[eUnitID] = true
									encUnits[eUnitID] = auraType
									--[[
									local eudid = spGetUnitDefID(eUnitID)
									
									if eudid then
										if auraType == 'Frenzy Aura' then
											for i,w in ipairs(UnitDefs[eudid].weapons) do
												local origReload = WeaponDefs[w.weaponDef].reload
												local origAcc = WeaponDefs[w.weaponDef].accuracy
												
												local slowLevel = spGetUnitRulesParam(eUnitID,"slow") or 0
												local curReload = origReload * (1 + slowLevel)
												spSetUnitWeaponState(eUnitID, i-1, {reloadTime = curReload / 2, accuracy = origAcc * 3 } )
											end
										elseif auraType == 'Heal Aura' then
											spSetUnitHealth(eUnitID, spGetUnitHealth(eUnitID)+10 )
										end
									end
									--]]
								end
							end
						end
					else
						local allTeams = Spring.GetTeamList()
						for _,team in ipairs(allTeams) do
							local _,_,_,_,_,curAlliance = Spring.GetTeamInfo(team)
							if curAlliance ~= alliance then
								local eUnits = spGetUnitsInCylinder(x,z, range, team)
								for _,eUnitID in ipairs(eUnits) do
									if eUnitID ~= unitID then
										spSetUnitRulesParam(eUnitID,auraType,1)
										GG.attUnits[eUnitID] = true
										encUnits[eUnitID] = true
										--[[
										local eudid = spGetUnitDefID(eUnitID)
										
										if eudid then
											if auraType == 'Curse Aura' then
												for i,w in ipairs(UnitDefs[eudid].weapons) do
													local origAcc = WeaponDefs[w.weaponDef].accuracy
													spSetUnitWeaponState(eUnitID, i-1, {accuracy = origAcc * 5 } )
												end
											end
										end
										--]]
									end
								end
							end
						end
						
					end
				end
			
			end
		end

		--todo: move this into Attributes gadget
		for unitID, _ in pairs(encUnits) do
			local eud = spGetUnitDefID(unitID) and UnitDefs[spGetUnitDefID(unitID)]
			if eud then
				local tooltip = eud.tooltip
				for auraType, _ in pairs(auraUnits) do
					if spGetUnitRulesParam(unitID,'has_'..auraType) == 1 then
						tooltip = tooltip ..' ('.. auraType ..')'
					end
					if spGetUnitRulesParam(unitID,auraType) == 1 then
						tooltip = tooltip ..' *'..auraDefs[auraType].encName ..'*'
					end
				end
				Spring.SetUnitTooltip(unitID,eud.humanName .. " - " .. tooltip)	
			end
			
		end

		
    end
	if f % 16 < .1 then
		local cx, cy, cz = -10+20*random(), -10+30*random(), -10+20*random()
		for unitID, _ in pairs(encUnits) do
			for auraType, _ in pairs(auraUnits) do
				if spGetUnitRulesParam(unitID,auraType) == 1 then
					local states = spGetUnitStates(unitID)
					if not states.cloak then
						local x, y, z = spGetUnitPosition(unitID)
						spSpawnCEG(auraDefs[auraType].ceg, x+cx, y+cy, z+cz)
					end
				end
			end
		end
		for auraType, units in pairs(auraUnits) do
			for unitID, range in pairs(units) do
				local x, y, z = spGetUnitPosition(unitID)
				spSpawnCEG(auraDefs[auraType].aceg, x, y, z)
			end
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
