local base = piece "base"

local blpost = piece "blpost"
local blarm1 = piece "blarm1"
local blarm2 = piece "blarm2"
local blhead = piece "blhead"
local blflare = piece "blflare"

local brpost = piece "brpost"
local brarm1 = piece "brarm1"
local brarm2 = piece "brarm2"
local brhead = piece "brhead"
local brflare = piece "brflare"

local flpost = piece "flpost"
local flarm1 = piece "flarm1"
local flarm2 = piece "flarm2"
local flhead = piece "flhead"
local flflare = piece "flflare"

local frpost = piece "frpost"
local frarm1 = piece "frarm1"
local frarm2 = piece "frarm2"
local frhead = piece "frhead"
local frflare = piece "frflare"

local nano = piece "nano"
local pad = piece "pad"

local SIG_OPEN = 1
local SIG_CLOSE = 2

local factorysparks = SFX.CEG

local function sparks()
	while true do
		EmitSfx(blflare, factorysparks)
		EmitSfx(brflare, factorysparks)
		EmitSfx(flflare, factorysparks)
		EmitSfx(frflare, factorysparks)
		Sleep(1)
	end
end

local function create_animation()
	Turn(flarm1, z_axis, -1.55, 1)
	Turn(flarm2, x_axis, -1.55, 1)

	Turn(frarm1, z_axis, 1.55, 1)
	Turn(frarm2, x_axis, -1.55, 1)

	Turn(blarm1, x_axis, 1.55, 1)
	Turn(blarm2, z_axis, -1.55, 1)

	Turn(brarm1, x_axis, 1.55, 1)
	Turn(brarm2, z_axis, 1.55, 1)

	WaitForTurn(flarm1, z_axis)
	WaitForTurn(flarm2, x_axis)

	WaitForTurn(frarm1, z_axis)
	WaitForTurn(frarm2, x_axis)

	WaitForTurn(blarm1, x_axis)
	WaitForTurn(blarm2, z_axis)

	WaitForTurn(brarm1, x_axis)
	WaitForTurn(brarm2, z_axis)

	Move(flpost, y_axis, -50, 50)
	Move(frpost, y_axis, -50, 50)

	Move(blpost, y_axis, -50, 50)
	Move(brpost, y_axis, -50, 50)

	WaitForMove(flpost, y_axis)
	WaitForMove(frpost, y_axis)

	WaitForMove(blpost, y_axis)
	WaitForMove(brpost, y_axis)
end

local function build_open()
	SetSignalMask(SIG_OPEN)
	Signal(SIG_CLOSE)

	Move(flpost, y_axis, 0, 50)
	Move(frpost, y_axis, 0, 50)

	Move(blpost, y_axis, 0, 50)
	Move(brpost, y_axis, 0, 50)

	WaitForMove(flpost, y_axis)
	WaitForMove(frpost, y_axis)

	WaitForMove(blpost, y_axis)
	WaitForMove(brpost, y_axis)

	Turn(flarm1, z_axis, 0, 1)
	Turn(flarm2, x_axis, 0, 1)

	Turn(frarm1, z_axis, 0, 1)
	Turn(frarm2, x_axis, 0, 1)

	Turn(blarm1, x_axis, 0, 1)
	Turn(blarm2, z_axis, 0, 1)

	Turn(brarm1, x_axis, 0, 1)
	Turn(brarm2, z_axis, 0, 1)

	WaitForTurn(flarm1, z_axis)
	WaitForTurn(flarm2, x_axis)

	WaitForTurn(frarm1, z_axis)
	WaitForTurn(frarm2, x_axis)

	WaitForTurn(blarm1, x_axis)
	WaitForTurn(blarm2, z_axis)

	WaitForTurn(brarm1, x_axis)
	WaitForTurn(brarm2, z_axis)

	while true do
		Move(flhead, z_axis, -148, 20)
		Move(frhead, x_axis, -148, 20)
		Move(blhead, x_axis, 148, 20)
		Move(brhead, z_axis, 148, 20)

		WaitForMove(flhead, z_axis)
		WaitForMove(frhead, x_axis)
		WaitForMove(blhead, x_axis)
		WaitForMove(brhead, z_axis)
		Sleep(1)

		Move(flhead, z_axis, -16, 20)
		Move(frhead, x_axis, -16, 20)
		Move(blhead, x_axis, 16, 20)
		Move(brhead, z_axis, 16, 20)

		WaitForMove(flhead, z_axis)
		WaitForMove(frhead, x_axis)
		WaitForMove(blhead, x_axis)
		WaitForMove(brhead, z_axis)
		Sleep(1)
	end
end

local function build_close()
	SetSignalMask(SIG_CLOSE)
	Signal(SIG_OPEN)

	Move(flhead, z_axis, 0, 100)
	Move(frhead, x_axis, 0, 100)
	Move(blhead, x_axis, 0, 100)
	Move(brhead, z_axis, 0, 100)

	WaitForMove(flhead, z_axis)
	WaitForMove(frhead, x_axis)
	WaitForMove(blhead, x_axis)
	WaitForMove(brhead, z_axis)

	Turn(flarm1, z_axis, -1.55, 1)
	Turn(flarm2, x_axis, -1.55, 1)

	Turn(frarm1, z_axis, 1.55, 1)
	Turn(frarm2, x_axis, -1.55, 1)

	Turn(blarm1, x_axis, 1.55, 1)
	Turn(blarm2, z_axis, -1.55, 1)

	Turn(brarm1, x_axis, 1.55, 1)
	Turn(brarm2, z_axis, 1.55, 1)

	WaitForTurn(flarm1, z_axis)
	WaitForTurn(flarm2, x_axis)

	WaitForTurn(frarm1, z_axis)
	WaitForTurn(frarm2, x_axis)

	WaitForTurn(blarm1, x_axis)
	WaitForTurn(blarm2, z_axis)

	WaitForTurn(brarm1, x_axis)
	WaitForTurn(brarm2, z_axis)

	Move(flpost, y_axis, -50, 50)
	Move(frpost, y_axis, -50, 50)

	Move(blpost, y_axis, -50, 50)
	Move(brpost, y_axis, -50, 50)

	WaitForMove(flpost, y_axis)
	WaitForMove(frpost, y_axis)

	WaitForMove(blpost, y_axis)
	WaitForMove(brpost, y_axis)
end

function script.Create(unitID)
	StartThread(create_animation)
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
	StartThread(sparks)
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
