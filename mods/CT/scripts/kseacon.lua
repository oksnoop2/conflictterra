local hull = piece "hull"
local bacarm = piece "bacarm"
local forarm = piece "forarm"
local nano = piece "nano"

local SIG_AIM = 2
local SIG_BUILD = 4

function script.Create(unitID)
end

function script.StartBuilding(heading, pitch)
	Signal(SIG_BUILD)
	SetSignalMask(SIG_BUILD)
	SetUnitValue(COB.INBUILDSTANCE, 1)
	Move( forarm, x_axis, 10, 5 )
	WaitForMove( forarm, x_axis )
		while (true) do
	                Move( forarm, x_axis, 0, 5 )
	                Move( bacarm, x_axis, 10, 5 )

			WaitForMove( forarm, x_axis )
			WaitForMove( bacarm, x_axis )

			Move (forarm, x_axis, 10, 5 )
			Move (bacarm, x_axis, 0, 5 )

			WaitForMove( forarm, x_axis )
			WaitForMove( bacarm, x_axis )
	                Sleep(1)
	        end
	return 1
end
function script.Querybody() return nano end
function script.AimFromWeapon() return hull end

function script.StopBuilding()
	Signal(SIG_BUILD)
	SetSignalMask(SIG_BUILD)
	SetUnitValue(COB.INBUILDSTANCE, 0)
	Move (forarm, x_axis, 0, 5)
	Move (forarm, x_axis, 0, 5)
	Sleep(1)
	return 0
end

function script.AimFromWeapon() return nano end

function script.QueryWeapon() return nano end

function script.QueryNanoPiece() return nano end

function script.Killed(recentDamage, maxHealth)
   return 0
end