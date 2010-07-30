local building = piece "building"
local crane = piece "crane"
local magnet = piece "magnet"
local metal = piece "metal"


local function crane_animation()
	SetSignalMask(1)
	while true do
		Turn (crane, y_axis, 1.6, 1)
		WaitForTurn (crane, y_axis)
		Sleep(300)
		Move (magnet, y_axis, -20, 10)
		WaitForMove (magnet, y_axis)
		Sleep(300)
		Hide (metal)
		Move (magnet, y_axis, 0, 10)
		WaitForMove (magnet, y_axis)
		Sleep(300)
		Turn (crane, y_axis, 0, 1)
		WaitForTurn (crane, y_axis)
		Sleep(300)
		Move (magnet, y_axis, -20, 10)
		WaitForMove (magnet, y_axis)
		Sleep(300)
		Show (metal)
		Move (magnet, y_axis, 0, 10)
		WaitForMove (magnet, y_axis)
		Sleep(300)
	end
end

local function crane_stop()
	Signal(1)
end

function script.Activate()
	StartThread(crane_animation)
end

function script.Deactivate()
	StartThread(crane_stop)
end

function script.Killed(recentDamage, maxHealth)
	return 0
end
