local waist = piece "waist"

local body = piece "body"

local larm = piece "larm"
local lforearm = piece "lforearm"
local lfxflare = piece "lfxflare"

local lgrabup = piece "lgrabup"
local lgrabfor = piece "lgrabfor"
local lgrabber = piece "lgrabber"

local rarm = piece "rarm"
local rforearm = piece "rforearm"
local rfxflare = piece "rfxflare"

local rgrabup = piece "rgrabup"
local rgrabfor = piece "rgrabfor"
local rgrabber = piece "rgrabber"

local nano = piece "nano"

local lthigh = piece "lthigh"
local lshin = piece "lshin"
local lfoot = piece "lfoot"

local rthigh = piece "rthigh"
local rshin = piece "rshin"
local rfoot = piece "rfoot"

local SIG_AIM = 2
local SIG_BUILD = 4
local walk_go = 8

local ct_weldingsparks = SFX.CEG

local function sparks()
	while true do
		EmitSfx(lfxflare, ct_weldingsparks)
		EmitSfx(rfxflare, ct_weldingsparks)
		Sleep(1)
	end
end

local function arms()
	while true do
		Turn(lgrabup, x_axis, 0, 2)
		Turn(lgrabfor, x_axis, 0, 2)
		Turn(lgrabber, x_axis, 0, 2)

		WaitForTurn(lgrabup, x_axis)
		WaitForTurn(lgrabfor, x_axis)
		WaitForTurn(lgrabber, x_axis)
		Sleep(1)

		Turn(lgrabup, x_axis, -0.75, 2)
		Turn(rgrabup, x_axis, 0, 2)
		Turn(lgrabfor, x_axis, 1.5, 2)
		Turn(rgrabfor, x_axis, 0, 2)
		Turn(lgrabber, x_axis, 0.75, 2)
		Turn(rgrabber, x_axis, 0, 2)

		WaitForTurn(lgrabup, x_axis)
		WaitForTurn(lgrabfor, x_axis)
		WaitForTurn(lgrabber, x_axis)
		WaitForTurn(rgrabup, x_axis)
		WaitForTurn(rgrabfor, x_axis)
		WaitForTurn(rgrabber, x_axis)
		Sleep(1)

		Turn(lgrabup, x_axis, 0, 2)
		Turn(rgrabup, x_axis, -0.75, 2)
		Turn(lgrabfor, x_axis, 0, 2)
		Turn(rgrabfor, x_axis, 1.5, 2)
		Turn(lgrabber, x_axis, 0, 2)
		Turn(rgrabber, x_axis, 0.75, 2)

		WaitForTurn(lgrabup, x_axis)
		WaitForTurn(lgrabfor, x_axis)
		WaitForTurn(lgrabber, x_axis)
		WaitForTurn(rgrabup, x_axis)
		WaitForTurn(rgrabfor, x_axis)
		WaitForTurn(rgrabber, x_axis)
		Sleep(1)
	end
end

local function armsdone()
	Turn(lgrabup, x_axis, -0.75, 100)
	Turn(rgrabup, x_axis, -0.75, 100)
	Turn(lgrabfor, x_axis, 1.5, 100)
	Turn(rgrabfor, x_axis, 1.5, 100)
	Turn(lgrabber, x_axis, 0.75, 100)
	Turn(rgrabber, x_axis, 0.75, 100)
