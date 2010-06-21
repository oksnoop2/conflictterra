local building = piece "building"
local dish = piece "dish"
local flywheel = piece "flywheel"
local lpiston = piece "lpiston"
local larm = piece "larm"
local rpiston = piece "rpiston"
local rarm = piece "rarm"

function script.Activate()
   StartThread(turn_on)
   StartThread(right_side_on)
   StartThread(left_side_on)
   return 1
end

function script.Deactivate()
   StartThread(turn_off)
   return 1
end

function turn_on()
   Spin (flywheel, x_axis, 3, 2)
   Turn (dish, y_axis, 0, 5)
end

function right_side_on()
  SetSignalMask(1)
  while true do
    Move (rpiston, z_axis, 4, 16)
    Turn (rarm, x_axis, -0.5, 2)
    WaitForMove (rpiston, z_axis)
    Sleep(5)
    WaitForTurn (rarm, x_axis)
    Sleep(5)

    Move (rpiston, z_axis, 0, 16)
    Turn (rarm, x_axis, -1, 2)
    WaitForMove (rpiston, z_axis)
    Sleep(5)
    WaitForTurn (rarm, x_axis)
    Sleep(5)

    Move (rpiston, z_axis, -4, 16)
    Turn (rarm, x_axis, -0.4, 2)
    WaitForMove (rpiston, z_axis)
    Sleep(5)
    WaitForTurn (rarm, x_axis)
    Sleep(5)

    Move (rpiston, z_axis, 0, 16)
    Turn (rarm, x_axis, 0, 2)
    WaitForMove (rpiston, z_axis)
    Sleep(5)
    WaitForTurn (rarm, x_axis)
    Sleep(5)
  end
end

function left_side_on()
  SetSignalMask(1)
  while true do
    Move (lpiston, z_axis, -4, 16)
    Turn (larm, x_axis, -0.5, 2)
    WaitForMove (lpiston, z_axis)
    Sleep(5)
    WaitForTurn (larm, x_axis)
    Sleep(5)

    Move (lpiston, z_axis, -7, 16)
    Turn (larm, x_axis, 0, 2)
    WaitForMove (lpiston, z_axis)
    Sleep(5)
    WaitForTurn (larm, x_axis)
    Sleep(5)

    Move (lpiston, z_axis, -4, 16)
    Turn (larm, x_axis, 0.5, 2)
    WaitForMove (lpiston, z_axis)
    Sleep(5)
    WaitForTurn (larm, x_axis)
    Sleep(5)

    Move (lpiston, z_axis, 0, 16)
    Turn (larm, x_axis, 0, 2)
    WaitForMove (lpiston, z_axis)
    Sleep(5)
    WaitForTurn (larm, x_axis)
    Sleep(5)
  end
end

function turn_off()
   Signal(1)
   Turn (dish, y_axis, -3, 5)
   StopSpin (flywheel, x_axis, 2)
end

function script.Killed(recentDamage, maxHealth)
   return 0
end
