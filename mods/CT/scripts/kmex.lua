local building = piece "building"
local drill = piece "drill"


local function drill_animation()
  SetSignalMask(1)
  Spin (drill, y_axis, 5)
  while true do
    Move (drill, y_axis, -5, 10)
    WaitForMove (drill, y_axis)
    Sleep(300)
    Move (drill, y_axis, 0, 10)
    WaitForMove (drill, y_axis)
    Sleep(300)
  end
end

local function drill_stop()
   Signal(1)
end

function script.Activate()
   StartThread(drill_animation)
end

function script.Deactivate()
   StartThread(drill_stop)
end

function script.Killed(recentDamage, maxHealth)
   return 0
end
