# Table of Contents #
  * [Conflict Terra's Categories](http://code.google.com/p/conflictterra/wiki/Useful_Dev_Information#Conflict_Terra's_Categories)
  * [Wreck Info](http://code.google.com/p/conflictterra/wiki/Useful_Dev_Information#Wreck_Info)
  * [Useful Spring Wiki Links](http://code.google.com/p/conflictterra/wiki/Useful_Dev_Information#Useful_Spring_Wiki_links)
  * [Rough Scale](http://code.google.com/p/conflictterra/wiki/Useful_Dev_Information#Rough_Scale)

# Conflict Terra's Categories #

|MINERALS|Special category for Mining to work.|
|:-------|:-----------------------------------|
|LAND|Normal land units.  Mobile!|
|SINK|Normal buildings.|
|HOVER|Hover units.|
|SWIM|True amphibious units, that travel on the seafloor.  Currently non exist.|
|FIXEDWING|Normal aircraft that are constantly moving.|
|GUNSHIP|Aircraft and other units that hover in the air.  Mostly the flying mechs and flying Drones.|
|CRUISER|Cruisers, all of which hover like GUNSHIP but are specifically cruiser units.|
|SHIP|All of the naval units.  Mobile!|
|FLOAT|Floating buildings.|
|SUB|Submarines|

# Wreck Info #

## Wrecks ##
  * damage of Wreck should be half of unit's maxDamage.
  * metal of Wreck should be half of unit's metalCost.
  * reclaimTime of Wreck should be:
```
  reclaimTime = (metal) * 30
```

## Debris ##
  * damage of Debris should be half of damage for Wreck.
  * metal of Debris should be half of metal for Wreck.
  * reclaimTime of Debris should be half of reclaimTime of Wreck.

# Useful Spring Wiki Links #
  * [Unit Def tags](http://springrts.com/wiki/Units:FBI)
  * [Weapon tags](http://springrts.com/wiki/Weapon_Variables)
  * [Move Def info](http://springrts.com/wiki/Units:MoveTypes)
  * [Lua Animation Callins](http://springrts.com/wiki/Animation-LuaCallins)
  * [Lua Animation Callouts](http://springrts.com/wiki/Animation-LuaCallouts)
  * [Skyboxes](http://springrts.com/wiki/Skyboxcreation)
  * [Map Size Info](http://springrts.com/wiki/MapSizes)
  * [SMD Info](http://springrts.com/wiki/Maps:SMD)

# Rough Scale #

For Conflict Terra, we've sought to maintain a relative scale between units.  Things are not exactly to scale, simply because units such as the Flagship would have to be quite massive.  In general, the mechs are intended to be a little smaller than the sort of usual mech scale (such as the scale in Gundam.)  The Hojo Combat Mech is somewhere in the 25 foot range.  Here is an image of the rough scale.

![http://img84.imageshack.us/img84/8090/hojocomparison.png](http://img84.imageshack.us/img84/8090/hojocomparison.png)