	--Oukami Type Tank animation script by Sanada
	--Track and driving script segment by Knorke
	
	--pieces
	local body = piece "body"

	local turret = piece "turret"
	local barrel = piece "barrel"
	local leftrecoil = piece "leftrecoil"
	local flare1 = piece "flare1"
	local rightrecoil = piece "rightrecoil"
	local flare2 = piece "flare2"

	local lbackwheel = piece "lbackwheel"
	local rbackwheel = piece "rbackwheel"
	local lfrontwheel = piece "lfrontwheel"
	local rfrontwheel = piece "rfrontwheel"


	--variables
	local currBarrel = 1


	--signals
	local SIG_AIM = 1
	local SIG_DRIVE = 2


	--CEGs
	local ct_cannon_tank = SFX.CEG


	--TRACK CONFIGS--
	local driving = true
	local track = {}					--holds the track pieces, filled by gettracks()
	local trackn = 10					--number of tracks per side
	local trackspeed = 1				--how fast the track revolves
	local trackheightoffset = 6			--move the whole track up or down
	local wheel1x = 0
	local wheel2x = 45
	local wheelr = 6					--wheel radius
	local trackoffsetx = 17				--gauge of the tank, how far apart the tracks run
	local D = 37						--distance between center of wheels
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
		for i=1,34 do 
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

	--End Driving code


	--local functions
	local function left_recoil()
		Move(leftrecoil, z_axis, -10, 50)
		WaitForMove(leftrecoil, z_axis)
		Move(leftrecoil, z_axis, 0, 5)
	end

	local function right_recoil()
		Move(rightrecoil, z_axis, -10, 50)
		WaitForMove(rightrecoil, z_axis)
		Move(rightrecoil, z_axis, 0, 5)
	end

	local function RestoreAfterDelay(unitID)
		Sleep(1000)
		Turn(turret, y_axis, 0, math.rad(90))
        Turn(barrel, x_axis, 0, math.rad(50))
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
	end

	function script.QueryWeapon1()
		if (currBarrel == 1) then 
			return flare1
		else 
			return flare2
		end
	end
	
	function script.AimFromWeapon1() return turret end
	
	function script.AimWeapon1( heading, pitch )
		Signal(SIG_AIM)
		SetSignalMask(SIG_AIM)
        	Turn(turret, y_axis, heading, math.rad(90))
        	Turn(barrel, x_axis, -pitch, math.rad(50))
        	WaitForTurn(turret, y_axis)
        	WaitForTurn(barrel, x_axis)
		StartThread(RestoreAfterDelay)
		return true
	end
	
	function script.Shot1()
		if currBarrel == 1 then
			EmitSfx(flare2, ct_cannon_tank)
			StartThread(right_recoil)
		end
		if currBarrel == 2 then
			EmitSfx(flare1, ct_cannon_tank)
			StartThread(left_recoil)
		end
		currBarrel = currBarrel + 1
		if currBarrel == 2 then currBarrel = 2 end
		if currBarrel == 3 then currBarrel = 1 end
	end
	
	function script.Killed(recentDamage, maxHealth)
		return 0
	end