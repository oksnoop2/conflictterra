	--Sekai Type Tank (Mobile Form) animation script by Sanada
	--Track and driving script segment by Knorke
	
	--pieces
	local body = piece "body"
	
	local turret = piece "turret"
	local turretbase = piece "turretbase"
	local barrel = piece "barrel"
	local recoilbarrel = piece "recoilbarrel"
	local flare1 = piece "flare1"
	
	local lfrontbrace = piece "lfrontbrace"
	local lfrontspear = piece "lfrontspear"
	local lmidbrace = piece "lmidbrace"
	local lmidspear = piece "lmidspear"
	local lrearbrace = piece "lrearbrace"
	local lrearspear = piece "lfrontspear"

	local rfrontbrace = piece "rfrontbrace"
	local rfrontspear = piece "rfrontspear"
	local rmidbrace = piece "rmidbrace"
	local rmidspear = piece "rmidspear"
	local rrearbrace = piece "rrearbrace"
	local rrearspear = piece "rrearspear"
	
	local lwheel1 = piece "lwheel1"
	local lwheel2 = piece "lwheel2"
	local lwheel3 = piece "lwheel3"
	local lwheel4 = piece "lwheel4"
	
	local rwheel1 = piece "rwheel1"
	local rwheel2 = piece "rwheel2"
	local rwheel3 = piece "rwheel3"
	local rwheel4 = piece "rwheel4"
	

	--Signals
	local SIG_DRIVE = 1
	
	
	--TRACK CONFIGS--
	local driving = true
	local track = {}					--holds the track pieces, filled by gettracks()
	local trackn = 20					--number of tracks per side
	local trackspeed = 1				--how fast the track revolves
	local trackheightoffset = 5			--move the whole track up or down
	local wheel1x = 0
	local wheel2x = 45
	local wheelr = 5					--wheel radius
	local trackoffsetx = 11				--gauge of the tank, how far apart the tracks run
	local D = 47						--distance between center of wheels
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
		for i=1,43 do 
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
		Spin (rwheel1, x_axis, ut_rightstep*2)
		Spin (rwheel2, x_axis, ut_rightstep*2)
		Spin (rwheel3, x_axis, ut_rightstep*2)
		Spin (rwheel4, x_axis, ut_rightstep*2)
		Spin (lwheel1, x_axis, ut_leftstep*2)
		Spin (lwheel2, x_axis, ut_leftstep*2)
		Spin (lwheel3, x_axis, ut_leftstep*2)
		Spin (lwheel4, x_axis, ut_leftstep*2)
	end

	function stopwheels ()
		StopSpin (rwheel1, x_axis)
		StopSpin (rwheel2, x_axis)
		StopSpin (rwheel3, x_axis)
		StopSpin (rwheel4, x_axis)
		StopSpin (lwheel1, x_axis)
		StopSpin (lwheel2, x_axis)
		StopSpin (lwheel3, x_axis)
		StopSpin (lwheel4, x_axis)
	end

	--End Driving code
	
	
	--local functions
	local function startup()
		Turn(lfrontbrace, x_axis, -0.75)
		Turn(lrearbrace, x_axis, 0.75)
		
		Turn(rfrontbrace, x_axis, -0.75)
		Turn(rrearbrace, x_axis, 0.75)
		
		Turn(lfrontbrace, z_axis, 0.3)
		Turn(lmidbrace, z_axis, 0.6)
		Turn(lrearbrace, z_axis, 0.3)
		
		Turn(rfrontbrace, z_axis, -0.3)
		Turn(rmidbrace, z_axis, -0.6)
		Turn(rrearbrace, z_axis, -0.3)
		
		Move(turret, y_axis, -2)
		Move(turretbase, y_axis, -2)
		Turn(barrel, x_axis, 0.4)
	end

	
	--script
	function script.Create()
		StartThread (startup)
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
	
	function script.Killed(recentDamage, maxHealth)
		return 0
	end