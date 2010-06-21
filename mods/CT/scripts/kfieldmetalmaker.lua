local base = piece "base"
local spinner = piece "spinner"


function script.Activate()
   Spin (spinner, y_axis, 10)
end

function script.Deactivate()
   StopSpin (spinner, y_axis, 10)
end

function script.Killed(recentDamage, maxHealth)
   return 0
end
