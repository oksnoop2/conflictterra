function gadget:GetInfo()
    return {
        name    = "KTAI",
        desc    = "test ai",
        author  = "knorke",
        date    = "Nov 2010",
        license = "Public Horse",
        layer   = 82,
        enabled = true
    }
end

local resource_name = {}
local myTeam = nil
local myMinerCount = 0

function gadget:Initialize()	
for _,t in ipairs(Spring.GetTeamList()) do
        local _,_,_,ai,side = Spring.GetTeamInfo(t)
        if Spring.GetTeamLuaAI(t) == gadget:GetInfo().name then
            ---log(t, " assigned to "..gadget:GetInfo().name)
            local pos = {}
            local home_x,home_y,home_z = Spring.GetTeamStartPosition(t)
			myTeam = t
		end
    end
if (myTeam == nil) then 
	Spring.Echo ("KTAI: not used, bye bye.")
	gadgetHandler:RemoveGadget() 
	return
end
Spring.Echo ("KTAI: Hello again! I am on Team: " .. myTeam)
make_resource_name_table ()
end

function gadget:GameStart()
    -- Initialise AI for all teams that are set to use it
    for _,t in ipairs(Spring.GetTeamList()) do
        local _,_,_,ai,side = Spring.GetTeamInfo(t)
        if Spring.GetTeamLuaAI(t) == gadget:GetInfo().name then
            ---log(t, " assigned to "..gadget:GetInfo().name)
            local pos = {}
            local home_x,home_y,home_z = Spring.GetTeamStartPosition(t)
			myTeam = t
		end
    end
Spring.Echo ("KTAI: Hey! I am on Team: " .. myTeam)
end


function gadget:UnitFinished(unitID, unitDefID, teamID)
	if (teamID ~= myTeam) then return end
	Spring.Echo ("KTAI: hab ne neue unit!")
	local unitDef = UnitDefs[unitDefID]
	if (unitDef.name == "bmetaltruck") then
		Spring.GiveOrderToUnit(unitID,31210,{UnitDefNames["bmetaltruckdepot"].id},{})	-- morphen
		return
	end			
	
	

	if (unitDef.name == "bprimarycruiser") then
		--Spring.GiveOrderToUnit(unitID, UnitDefNames["bminer"].id, {1,2,3}, {})  -- bauen
		local resid, tx, ty,tz,d = nearest_res_from_unit (unitID)
		if (tx and ty and tz) then 
		--	Spring.GiveOrderToUnit(unitID,31210,{UnitDefNames["bprimarycruiserbase"].id},{})	-- morphen
		--	Spring.Echo ("moving to" .. tx .. " " .. tz)	
		--	Spring.GiveOrderToUnit(unitID, CMD.MOVE , {tx+100, ty, tz  }, {}) -- bewegen
			---Spring.GiveOrderToUnit(unitID, CMD.MOVE , {tx+100, ty+400, tz  }, {"shift"}) -- bewegen
		end
	end	
end	



