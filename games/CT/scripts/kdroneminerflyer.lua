    --Drone Miner Flyer animation script by Sanada and yanom

    --pieces
    local base = piece "base"
    local flare1 = piece "flare1"
    local fxflare1 = piece "fxflare1"
    
    
    --signals
    local SIG_AIM = 1   


    --CEGs
    local ct_mininglaser_green = SFX.CEG    
    
    
    --local functions
    local function RestoreAfterDelay(unitID)
        Sleep(1000)
        Turn(base, y_axis, 0, math.rad(1500))
        Turn(base, x_axis, 0, math.rad(1500))
    end

    
    --script
    function script.Create()
    end
    
    function script.QueryWeapon1() return flare1 end
    
    function script.AimFromWeapon1() return base end
    
    function script.AimWeapon1( heading, pitch )
        Signal(SIG_AIM)
        SetSignalMask(SIG_AIM)
        Turn(base, y_axis, heading, math.rad(1500))
        Turn(base, x_axis, -pitch, math.rad(1500))
        WaitForTurn(base, y_axis)
        WaitForTurn(base, x_axis)
        StartThread(RestoreAfterDelay)
        return true
    end
    
    function script.FireWeapon1()
        --EmitSfx(flare1, ct_mininglaser_green) 
    end

    function script.Killed(recentDamage, maxHealth)
        return 0
    end
