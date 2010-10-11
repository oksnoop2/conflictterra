--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
--
--  file:    Pay_Up_Front.lua
--  brief:   Pay the total cost of the unit before construction starts.
--  author:  Argh, Oksnoop2

--------------------------------------------------------------------------------
--------------------------------------------------------------------------------

function gadget:GetInfo()
	return {
		name      = "Pay_Up_Front",
		desc      = "Pay the total cost of the unit before construction starts.",
		author    = "Argh, Oksnoop2",
		date      = "October, 2010",
		license   = "Public Domain",
		layer     = 0,
		enabled   = true,
	}
end

--------------------------------------------------------------------------------
--------------------------------------------------------------------------------

function gadget:AllowCommand(u, ud, team, cmd, param, opts)
	if cmd < 0 then --we're trying to build a Unit
		cmd = cmd * -1 
-------------------------------------------------------------------------------------
local metal = Spring.GetTeamResources(team, 'metal')
local energy = Spring.GetTeamResources(team, 'energy')
local mcost = tonumber(UnitDefs[cmd].customParams.mcost)
local ecost = tonumber(UnitDefs[cmd].customParams.ecost)
-------------------------------------------------------------------------------------
	if metal >= mcost and energy >= ecost then
Spring.UseTeamResource(team,'m',mcost)
Spring.UseTeamResource(team,'m',ecost)
	return true
		else
			return false
				end
return true -- safety code, all other commands pass true here
	end