local building = piece "building"
local flipper = piece "flipper"


function script.Activate()
   Spin (flipper, x_axis, 2.5)
end

function script.Deactivate()
   StopSpin (flipper, x_axis, 2.5)
end

function script.Killed(recentDamage, maxHealth)
   return 0
end