end

	local function walk()
		SetSignalMask(walk_go)
		Move (waist, y_axis, 4, 2)
		while (true) do
	                Turn( lshin, x_axis, -0.75, 3 )
	                Turn( lthigh, x_axis, 0.5, 3 )
			Turn( lfoot, x_axis, 0, 3 )
	               
	                Turn( rshin, x_axis, 2, 3 )
	                Turn( rthigh, x_axis, -1, 3 )
			Turn( rfoot, x_axis, 0, 3 )

	                Turn( lforearm, x_axis, -0.5, 2 )
	                Turn( larm, x_axis, -0.5, 2 )
	               
	                Turn( rforearm, x_axis, -0.5, 2 )
	                Turn( rarm, x_axis, 0.5, 2 )
	               
	                WaitForTurn( lshin, x_axis )
	                WaitForTurn( lthigh, x_axis )
	                WaitForTurn( lfoot, x_axis )
	                WaitForTurn( rshin, x_axis )
	                WaitForTurn( rthigh, x_axis )
	                WaitForTurn( rfoot, x_axis )

	                WaitForTurn( larm, x_axis )
	                WaitForTurn( lforearm, x_axis )
	                WaitForTurn( rarm, x_axis )
	                WaitForTurn( rforearm, x_axis )
	                Sleep(1)
	               
	                Turn( lshin, x_axis, 2, 3 )
	                Turn( lthigh, x_axis, -1, 3 )
			Turn( lfoot, x_axis, 0, 3 )
	               
	                Turn( rshin, x_axis, -0.75, 3 )
	                Turn( rthigh, x_axis, 0.5, 3 )
			Turn( rfoot, x_axis, 0, 3 )

	                Turn( lforearm, x_axis, -0.5, 2 )
	                Turn( larm, x_axis, 0.5, 2 )
	               
	                Turn( rforearm, x_axis, -0.5, 2 )
	                Turn( rarm, x_axis, -0.5, 2 )

	                WaitForTurn( lshin, x_axis )
	                WaitForTurn( lthigh, x_axis )
	                WaitForTurn( lfoot, x_axis )
	                WaitForTurn( rshin, x_axis )
	                WaitForTurn( rthigh, x_axis )
	                WaitForTurn( rfoot, x_axis )

	                WaitForTurn( larm, x_axis )
	                WaitForTurn( lforearm, x_axis )
	                WaitForTurn( rarm, x_axis )
	                WaitForTurn( rforearm, x_axis )
	                Sleep(1)
	        end
	end

	local function stop_walk()
	        Signal(walk_go)
		Move( waist, y_axis, 0, 4 )

		Turn( lshin, x_axis, 0, 3 )
		Turn( lthigh, x_axis, 0, 3 )
		Turn( lfoot, x_axis, 0, 3 )
	       
	        Turn( rshin, x_axis, 0, 3 )
	        Turn( rthigh, x_axis, 0, 3 )
		Turn( rfoot, x_axis, 0, 3 )

	end
	
	function script.StartMoving()
	        StartThread(walk)
	end
	
	function script.StopMoving()
	        StartThread(stop_walk)
	end

function script.Create(unitID)
	Turn(lgrabup, x_axis, -0.75, 100)
	Turn(rgrabup, x_axis, -0.75, 100)
	Turn(lgrabfor, x_axis, 1.5, 100)
	Turn(rgrabfor, x_axis, 1.5, 100)
	Turn(lgrabber, x_axis, 0.75, 100)
	Turn(rgrabber, x_axis, 0.75, 100)
end

function script.StartBuilding(heading, pitch)
	Signal(SIG_BUILD)
	SetSignalMask(SIG_BUILD)
        Turn(body, y_axis, heading, math.rad(90))
        Turn(larm, x_axis, -0.75, math.rad(160))
        Turn(rarm, x_axis, -0.75, math.rad(160))
        Turn(lforearm, x_axis, -0.85, math.rad(160))
        Turn(rforearm, x_axis, -0.85, math.rad(160))
        WaitForTurn(body, y_axis)
        WaitForTurn(larm, x_axis)
        WaitForTurn(rarm, x_axis)
        WaitForTurn(lforearm, x_axis)
        WaitForTurn(rforearm, x_axis)
	StartThread(arms)
	StartThread(sparks)
	SetUnitValue(COB.INBUILDSTANCE, 1)
	return 1
end
function script.Querybody() return nano end
function script.AimFromWeapon() return body end

function script.StopBuilding()
   Signal(SIG_BUILD)
   SetSignalMask(SIG_BUILD)
   SetUnitValue(COB.INBUILDSTANCE, 0)
        Turn(body, y_axis, 0, math.rad(90))
        Turn(larm, x_axis, 0, math.rad(160))
        Turn(rarm, x_axis, 0, math.rad(160))
        Turn(lforearm, x_axis, 0, math.rad(160))
        Turn(rforearm, x_axis, 0, math.rad(160))
        WaitForTurn(body, y_axis)
        WaitForTurn(larm, x_axis)
        WaitForTurn(rarm, x_axis)
        WaitForTurn(lforearm, x_axis)
        WaitForTurn(rforearm, x_axis)
	StartThread(armsdone)
   Sleep(1)
   return 0
end
function script.AimFromWeapon() return nano end

function script.QueryWeapon() return nano end

function script.QueryNanoPiece() return nano end

function script.Killed(recentDamage, maxHealth)
   return 0
end