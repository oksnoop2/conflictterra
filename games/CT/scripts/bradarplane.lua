local body = piece "body"
local dish = piece "dish"

function script.Create()
   StartThread(radar_spin)
   return 1
end

function radar_spin()
   Spin (dish, y_axis, 2)
end

function script.Killed(recentDamage, maxHealth)
   return 0
end
