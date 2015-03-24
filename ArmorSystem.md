# Table of Contents #
  * [Summary](http://code.google.com/p/conflictterra/wiki/ArmorSystem#Summary)
  * [Armor Classes](http://code.google.com/p/conflictterra/wiki/ArmorSystem#Armor_Classes)
  * [Example](http://code.google.com/p/conflictterra/wiki/ArmorSystem#Example)
  * [Armor Chart](http://code.google.com/p/conflictterra/wiki/ArmorSystem#Armor_Chart)

# Summary #

Conflict Terra utilizes a simple Armor System to give a more dynamic spin on combat.  The Armor System is simple in that each weapon in the game has the potential to deal different damage to each armor type in the game.  This differs from the somewhat more traditional armor systems found in RTS, where weapons or attacks gain a multiplier bonus against armors that they are strong against.

Our system is born almost entirely out of a desire for simplicity and also because this kind of system is what we started playing RTS with.

# Armor Classes #

There are 7 Armor Classes.  Each unit can only belong to one Armor Class.  Sometimes if a unit can morph, it will morph into a unit with a different Armor Class.  We strive to make identification intuitive, but here is a chart to lay everything out for you.  You can also view the [armordefs.lua](http://code.google.com/p/conflictterra/source/browse/games/CT/gamedata/armordefs.lua) to identify the Armor Classes.

|Cruiser|Any of the large flying units, which can hover in place.|
|:------|:-------------------------------------------------------|
|Building|Any structure that is immobile.|
|Mech|Any unit that must walk to move.  The track-driven Engineer Support Mech is also a mech.|
|Tank|Most tanks and vehicles.|
|Aircraft|Any of the smaller flying units that is constantly moving.  Flying Mechs included.|
|Ship|Any boat or ship that floats on the water and can move|
|Sub|Submersible units, specifically submarines.|

# Example #

The Kuma Type Tank fires two anti-mech missiles, which means that while they will certainly damage all unit types, they will deal especially higher damage to Mechs.  Here is the Kuma Type Tank's damage chart:

```
              damage                  = {
                Cruiser = 35,
                Building = 35,
                Mech = 75,
                Tank = 35,
                Aircraft = 35,
                Ship = 35,
                Sub = 2,
              },
```

As you can see, each missile will take 35 HP from any unit it hits except a Mech, in which case 75 HP (or a little more than double) will be taken.  The Submarine class, because it is so small and so specific, is only enforced for units able to actually attack the submarine.