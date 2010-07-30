local building = piece "building"
local digger = piece "digger"


local function digger_animation()
  SetSignalMask(1)
  while true do
    Move (digger, y_axis, 5, 10)
    WaitForMove (digger, y_axis)
    Sleep(300)
    Move (digger, y_axis, -20, 200)
    WaitForMove (digger, y_axis)
    Sleep(300)
    Move (digger, y_axis, -10, 10)
    WaitForMove (digger, y_axis)
    Sleep(300)
    Move (digger, y_axis, -40, 200)
    WaitForMove (digger, y_axis)
    Sleep(300)
  end
end

local function digger_stop()
   Signal(1)
end

function script.Activate()
   StartThread(digger_animation)
end

function script.Deactivate()
   StartThread(digger_stop)
end

function script.Killed(recentDamage, maxHealth)
   return 0
end
