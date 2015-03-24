# Table of Contents #
  * [Introduction](http://code.google.com/p/conflictterra/wiki/Animation_Tutorial#Introduction)
  * [Links](http://code.google.com/p/conflictterra/wiki/Animation_Tutorial#Links)
  * [First Thing's First](http://code.google.com/p/conflictterra/wiki/Animation_Tutorial#First_Thing's_First)
  * [Ready?  Aim!  Fire!](http://code.google.com/p/conflictterra/wiki/Animation_Tutorial#Ready?__Aim!__Fire!)
    * [Query Weapon](http://code.google.com/p/conflictterra/wiki/Animation_Tutorial#Query_Weapon)
    * [Aim From Weapon](http://code.google.com/p/conflictterra/wiki/Animation_Tutorial#Aim_From_Weapon)
    * [Aim Weapon](http://code.google.com/p/conflictterra/wiki/Animation_Tutorial#Aim_Weapon)

# Introduction #

To start off, here is an example from Conflict Terra; the animation script for the Oukami Type Tank.  This animation script proved to be the godfather script for all of the units in Conflict Terra; it was the first unit to be properly animated.  The script is very simple, and only deals with a single weapons turret, but is a great starting place.

```
        -- by KR
        
        --pieces
        local body = piece "body"
        local turret = piece "turret"
        local barrel = piece "barrel"
        local flare = piece "flare"


        --signals
        local SIG_AIM = 2
        local orc_machinegun_flash = SFX.CEG
        local orc_machinegun_muzzle = SFX.CEG + 1
        
        function script.Create()
               
        end
        
        local function RestoreAfterDelay(unitID)
                Sleep(2500)
                Turn(turret, y_axis, 0, math.rad(90))
                Turn(barrel, x_axis, 0, math.rad(50))
        end


        function script.QueryWeapon1() return flare end
        
        function script.AimFromWeapon1() return turret end
        
        function script.AimWeapon1( heading, pitch )
                Signal(SIG_AIM)
                SetSignalMask(SIG_AIM)
                Turn(turret, y_axis, heading, math.rad(90))
                Turn(barrel, x_axis, -pitch, math.rad(50))
                WaitForTurn(turret, y_axis)
                WaitForTurn(barrel, x_axis)
                StartThread(RestoreAfterDelay)
                return true
        end
        
        function script.FireWeapon1()
        EmitSfx(flare, orc_machinegun_flash)
        EmitSfx(flare, orc_machinegun_muzzle)          
        Sleep(30)
        end
        
        function script.Killed(recentDamage, maxHealth)
                Sleep(30)
        end
```

# Links to more documentation on Spring engine wiki #
For a more detailed and technical explanation, these links will be much more helpful for truly understanding how Spring's animation works, and different options that are available.
  * [Lua Callins](http://springrts.com/wiki/Animation-LuaCallins)
  * [Lua Callouts](http://springrts.com/wiki/Animation-LuaCallouts)
  * [Animation-LuaScripting](http://springrts.com/wiki/Animation-LuaScripting)


# First Thing's First #
Identify all of the pieces for your model.  **What are pieces?**  They're the different parts of your model that you cut up in Wings3D or Blender, and labeled and placed axis' to in Upspring.  For our tank, we have:

```
        local body = piece "body"
        local turret = piece "turret"
        local barrel = piece "barrel"
        local flare = piece "flare"
```

This is what each part of each line means:
|local body|For the rest of the script, the word "body" indicates the piece labeled.|
|:---------|:-----------------------------------------------------------------------|
|piece "body"|The name of the piece, as labeled by you in Upspring.|

The same goes for the turret, barrel, and flare.  It should be noted that the local and piece do not have to be the same word.  However, for simplicity's sake, it's advisable to keep them the same. If it is too much of a hassle to rename the pieces in UpSpring, Blender, or Wings3d, then you can replace 'piece "body"' with the object's body piece name.

You need to label the pieces for every piece **used in the script.**  It is advisable to label all of the pieces in the model though, so if you work with it later, you're easily able to tell what you have to work with.

Keep in mind that the more pieces an object has, the more effect it will have on the game's frame rate, especially in later stages of the game. Number of pieces affect slowdown much more than polygon counts.

# Ready?  Aim!  Fire! #
Robots are useless and boring if they can't fire any of their weapons!  Getting your units to fire their weapons happens in the animation script.  There are 5 important parts that must work together to allow your weapon to fire:

  * ## Query Weapon ##
```
        function script.QueryWeapon1() return flare end
```
> This line identifies from which point the projectile will spawn and begin it's trajectory.  It can be any piece in your model, but the projectile will spawn from the axis point assigned to it.  It's advisable to have this piece be simply a point, and to have it be placed at the end of your weapon's barrel. This makes the origin much more easily controllable. For our tank, this point is called the flare.

> If your unit has multiple weapons, this must be done for each weapon.  You would simply repeat the line, changing QueryWeapon1() to QueryWeapon2() and so on.  For example:

```
        function script.QueryWeapon1() return flare1 end

        function script.QueryWeapon2() return flare2 end

        function script.QueryWeapon3() return flare3 end
```

  * ## Aim From Weapon ##
```
        function script.AimFromWeapon1() return turret end
```
> This function allows your unit to aim. The aim point is generally either the rotating/moving piece the gun is mounted on, the gun, or the actual flare points themselves.

> Much like Query Weapon, this must be done for each weapon on the unit.  But because of the nature of this, the actual piece identified may be the same.  For example, if a tank had a turret, and two gun barrels protruding from it, it would look like this:

```
        function script.AimFromWeapon1() return turret end

        function script.AimFromWeapon2() return turret end
```

  * ## Aim Weapon ##
```
        function script.AimWeapon1( heading, pitch )
                Signal(SIG_AIM)
                SetSignalMask(SIG_AIM)
                Turn(turret, y_axis, heading, math.rad(90))
                Turn(barrel, x_axis, -pitch, math.rad(50))
                WaitForTurn(turret, y_axis)
                WaitForTurn(barrel, x_axis)
                StartThread(RestoreAfterDelay)
                return true
        end
```
> This is where the actual movements involved in aiming take place.  This is arguably the most important part of getting your weapon to fire, and a lot is going on.

  * ### Signal ###
```
Signal(SIG_AIM)
```
> Stops any previous thread that has "SetSignalMask(SIG\_AIM)" in it.

  * ### Set Signal Mask ###
```
SetSignalMask(SIG_AIM)
```
> Sets the thread to be stoppable when Signal(SIG\_AIM) is called.

  * ### Motions ###
```
Turn(turret, y_axis, heading, math.rad(90))
Turn(barrel, x_axis, -pitch, math.rad(50))
```
> Turns the piece turret along the y axis (like a spinning top: turns left and right) to direction heading (the direction of the enemy unit) at a speed of 90 radians per time unit (frames???, milliseconds???)

> Turns the piece barrel along the x axis (like a ferris wheel: up and down) to direction -pitch (direction of the enemy unit but it's negative because of geometric implementation) at a speed of 50 radians per time unit.

  * ### Waiting for Motions ###
```
WaitForTurn(turret, y_axis)
WaitForTurn(barrel, x_axis)
```
> Don't go on to the next step until turret has finished rotating along y axis

> Don't go on to the next step until barrel has finished rotating along x axis

  * ### Restore After Delay ###
```
StartThread(RestoreAfterDelay)
```
> Start the "RestoreAfterDelay" which moves the pieces back to original spots after a certain amount of time

  * ### Return ###
```
return true
```
Allows the weapon to fire once the aiming animation has finished.
Returning false blocks the weapon.

Depending on your model, you can have the turret and barrel be the same, in which case just replace all instances of "barrel" with "turret".