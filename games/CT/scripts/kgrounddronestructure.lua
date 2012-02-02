	--Ground Drone Structure animation script by Oksnoop2 and Sanada

	--pieces
	local body = piece "body"

	local flare1 = piece "flare1"

	local nano1 = piece "nano1"
	local flare2 = piece "flare2"

	local nano2 = piece "nano2"
	local flare3 = piece "flare3"

	local nano3 = piece "nano3"
	local flare4 = piece "flare4"

	local nano4 = piece "nano4"
	local flare5 = piece "flare5"


	--signals
	local SIG_OPEN = 1
	local SIG_CLOSE = 2


	--local functions
	local function build_start_1()
		SetSignalMask(SIG_OPEN)
		Signal(SIG_CLOSE)
		while true do
			Move (nano1, y_axis, 10, 5)
			WaitForMove(nano1, y_axis)
			Sleep(1)

			Move (nano1, y_axis, -10, 5)
			WaitForMove(nano1, y_axis)
			Sleep(1)
		end
	end

	local function build_start_2()
		SetSignalMask(SIG_OPEN)
		Signal(SIG_CLOSE)
		while true do
			Move (nano2, y_axis, 10, 5)
			WaitForMove(nano2, y_axis)
			Sleep(1)

			Move (nano2, y_axis, -10, 5)
			WaitForMove(nano2, y_axis)
			Sleep(1)
		end
	end

	local function build_start_3()
		SetSignalMask(SIG_OPEN)
		Signal(SIG_CLOSE)
		while true do
			Move (nano3, y_axis, 10, 5)
			WaitForMove(nano3, y_axis)
			Sleep(1)

			Move (nano3, y_axis, -10, 5)
			WaitForMove(nano3, y_axis)
			Sleep(1)
		end
	end

	local function build_start_4()
		SetSignalMask(SIG_OPEN)
		Signal(SIG_CLOSE)
		while true do
			Move (nano4, y_axis, 10, 5)
			WaitForMove(nano4, y_axis)
			Sleep(1)

			Move (nano4, y_axis, -10, 5)
			WaitForMove(nano4, y_axis)
			Sleep(1)
		end
	end


	--script
	function script.Create(unitID)
	end

	function script.QueryBuildInfo() return flare1 end

	function script.Queryflare1Piece() return flare1 end

	function script.Activate()
		SetUnitValue(COB.YARD_OPEN, 1)
		SetUnitValue(COB.INBUILDSTANCE, 1)
		SetUnitValue(COB.BUGGER_OFF, 1)
		return 1
	end

	function script.Deactivate()
		SetUnitValue(COB.YARD_OPEN, 0)
		SetUnitValue(COB.INBUILDSTANCE, 0)
		SetUnitValue(COB.BUGGER_OFF, 0)
		return 0
	end

	function script.StartBuilding()
		StartThread(build_start_1)
		Sleep(1000)
		StartThread(build_start_2)
		Sleep(1000)
		StartThread(build_start_3)
		Sleep(1000)
		StartThread(build_start_4)
	end

	function script.StopBuilding()
		SetSignalMask(SIG_CLOSE)
		Signal(SIG_OPEN)
		Move (nano1, y_axis, 0, 5)
		Move (nano2, y_axis, 0, 5)
		Move (nano3, y_axis, 0, 5)
		Move (nano4, y_axis, 0, 5)
	end

	function script.Killed(recentDamage, maxHealth)
		return 0
	end