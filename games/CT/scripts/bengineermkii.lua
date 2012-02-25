	--Construction Mech animation script by Sanada
	--Track and driving script segment by Knorke

	--pieces
	local waist = piece "waist"

	local body = piece "body"

	local luparm = piece "luparm"
	local lforarm = piece "lforarm"
	local lhand = piece "lhand"
	local fxflare1 = piece "fxflare1"

	local ruparm = piece "ruparm"
	local rforarm = piece "rforarm"
	local rhand = piece "rhand"
	local fxflare2 = piece "fxflare2"

	local mask = piece "mask"

	local nano = piece "nano"

	local rfrontwheel = piece "rfrontwheel"
	local rbackwheel = piece "rbackwheel"

	local lfrontwheel = piece "lfrontwheel"
	local lbackwheel = piece "lbackwheel"


	--signals
	local SIG_BUILD = 1
	local SIG_Drive = 2


	--CEGs
	local ct_weldingsparks = SFX.CEG


	--TRACK CONFIGS--
	local driving = true
	local track = {}					--holds the track pieces, filled by gettracks()
	local trackn = 18					--number of tracks per side
	local trackspeed = 0.3				--how fast the track revolves
	local trackheightoffset = 3			--move the whole track up or down
	local wheel1x = 0
	local wheel2x = 45
	local wheelr = 3					--wheel radius
	local trackoffsetx = 9				--gauge of the tank, how far apart the tracks run
	local D = 24						--distance between center of wheels
	local U = (2*math.pi*wheelr) + D+D	--total perimeter/length of track per side
	local ort = "nirgends"				--debug
	local ut = 1
	local u1 = D / 2					--several lengths to divide the track into certain parts
	local u2 = u1 + (math.pi*wheelr)
	local u3 = u2 + D
	local u4 = u3 + (math.pi*wheelr)

	local ut_left = 0					--track rotation counter
	local ut_leftstep = 0				--how much the track rotation counter is increased.  can be changed when steering, ie negative for turning in place
	local ut_right = 0
	local ut_rightstep = 0

	---heading
	local currentheading = 0
	local lastheading = 0
	local deltaheading = 0


	--Driving code
	function get_tracks ()
		for i=1,40 do 
		local tname = "t" .. i	
		track[i] = {}
		track[i] = piece (tname)	
		end
	end

	function script.StartMoving()
		driving = true
		StartThread(drive) --move the tracks
	end

	function script.StopMoving()
		driving = false
		Signal (SIG_DRIVE)
		stopwheels ()
	end

	function updateheading()
		while (true) do
			lastheading = currentheading
			currentheading = Spring.GetUnitHeading(unitID)
			deltaheading = lastheading - currentheading
		
			Sleep (200)
			if (math.abs(deltaheading)<100) then
				ut_leftstep = trackspeed
				ut_rightstep = trackspeed
				--Spring.Echo ("^\t" .. deltaheading)
			end
			if (deltaheading<-1000) then 
				ut_leftstep = trackspeed/4
				ut_rightstep = trackspeed
				--Spring.Echo ("<\t" .. deltaheading)
			end
			if (deltaheading>1000) then 
				--Spring.Echo (">\t" .. deltaheading)
				ut_leftstep = trackspeed
				ut_rightstep = trackspeed/4
			end
			
		end	
	end

	--degreeshift: für t1 wäre das 0. für tn wäre das (pi*2/trackn)*i
	function get_trackpiece_position (ut, degreeshift)
	if ut > U then ut = ut-U end
	if ut < 0 then ut = U-ut end
	if (ut > u1 and ut < u2) then
		local w = (((u1-ut) / (u2-u1))*math.pi) - math.pi/2
		ort = "linkes rad " .. w
		return -D/2 + math.cos(w)*wheelr,  math.sin(w)*wheelr, -w-(math.pi/2) 	-- use -w+(math.pi/2) if track pieces are inverted
	end

	if (ut > u3 and ut < u4) then ort = "rechtes rad" 
		local w = ((u3-ut) / (u4-u3))*math.pi + math.pi/2
		ort = "rechtes rad " .. w
		return D/2 + math.cos(w)*wheelr,  math.sin(w)*wheelr, -w-(math.pi/2) 	-- use -w+(math.pi/2) if track pieces are inverted
	end --auf rechtem rad

	if (ut > u2 and ut < u3) then ort = "untere gerade" return ut-(u1+u2), wheelr, math.pi end --auf unterer gerade
	if (ut < u1) then ort= "obere gerade linker teil" return -ut,-wheelr, math.pi end --auf oberer gerade
	if (ut > u4) then ort= "obere gerade rechter teil" return U-ut,-wheelr, math.pi end --auf oberer gerade

	return 0,0,0
	end

	function movetracks()
		for i=1,trackn do
			--Spring.Echo ("moving trackpiece " .. i)
			local zpos, ypos,rot = get_trackpiece_position ((ut_left)+(U/trackn)*i,0)
			Move (track[i], z_axis, zpos)
			Move (track[i], y_axis, ypos+trackheightoffset)
			Turn(track[i], x_axis, rot)
		end

		for i=trackn+1,2*trackn+1 do
			--Spring.Echo ("moving trackpiece " .. i)
			local ii = i - trackn
			local zpos, ypos,rot = get_trackpiece_position (ut_right+(U/trackn)*ii,0)
			Move (track[i], z_axis, zpos)
			Move (track[i], y_axis, ypos+trackheightoffset)
			Turn(track[i], x_axis, rot)
		end
	end

	function drive ()	
		Signal(SIG_DRIVE)
		SetSignalMask(SIG_DRIVE)	
		while (true) do
			--Spring.Echo ("rolling'")
			movetracks()		
			Sleep (50)
			ut_left = ut_left + ut_leftstep
			ut_right = ut_right + ut_rightstep
			if ut_left > U then ut_left = ut_left-U end
			if ut_left < 0 then ut_left = U-ut_left end
			if ut_right > U then ut_right = ut_right-U end
			if ut_right < 0 then ut_right = U-ut_right end
			spinwheels()
		end
	end

	function spinwheels ()
		Spin (rfrontwheel, x_axis, ut_rightstep*2)
		Spin (rbackwheel, x_axis, ut_rightstep*2)
		Spin (lfrontwheel, x_axis, ut_leftstep*2)
		Spin (lbackwheel, x_axis, ut_leftstep*2)
	end

	function stopwheels ()
		StopSpin (rfrontwheel, x_axis)
		StopSpin (rbackwheel, x_axis)
		StopSpin (lfrontwheel, x_axis)
		StopSpin (lbackwheel, x_axis)
	end
	--End Driving Code


	--local functions
	local function sparks()
		while true do
			EmitSfx(fxflare1, ct_weldingsparks)
			EmitSfx(fxflare2, ct_weldingsparks)
			Sleep(1)
		end
	end

	local function arms()
		while true do
			--left arm back
			Turn(luparm, x_axis, -0.75, 2)
			Turn(lforarm, x_axis, 1.5, 2)
			Turn(lhand, x_axis, 0.75, 2)

			--right arm forward
			Turn(ruparm, x_axis, 0, 2)
			Turn(rforarm, x_axis, 0, 2)
			Turn(rhand, x_axis, 0, 2)

			--left arm wait
			WaitForTurn(luparm, x_axis)
			WaitForTurn(lforarm, x_axis)
			WaitForTurn(lhand, x_axis)

			--right arm wait
			WaitForTurn(ruparm, x_axis)
			WaitForTurn(rforarm, x_axis)
			WaitForTurn(rhand, x_axis)
			Sleep(500)

			--left arm forward
			Turn(luparm, x_axis, 0, 2)
			Turn(lforarm, x_axis, 0, 2)
			Turn(lhand, x_axis, 0, 2)

			--right arm back
			Turn(ruparm, x_axis, -0.75, 2)
			Turn(rforarm, x_axis, 1.5, 2)
			Turn(rhand, x_axis, 0.75, 2)

			--left arm wait
			WaitForTurn(luparm, x_axis)
			WaitForTurn(lforarm, x_axis)
			WaitForTurn(lhand, x_axis)

			--right arm wait
			WaitForTurn(ruparm, x_axis)
			WaitForTurn(rforarm, x_axis)
			WaitForTurn(rhand, x_axis)
			Sleep(500)
		end
	end

	local function armsdone()
		--left arm ready
		Turn(luparm, x_axis, -0.75, 2)
		Turn(lforarm, x_axis, 1.5, 2)
		Turn(lhand, x_axis, 0.75, 2)

		--right arm ready
		Turn(ruparm, x_axis, -0.75, 2)
		Turn(rforarm, x_axis, 1.5, 2)
		Turn(rhand, x_axis, 0.75, 2)
	end

	local function armsready()
		--mask up
		Turn (mask, x_axis, -0.75, 2)

		--left arm ready
		Turn(luparm, x_axis, -0.75, 2)
		Turn(lforarm, x_axis, 1.5, 2)
		Turn(lhand, x_axis, 0.75, 2)

		--right arm ready
		Turn(ruparm, x_axis, -0.75, 2)
		Turn(rforarm, x_axis, 1.5, 2)
		Turn(rhand, x_axis, 0.75, 2)
	end


	--script
	function script.Create()
		--Spring.Echo ("unit " .. unitID .. " was created!")
		get_tracks ()	
		--distrubute track pieces to left and right wheels
		for i=1,table.getn (track) do
			Move (track[i], x_axis, trackoffsetx)
			Move (track[i], z_axis, 0)
			Move (track[i], y_axis, 100)
			--Spring.Echo ("moving trackpiece " .. i)
		end
		for i=trackn+1,trackn*2 do 
			Move (track[i], x_axis, -trackoffsetx)
			Move (track[i], z_axis, 0)
			Move (track[i], y_axis, 100)		
		end	
		--Hide unusued trackpieces
		for i=(trackn*2)+1,table.getn (track) do 
			Hide (track[i])
		end
		movetracks()
		updateheading()
		driving=true
		StartThread (drive)			--put track pieces into position even if tank does not instantly move after creation
		StartThread (arms_ready)
	end

	function script.QueryNanoPiece() return nano end

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

	function script.Killed(recentDamage, maxHealth)
		return 0
	end