function gadget:GameFrame(frame)
	if (frame % 32 ~=0) then return end
		
	
	
	if (myTeam == nil) then return end
	local all_units = Spring.GetTeamUnits (myTeam)
	if (all_units == nil) then return end
	
	if (frame % 64 ==0) then
		myMinerCount = 0
		--eigene miners zählen
			for i,unit in pairs(all_units) do
				local udID =Spring.GetUnitDefID(unit)
				if (udID) then 
					local uDef = UnitDefs [udID]
					if (uDef.name == "bminer") then myMinerCount=myMinerCount+1 end 
				end
			end
		--Spring.Echo ("habe .. " .. myMinerCount .. " Miners")
	end

	for i,unit in pairs(all_units) do
			--Spring.Echo ("hey ho unit " ..unit)	
			local udID =Spring.GetUnitDefID(unit)
				if (udID) then
				--	Spring.Echo ("GameFrame  udID="..udID)
					local uDef = UnitDefs [udID]
					if (uDef.name == "bprimarycruiserbase") then
						local resid, tx, ty,tz,d = nearest_res_from_unit (unit)	
						if (d > 500) then
							--Spring.Echo ("GameFrame  flagship near minerals wurde zum ->" .. UnitDefNames["bprimarycruiserbase"].id)
							Spring.GiveOrderToUnit(unit,31210,{UnitDefNames["bprimarycruiser"].id},{})	-- morphen
							Spring.GiveOrderToUnit(unit, CMD.MOVE , {tx+100, ty, tz  }, {"shift"}) -- bewegen
						else
							if (myMinerCount < 25) then
								Spring.GiveOrderToUnit(unit, -UnitDefNames["bminer"].id, {}, {}) --bauen
							end
						end
					end					
					
					if (uDef.name == "bprimarycruiser") then
						--Spring.Echo ("iam a flagship")
						local resid, tx, ty,tz,d = nearest_res_from_unit (unit)	
						if (d < 500) then
							--Spring.Echo ("GameFrame  flagship near minerals wurde zum ->" .. UnitDefNames["bprimarycruiserbase"].id)
							--Spring.Echo ("flagship landing")
							Spring.GiveOrderToUnit(unit,31210,{UnitDefNames["bprimarycruiserbase"].id},{})	-- morphen
						else
							--Spring.Echo ("flagship moving")
							Spring.GiveOrderToUnit(unit, CMD.MOVE , {tx+100, ty, tz  }, {}) -- bewegen
						end			
					end
				end
			
		end
end

	
--function gadget:UnitIdle(unitID, unitDefID, teamID)
--	if (teamID ~= myTeam) then return end
--	local unitDef = UnitDefs[unitDefID]
--	Spring.Echo ("unit idle:" .. unitID .. "   " .. unitDef.name)
--	if (unitDef.name == "bprimarycruiser") then
--		local resid, tx, ty,tz,d = nearest_res_from_unit (unitID)	
--		if (d < 500) then
--		Spring.GiveOrderToUnit(unitID,31210,{UnitDefNames["bprimarycruiserbase"].id},{})	-- morphen		
--		end
--	end	
--end

--return: resid, resx, resy, resz, distance
function nearest_res_from_unit (uID)
	local nearest_resID = nil
	local nearest_res_distance = 9999999999
	local nearest_unmined_res = nil
	local nearest_unmined_res_distance = 9999999999
	local x,y,z = Spring.GetUnitPosition(uID)
	res=Spring.GetUnitsInCylinder (x,z, 5000, Spring.GetGaiaTeamID())
	if (res == nil) then return nil end	--no near units at all :/
	for i in pairs (res) do
		if (is_resource_type (Spring.GetUnitDefID(res[i])) == true) then
			local d = Spring.GetUnitSeparation (uID, res[i])
			if (d < nearest_res_distance) then
				nearest_res_distance = d
				nearest_resID = res[i]
			end
		end
	end
	if (nearest_resID~=nil) then 		
		local rx,ry,rz=Spring.GetUnitPosition(nearest_resID)
		return nearest_resID, rx,ry,rz, nearest_res_distance 
		else return nil 
	end
end



function is_resource_type (unitDefID)
	if (unitDefID == nil) then return false end
	local unitDef = UnitDefs[unitDefID]
	if (unitDef == nil) then return false end
    for schluessel, wert in pairs(resource_name) do                            
		if (wert == unitDef.name) then return true end
	end	
	--if (unitDef.name == resource_name) then return true end
	return false
end


function make_resource_name_table ()
if (debug) then Spring.Echo ("KTAI: looking for mineable unitdefs") end
	for id,unitDef in pairs(UnitDefs) do
		local cp = UnitDefs[id].customParams
		if (cp) then
			if (cp.is_mineable) then
				local resname = unitDef.name
				if (debug) then Spring.Echo ("KTAI: found mineable resource:" .. resname) end
				table.insert (resource_name, resname)
			end
		end
	end
end