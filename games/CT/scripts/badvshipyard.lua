local dock = piece "dock"
local crane = piece "crane"
local hook = piece "hook"
local nano = piece "nano"
local pad = piece "pad"

function script.Create(unitID)
end

local function crane_animation()
	SetSignalMask(1)
	while true do
		Turn (crane, y_axis, 0.75, 1)
		WaitForTurn (crane, y_axis)
		Sleep(30)
		Move (hook, y_axis, -25, 10)
		WaitForMove (hook, y_axis)
		Sleep(30)
		Move (hook, y_axis, 0, 10)
		WaitForMove (hook, y_axis)
		Sleep(30)

		Turn (crane, y_axis, -0.75, 1)
		WaitForTurn (crane, y_axis)
		Sleep(30)
		Move (hook, y_axis, -25, 10)
		WaitForMove (hook, y_axis)
		Sleep(30)
		Move (hook, y_axis, 0, 10)
		WaitForMove (hook, y_axis)
		Sleep(30)
	end
end

local function crane_stop()
	Signal(1)
end

function script.QueryBuildInfo() return pad end

function script.QueryNanoPiece() return nano end

function script.Activate()
	SetUnitValue(COB.YARD_OPEN, 1)
	SetUnitValue(COB.INBUILDSTANCE, 1)
	SetUnitValue(COB.BUGGER_OFF, 1)
	return 1
end

function script.StartBuilding()
	StartThread(crane_animation)
end

function script.Deactivate()
	SetUnitValue(COB.YARD_OPEN, 0)
	SetUnitValue(COB.INBUILDSTANCE, 0)
	SetUnitValue(COB.BUGGER_OFF, 0)
	return 0
end

function script.StopBuilding()
	StartThread(crane_stop)
end

function script.Killed(recentDamage, maxHealth)
	return 0
end
