	-- by KR
	
	--pieces
	local hull = piece "hull"
	local lfturret = piece "lfturret"
	local lfbarrel = piece "lfbarrel"
	local flare1 = piece "flare1"
	local flare2 = piece "flare2"
	local lmturret = piece "lmturret"
	local lmbarrel = piece "lmbarrel"
	local flare3 = piece "flare3"
	local flare4 = piece "flare4"
	local lrturret = piece "lrturret"
	local lrbarrel = piece "lrbarrel"
	local flare5 = piece "flare5"
	local flare6 = piece "flare6"
	local rfturret = piece "rfturret"
	local rfbarrel = piece "rfbarrel"
	local flare7 = piece "flare7"
	local flare8 = piece "flare8"
	local rmturret = piece "rmturret"
	local rmbarrel = piece "rmbarrel"
	local flare9 = piece "flare9"
	local flare10 = piece "flare10"
	local rrturret = piece "rrturret"
	local rrbarrel = piece "rrbarrel"
	local flare11 = piece "flare11"
	local flare12 = piece "flare12"

	--signals
	local SIG_AIM = 1
	local SIG_AIM_SEC = 2
	local SIG_AIM_THIR = 4
	local SIG_AIM_FOUR = 8
	local SIG_AIM_FIVE = 16
	local SIG_AIM_SIX = 32
	local SIG_AIM_SEV = 64
	local SIG_AIM_EIG = 128
	local SIG_AIM_NIN = 256
	local SIG_AIM_TEN = 512
	local SIG_AIM_ELE = 1024
	local SIG_AIM_TWE = 2048
	
	function script.Create()
	       
	end
	
	function script.Killed(recentDamage, maxHealth)
		Sleep(30)
	end