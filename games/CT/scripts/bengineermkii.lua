local base = piece "base"

local body = piece "body"

local luparm = piece "luparm"
local lforarm = piece "lforarm"
local lhand = piece "lhand"
local flare1 = piece "flare1"

local ruparm = piece "ruparm"
local rforarm = piece "rforarm"
local rhand = piece "rhand"
local flare2 = piece "flare2"

local mask = piece "mask"

local nano = piece "nano"



local SIG_AIM = 2
local SIG_BUILD = 4

local buildersparks = SFX.CEG

local function sparks()
	while true do
		EmitSfx(flare1, buildersparks)
		EmitSfx(flare2, buildersparks)
		Sleep(1)
	end
end



---------- Sprint code
local SIG_SPRINT = 8
local speedFactor = 4
local myOrigSpeed = UnitDefs[unitDefID].speed
local myOrigAcc = UnitDefs[unitDefID].maxAcc

local function SprintEffects()
    Signal(SIG_SPRINT)
	SetSignalMask(SIG_SPRINT)
    while true do
		EmitSfx(flare1, buildersparks)
		EmitSfx(flare2, buildersparks)
        EmitSfx(body, buildersparks)
		EmitSfx(mask, buildersparks)
		Sleep(1)
	end
end
function StartSprint()
    Spring.MoveCtrl.SetGroundMoveTypeData(unitID, {maxSpeed = myOrigSpeed*speedFactor, accRate=myOrigAcc*speedFactor})
	StartThread(SprintEffects)
end
function StopSprint()
    Spring.MoveCtrl.SetGroundMoveTypeData(unitID, {maxSpeed = myOrigSpeed, accRate=myOrigAcc})
    Signal(SIG_SPRINT)
end
---------- End sprint code



local function arms()
	while true do
		Turn(luparm, x_axis, 0, 2)
		Turn(lforarm, x_axis, 0, 2)
		Turn(lhand, x_axis, 0, 2)

		WaitForTurn(luparm, x_axis)
		WaitForTurn(lforarm, x_axis)
		WaitForTurn(lhand, x_axis)
		Sleep(1)

		Turn(luparm, x_axis, -0.75, 2)
		Turn(ruparm, x_axis, 0, 2)
		Turn(lforarm, x_axis, 1.5, 2)
		Turn(rforarm, x_axis, 0, 2)
		Turn(lhand, x_axis, 0.75, 2)
		Turn(rhand, x_axis, 0, 2)

		WaitForTurn(luparm, x_axis)
		WaitForTurn(lforarm, x_axis)
		WaitForTurn(lhand, x_axis)
		WaitForTurn(ruparm, x_axis)
		WaitForTurn(rforarm, x_axis)
		WaitForTurn(rhand, x_axis)
		Sleep(1)

		Turn(luparm, x_axis, 0, 2)
		Turn(ruparm, x_axis, -0.75, 2)
		Turn(lforarm, x_axis, 0, 2)
		Turn(rforarm, x_axis, 1.5, 2)
		Turn(lhand, x_axis, 0, 2)
		Turn(rhand, x_axis, 0.75, 2)

		WaitForTurn(luparm, x_axis)
		WaitForTurn(lforarm, x_axis)
		WaitForTurn(lhand, x_axis)
		WaitForTurn(ruparm, x_axis)
		WaitForTurn(rforarm, x_axis)
		WaitForTurn(rhand, x_axis)
		Sleep(1)
	end
end

local function armsdone()
	Turn(luparm, x_axis, -0.75, 100)
	Turn(ruparm, x_axis, -0.75, 100)
	Turn(lforarm, x_axis, 1.5, 100)
	Turn(rforarm, x_axis, 1.5, 100)
	Turn(lhand, x_axis, 0.75, 100)
	Turn(rhand, x_axis, 0.75, 100)
end

function script.Create(unitID)
	Turn (mask, x_axis, -0.75, 100)
	Turn(luparm, x_axis, -0.75, 100)
	Turn(ruparm, x_axis, -0.75, 100)
	Turn(lforarm, x_axis, 1.5, 100)
	Turn(rforarm, x_axis, 1.5, 100)
	Turn(lhand, x_axis, 0.75, 100)
	Turn(rhand, x_axis, 0.75, 100)
end

function script.StartBuilding(heading, pitch)
	Signal(SIG_BUILD)
	SetSignalMask(SIG_BUILD)
        Turn(body, y_axis, heading, math.rad(90))
	Turn (mask, x_axis, 0, 2)
        WaitForTurn(body, y_axis)
	WaitForTurn(mask, x_axis)
	StartThread(sparks)
	StartThread(arms)
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
	Turn (mask, x_axis, -0.75, 2)
	WaitForTurn(body, y_axis)
	WaitForTurn(mask, x_axis)
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