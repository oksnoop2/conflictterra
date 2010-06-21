local building = piece "building"
local highnode = piece "highnode"
local highends = piece "highends"
local lowernode = piece "lowernode"
local lowerends = piece "lowerends"


function script.Activate()
	StartThread(turn_on)
	return 1
end

function script.Deactivate()
	StartThread(turn_off)
	return 1
end

function turn_on()
	Spin (highnode, y_axis, 1, 2)
	Spin (highends, z_axis, -1, 2)
	Spin (lowernode, y_axis, -1, 2)
	Spin (lowerends, x_axis, 1, 2)
end

function turn_off()
	StopSpin (highnode, y_axis, 2)
	StopSpin (highends, z_axis, 2)
	StopSpin (lowernode, y_axis, 2)
	StopSpin (lowerends, x_axis, 2)
end

function script.Killed(recentDamage, maxHealth)
	return 0
end
