
-- Make sure to use my updated unit_morph.lua from http://springrts.com/phpbb/viewtopic.php?f=23&t=23998

local CMD_MORPH = 31210 -- This must match the one in unit_morph.lua

-- In this table, list all the trucks, and what they should deploy into:
local DeployableTrucks = {
	-- Three possible syntaxes:
	-- ["source"]={}, -- deploy source
	-- ["source"]={"target"}, -- deploy source into target
	-- ["source"]={"target",30/100}, -- deploy 30% of source into target
	-- where "source" and "target" are unitnames
	["benergytruck"]={"benergytruckdepot"},
	["baatruck"]={"baatruckturret",40/100},
	["baatruckturret"]={"baatruck",20/100},
	["bempcannon"]={"bempcannonturret",30/100},
	["bempcannonturret"]={"bempcannon",60/100},
	["bmechcruiser"]={"bmechcruiserfactory",99/100},
	["btankcruiser"]={"btankcruiserfactory",99/100},
	["baircruiser"]={"baircruiserfactory",99/100},
	["bmechcruiserfactory"]={"bmechcruiser",50/100},
	["btankcruiserfactory"]={"btankcruiser",50/100},
	["baircruiserfactory"]={"baircruiser",50/100},
}

-- Brownian movement amplitude:
local Range = 1000

function gadget:GetInfo()
	return {
		name = "Spread & Deploy",
		desc = "Spread and deploy certain units for the AI",
		author = "zwzsg",
		date = "10 september 2010",
		version = "1.2",
		license = "Free",
		layer = 0,
		enabled = false,
	}
end

if (gadgetHandler:IsSyncedCode()) then
--SYNCED

	local ManagedTrucks={}
	local DetailsTrucks={}

	function gadget:Initialize()
		ManagedTrucks={}
		for source,data in pairs(DeployableTrucks) do
			if data[1] then
				if UnitDefNames[data[1]] then
					DetailsTrucks[UnitDefNames[source].id]={UnitDefNames[data[1]].id,data[2] and (data[2]==1 and math.huge or data[2]/(1-data[2])) or nil}
				else
					Spring.Echo("\""..tostring(data[1]).."\" is not a valid unitname!")
				end
			else
				DetailsTrucks[UnitDefNames[source].id]={}
			end
		end
	end

	function gadget:UnitFinished(u,ud,team)
		local TargetData=DetailsTrucks[ud]
		if TargetData then
			local _,_,_,isAiTeam,_,_=Spring.GetTeamInfo(team)
			if isAiTeam then-- 1+ to avoid morphing the first unit
				if TargetData[2] and (1+Spring.GetTeamUnitDefCount(team,TargetData[1]))/Spring.GetTeamUnitDefCount(team,ud)>TargetData[2] then
					-- Too many morphed units already, we leave this one un-morphed
				else
					ManagedTrucks[u]={BirthFrame=Spring.GetGameFrame(),TargetDefID=TargetData[1]}
				end
			end
		end
	end

	function gadget:UnitDestroyed(u,ud,team)
		if ManagedTrucks[u] then
			ManagedTrucks[u]=nil
		end
	end

	function gadget:GameFrame(frame)
		if frame%540==0 then
			for u,v in pairs(ManagedTrucks) do
				local t=math.floor((frame-v.BirthFrame)/600)
				if t==5 then-- Deploy
					Spring.GiveOrderToUnit(u,CMD_MORPH,{v.TargetDefID},{})
					ManagedTrucks[u]=nil
				elseif t>=1 then-- Move
					local x,_,z=Spring.GetUnitPosition(u)
					x=math.random(x-Range,x+Range)
					z=math.random(z-Range,z+Range)
					y=Spring.GetGroundHeight(x,z)
					Spring.GiveOrderToUnit(u,CMD.MOVE,{x,y,z},{})
				end
			end
		end
	end

end

