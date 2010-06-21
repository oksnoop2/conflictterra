local ground = piece "ground"
local ldoor = piece "ldoor"
local rdoor = piece "rdoor"

local building = piece "building"
local nano = piece "nano"
local pad = piece "pad"

local SIG_OPEN = 1
local SIG_CLOSE = 2

local function create_animation()
	Move(building, y_axis, -40, 10)
	Sleep(30)
	Turn(ldoor, z_axis, -1.55, 1)
	Turn(rdoor, z_axis, 1.55, 1)
	WaitForMove(building, y_axis)
	WaitForTurn(ldoor, z_axis)
	WaitForTurn(rdoor, z_axis)
end

function script.Create(unitID)
	StartThread(create_animation)
end

local function build_open()
	SetSignalMask(SIG_OPEN)
	Signal(SIG_CLOSE)
	Move(building, y_axis, 0, 10)
	Sleep(30)
	Turn(ldoor, z_axis, 0, 1)
	Turn(rdoor, z_axis, 0, 1)
	WaitForMove(building, y_axis)
	WaitForTurn(ldoor, z_axis)
	WaitForTurn(rdoor, z_axis)
end

local function build_close()
	SetSignalMask(SIG_CLOSE)
	Signal(SIG_OPEN)
	Sleep(2500)
	Move(building, y_axis, -40, 10)
	Sleep(30)
	Turn(ldoor, z_axis, -1.55, 1)
	Turn(rdoor, z_axis, 1.55, 1)
	WaitForMove(building, y_axis)
	WaitForTurn(ldoor, z_axis)
	WaitForTurn(rdoor, z_axis)
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
	StartThread(build_open)
end

function script.Deactivate()
   SetUnitValue(COB.YARD_OPEN, 0)
   SetUnitValue(COB.INBUILDSTANCE, 0)
   SetUnitValue(COB.BUGGER_OFF, 0)
   return 0
end

function script.StopBuilding()
	StartThread(build_close)
end

function script.Killed(recentDamage, maxHealth)
   return 0
end
