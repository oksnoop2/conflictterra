	-- $Id: movedefs.lua 3518 2008-12-23 08:46:54Z saktoth $
	--------------------------------------------------------------------------------
	--------------------------------------------------------------------------------
	--
	--  file:    moveDefs.lua
	--  brief:   move data definitions
	--
	--------------------------------------------------------------------------------
	--------------------------------------------------------------------------------
	
	local moveDefs = {

	        Engineer = {
	                footprintx = 1,
	                footprintz = 1,
	                maxwaterdepth = 30,
	                maxslope = 36,
	                crushstrength = 50,
	        },

	        LightMech = {
	                footprintx = 1,
	                footprintz = 1,
	                maxwaterdepth = 22,
	                maxslope = 36,
	                crushstrength = 50,
	        },
	
	        MedMech = {
	                footprintx = 1,
	                footprintz = 1,
	                maxwaterdepth = 22,
	                maxslope = 36,
	                crushstrength = 500,
	        },

	        HeavyMech = {
	                footprintx = 1,
	                footprintz = 1,
	                maxwaterdepth = 22,
	                maxslope = 36,
	                crushstrength = 5000,
	        },

	        LightTANK = {
	                footprintx = 1,
	                footprintz = 1,
	                maxwaterdepth = 22,
	                maxslope = 18,
	                crushstrength = 50,
	        },

	        MedTANK = {
	                footprintx = 1,
	                footprintz = 1,
	                maxwaterdepth = 22,
	                maxslope = 18,
	                crushstrength = 500,
	        },

	        HeavyTANK = {
	                footprintx = 1,
	                footprintz = 1,
	                maxwaterdepth = 22,
	                maxslope = 18,
	                crushstrength = 5000,
	        },

	        LightSHIP = {
	                footprintx = 1,
	                footprintz = 1,
	                minwaterdepth = 5,
	                crushstrength = 50,
	        },

	        MedSHIP = {
	                footprintx = 1,
	                footprintz = 1,
	                minwaterdepth = 10,
	                crushstrength = 500,
	        },

	        HeavySHIP = {
	                footprintx = 1,
	                footprintz = 1,
	                minwaterdepth = 15,
	                crushstrength = 5000,
	        },

	        LightHOVER = {
	                footprintx = 1,
	                footprintz = 1,
	                maxwaterdepth = 22,
	                maxslope = 18,
	                crushstrength = 50,
	        },

	        MedHOVER = {
	                footprintx = 1,
	                footprintz = 1,
	                maxwaterdepth = 22,
	                maxslope = 18,
	                crushstrength = 500,
	        },

	        HeavyHOVER = {
	                footprintx = 1,
	                footprintz = 1,
	                maxwaterdepth = 22,
	                maxslope = 18,
	                crushstrength = 5000,
	        },

	        SubBOAT = {
	                footprintx = 1,
	                footprintz = 1,
	                minwaterdepth = 45,
	                crushstrength = 500,
	                subMarine = 1,
	        },
	
	}
	
	--------------------------------------------------------------------------------
	--------------------------------------------------------------------------------
	
	-- convert from map format to the expected array format
	
	local array = {}
	local i = 1
	for k,v in pairs(moveDefs) do
	        array[i] = v
	        v.name = k
	        i = i + 1
	end
	
	
	--------------------------------------------------------------------------------
	--------------------------------------------------------------------------------
	
	return array
	
	--------------------------------------------------------------------------------
	--------------------------------------------------------------------------------