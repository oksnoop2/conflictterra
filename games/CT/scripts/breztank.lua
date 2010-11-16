	
	local body = piece "body"
	local backdoor = piece "backdoor"
	local ldoor = piece "ldoor"
	local rdoor = piece "rdoor"
	local wheels1 = piece "wheels1"
	local wheels2 = piece "wheels2"
	local wheels3 = piece "wheels3"
	local wheels4 = piece "wheels4"
	local nano = piece "nano"

	local SIG_AIM = 2
	local SIG_BUILD = 4

	local function doors_open()
		Sleep(500)
		Turn (ldoor, z_axis, 2, 1)
		Turn (rdoor, z_axis, -2, 1)
		Turn (backdoor, x_axis, -2, 1)
	end

	local function doors_close()
		Sleep(500)
		Turn (ldoor, z_axis, 0, 1)
		Turn (rdoor, z_axis, 0, 1)
		Turn (backdoor, x_axis, 0, 1)
	end

	function script.Create(unitID)
	end

	function script.StartMoving()
	        Spin( wheels1, x_axis, 5 )
	        Spin( wheels2, x_axis, 5 )
	        Spin( wheels3, x_axis, 5 )
	        Spin( wheels4, x_axis, 5 )
	end
	
	function script.StopMoving()
	        StopSpin( wheels1, x_axis, 5 )
	        StopSpin( wheels2, x_axis, 5 )
	        StopSpin( wheels3, x_axis, 5 )
	        StopSpin( wheels4, x_axis, 5 )
	end

	function script.StartBuilding(heading, pitch)
		Signal(SIG_BUILD)
		SetSignalMask(SIG_BUILD)
		StartThread(doors_open)
		SetUnitValue(COB.INBUILDSTANCE, 1)
		return 1
	end

	function script.Querybody() return nano end

	function script.AimFromWeapon() return body end

	function script.StopBuilding()
		Signal(SIG_BUILD)
		SetSignalMask(SIG_BUILD)
		StartThread(doors_close)
		SetUnitValue(COB.INBUILDSTANCE, 0)
		Sleep(1)
		return 0
	end

	function script.AimFromWeapon() return nano end

	function script.QueryWeapon() return nano end

	function script.QueryNanoPiece() return nano end

	function script.Killed(recentDamage, maxHealth)
		return 0
	end