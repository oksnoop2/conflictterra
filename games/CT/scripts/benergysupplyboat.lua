local hull = piece "hull"
local gen1 = piece "gen1"
local gen2 = piece "gen2"
local gen3 = piece "gen3"
local gen4 = piece "gen4"
local gen5 = piece "gen5"

function script.Create()
   StartThread(radar_spin)
   return 1
end

function radar_spin()
   Spin (gen1, z_axis, 2)
   Spin (gen2, z_axis, -4)
   Spin (gen3, z_axis, 2)
   Spin (gen4, z_axis, -4)
   Spin (gen5, z_axis, 2)
end

function script.Killed(recentDamage, maxHealth)
   return 0
end
