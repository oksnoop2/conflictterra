local waist = piece "waist"

local body = piece "body"
local camera = piece "camera"
local nano = piece "nano"

local lthigh = piece "leftthigh"
local lshin = piece "leftshin"
local lfoot = piece "leftfoot"

local rthigh = piece "rightthigh"
local rshin = piece "rightshin"
local rfoot = piece "rightfoot"

local SIG_AIM = 1
local SIG_BUILD = 2
local walk_go = 4

	local function walk()
		SetSignalMask(walk_go)
		Move (waist, y_axis, 4, 2)
		while (true) do
	                Turn( lshin, x_axis, -0.75, 4 )
	                Turn( lthigh, x_axis, 0.5, 4 )
			Turn( lfoot, x_axis, 0, 4 )
	               
	                Turn( rshin, x_axis, 2, 4 )
	                Turn( rthigh, x_axis, -1, 4 )
			Turn( rfoot, x_axis, 0, 4 )
	               
	                WaitForTurn( lshin, x_axis )
	                WaitForTurn( lthigh, x_axis )
	                WaitForTurn( lfoot, x_axis )
	                WaitForTurn( rshin, x_axis )
	                WaitForTurn( rthigh, x_axis )
	                WaitForTurn( rfoot, x_axis )
	                Sleep(1)
	               
	                Turn( lshin, x_axis, 2, 4 )
	                Turn( lthigh, x_axis, -1, 4 )
			Turn( lfoot, x_axis, 0, 4 )
	               
	                Turn( rshin, x_axis, -0.75, 4 )
	                Turn( rthigh, x_axis, 0.5, 4 )
			Turn( rfoot, x_axis, 0, 4 )

	                WaitForTurn( lshin, x_axis )
	                WaitForTurn( lthigh, x_axis )
	                WaitForTurn( lfoot, x_axis )
	                WaitForTurn( rshin, x_axis )
	                WaitForTurn( rthigh, x_axis )
	                WaitForTurn( rfoot, x_axis )
	                Sleep(1)
	        end
	end

	local function stop_walk()
	        Signal(walk_go)
		Move( waist, y_axis, 0, 4 )

		Turn( lshin, x_axis, 0, 2 )
		Turn( lthigh, x_axis, 0, 2 )
		Turn( lfoot, x_axis, 0, 2 )
	       
	        Turn( rshin, x_axis, 0, 2 )
	        Turn( rthigh, x_axis, 0, 2 )
		Turn( rfoot, x_axis, 0, 2 )

	end
	
	function script.StartMoving()
	        StartThread(walk)
	end
	
	function script.StopMoving()
	        StartThread(stop_walk)
	end

	local function camera_spins()
		while (true) do
			Turn( camera, z_axis, 1, 1 )
			WaitForTurn( camera, z_axis )
			Sleep(1000)
			Move( camera, z_axis, -2, 5 )
			WaitForMove( camera, z_axis )
			Sleep(1000)
			Turn( camera, z_axis, -1, 1 )
			WaitForTurn( camera, z_axis )
			Sleep(1000)
			Move( camera, z_axis, 0, 5 )
			WaitForMove( camera, z_axis )
			Sleep(1000)
			Turn( camera, z_axis, 0, 1 )
			WaitForTurn( camera, z_axis )
			Sleep(1000)
		end
	end

function script.Create(unitID)
	StartThread(camera_spins)
end

function script.StartBuilding(heading, pitch)
	Signal(SIG_BUILD)
	SetSignalMask(SIG_BUILD)
        Turn(body, y_axis, heading, math.rad(160))
        WaitForTurn(body, y_axis)
	SetUnitValue(COB.INBUILDSTANCE, 1)
	return 1
end
function script.Querybody() return nano end
function script.AimFromWeapon() return body end

function script.StopBuilding()
   Signal(SIG_BUILD)
   SetSignalMask(SIG_BUILD)
   SetUnitValue(COB.INBUILDSTANCE, 0)
        Turn(body, y_axis, 0, math.rad(160))
        WaitForTurn(body, y_axis)
   Sleep(1)
   return 0
end
function script.AimFromWeapon() return nano end

function script.QueryWeapon() return nano end

function script.QueryNanoPiece() return nano end

function script.Killed(recentDamage, maxHealth)
   return 0
end