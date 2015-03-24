# Muzzle Flare CEGs #

The unit script lists the cegs it uses. As seen here:

http://code.google.com/p/conflictterra/source/browse/games/CT/units/bbasicmech.lua

Code:

```

 sfxtypes            = {
        
            explosiongenerators = {
                "custom:orc_machinegun_flash",
                "custom:orc_machinegun_muzzle",
                "custom:buildersparks",
            },
        
          }, 

```

As you can see the buildersparks are third on the list. I'm pointing that out because the order matters.

Next we look at the script here:

http://code.google.com/p/conflictterra/source/browse/games/CT/scripts/bbasicmech.lua

Code:

```

        --signals
        local SIG_AIM = 1
        local SIG_AIM_SEC = 2
        local walk_go = 4
        local walk_stop = 8
        local jumpjet_SIG = 16
        local orc_machinegun_flash = SFX.CEG
        local orc_machinegun_muzzle = SFX.CEG + 1
        local jumpjetsfx = SFX.CEG + 2

```

> Here we can see that local jumpjetsfx = SFX.CEG + 2. The significance of this is important. If you look up at the unitdef you see that the builderspark is third in the list. So it get's the designation SFX.CEG + 2. Kind of silly because it's third in the list but just remember that the SFX.CEG + # is always one behind it's number on the list in the unitdef.

> So that is how the jumpjetsfx is call the buildspark CEG located here:


http://code.google.com/p/conflictterra/source/browse/games/CT/gamedata/explosions/buildersparks.tdf

# Explosion CEGs #

Look at this unit's explodeAs tag:

http://code.google.com/p/conflictterra/source/browse/games/CT/units/bbasicmech.lua

` explodeAs           = [[MEDIUM_UNIT]], `

You will see it explodes as a MEDIUM\_UNIT. The definition of a MEDIUM\_UNIT explosion is documented here:

http://code.google.com/p/conflictterra/source/browse/games/CT/weapons/Unit_Explosions.lua

```
MEDIUM_UNIT = {

   name="Medium Unit",
   rendertype=4,
   ballistic=1,
   turret=1,
   impulseFactor      = 0,
   range=480,
   reloadtime=3.6,
   weaponvelocity=250,
   areaofeffect=95,
   soundstart="golgotha/old_generic.wav",
   soundhit="golgotha/old_generic.wav",
   explosiongenerator="custom:SMALL_UNIT_Expl",
              damage                  = {
                Cruiser = 100,
                Building = 100,
                Mech = 100,
                Tank = 100,
                Aircraft = 100,
                Ship = 100,
                Sub = 100,
              },
  },
```

This file defines it's attributes like damage, sound file, and explosion generator. The explosion generator is what the explosion looks like.

` explosiongenerator="custom:SMALL_UNIT_Expl", `

Which will lead us to this file:
http://code.google.com/p/conflictterra/source/browse/games/CT/gamedata/explosions/booms.tdf

This file defines what the explosion looks like, if we find our SMALL\_UNIT\_Expl you will see a code block defining the explosion:

```
[SMALL_UNIT_Expl]
{

   usedefaultexplosions=0;

   [pop1]
   {
   class=heatcloud;

      [properties]
            {
      alwaysVisible=1;
      texture=redexplo;
            heat = 10;
            maxheat = 15;
            heatFalloff = 1;

            size = 1;
            sizeGrowth = 24;

            pos = r-2 r2, 5, r-2 r2;
            speed=0, 1 0, 0;
            }
   air=1;
         water=1;
         ground=1;
         count=2;
   }

   [pop2]
   {
   class=heatcloud;

      [properties]
            {
      alwaysVisible=1;
      texture=flare;
            heat = 10;
            maxheat = 15;
            heatFalloff = 1.1;

            size = 3;
            sizeGrowth = 25;

            pos = r-2 r2, 5, r-2 r2;
            speed=0, 1 0, 0;
            }
   air=1;
         water=1;
         ground=1;
         count=1;
   }
```
