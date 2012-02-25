local hull = piece "hull"
local crane = piece "crane"
local nano = piece "nano"

local SIG_AIM = 2
local SIG_BUILD = 4

local ct_weldingsparks = SFX.CEG

local function sparks()
	while true do
		EmitSfx(nano, ct_weldingsparks)
		Sleep(1)
	end
end

function script.Create(unitID)
end

function script.StartBuilding(heading, pitch)
	Signal(SIG_BUILD)
	SetSignalMask(SIG_BUILD)
        Turn(crane, y_axis, heading, math.rad(90))
        WaitForTurn(crane, y_axis)
	StartThread(sparks)
	SetUnitValue(COB.INBUILDSTANCE, 1)
	return 1
end
function script.Querybody() return nano end
function script.AimFromWeapon() return crane end

function script.StopBuilding()
   Signal(SIG_BUILD)
   SetSignalMask(SIG_BUILD)
   SetUnitValue(COB.INBUILDSTANCE, 0)
   Turn(crane, y_axis, 0, math.rad(90))
   WaitForTurn(crane, y_axis)
   Sleep(1)
   return 0
end
function script.AimFromWeapon() return nano end

function script.QueryWeapon() return nano end

function script.QueryNanoPiece() return nano end

function script.Killed(recentDamage, maxHealth)
   return 0
end