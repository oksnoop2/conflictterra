local hull = piece "hull"
local fordish = piece "fordish"
local reardish = piece "reardish"

function script.Create()
   StartThread(radar_spin)
   return 1
end

function radar_spin()
   Spin (fordish, z_axis, 2)
   Spin (reardish, z_axis, -2)
end

function script.Killed(recentDamage, maxHealth)
   return 0
end
