local building = piece "building"
local ring = piece "ring"


function script.Activate()
   StartThread(turn_on)
   return 1
end

function script.Deactivate()
   StartThread(turn_off)
   return 1
end

function turn_on()
   Spin (ring, y_axis, 1, 2)
end

function turn_off()
   StopSpin (ring, y_axis, 2)
end

function script.Killed(recentDamage, maxHealth)
   return 0
end
