![http://img59.imageshack.us/img59/8833/bengititle.png](http://img59.imageshack.us/img59/8833/bengititle.png)


---


## Role ##

|![http://conflictterra.googlecode.com/svn/games/CT/unitpics/bengineermkii.png](http://conflictterra.googlecode.com/svn/games/CT/unitpics/bengineermkii.png)|Utilitarian vehicle able to build structures.   Unarmed.|
|:----------------------------------------------------------------------------------------------------------------------------------------------------------|:-------------------------------------------------------|

The Engineer Support Mech has two main roles:  it is one of the two "builders" for the NKG, and it is the only "miner" for the NKG.

This unit builds the Tech Level 1 structures for the NKG.  These include economic buildings, one "factory", and defensive turrets.  There are a few important things to remember about the Engineer Support Mech that separates it from the typical constructor in a Spring game:

  * Only one Engineer Support Mech can work on a building at a time.  No assisting.
  * The Engineer Support Mech cannot assist "factories" in building their units.

It should be noted that the above rules apply to both of the NKG builder units.

The other main role of the Engineer Support Mech is that it is the only miner for the NKG.  This unit can "mine" meteorites for Metal, which it then must deposit at a [drop-off area](http://code.google.com/p/conflictterra/wiki/NKGResourceDropZone) for the player to actually acquire the mined Metal.  The mining process is mostly automated; Engineer Support Mechs will seek out mine-able meteorites, mine them until they are "full", return to a drop-off area, and then return to continue mining.

There is another important thing to remember about the Engineer Support Mech.  Due to the design of the gadget that allows it to mine meteorites for Metal, it is almost always necessary to manually "turn off" a miner so that it can build a building without interruption.  If this isn't done, the miner will more than likely ignore your order and continue mining.  To "turn off" a miner is to set it to "Hold pos".  Below are what the following commands mean:

|Hold pos|The miner will NOT seek out any meteorites and will build uninterrupted.|
|:-------|:-----------------------------------------------------------------------|
|Maneuver|The miner will seek out and mine nearby meteorites, but will not search the whole map.|
|Roam|The miner will seek out any meteorites on the map to mine.|

|[Link to Unit Definition.  This will display its current stats.](http://code.google.com/p/conflictterra/source/browse/games/CT/units/bengineer.lua)|
|:--------------------------------------------------------------------------------------------------------------------------------------------------|

|[Armor Class](http://code.google.com/p/conflictterra/wiki/ArmorSystem)|Mech|
|:---------------------------------------------------------------------|:---|
|[Attack Bonus](http://code.google.com/p/conflictterra/wiki/ArmorSystem)|Unarmed|

|Built From|[Mobile Headquarters](http://code.google.com/p/conflictterra/wiki/NKGOdaClassCruiser)|
|:---------|:------------------------------------------------------------------------------------|
|  |[Saito Class Cruiser Mech Factory](http://code.google.com/p/conflictterra/wiki/NKGSaitoClassCruiser)|
|  |[Takeda Class Cruiser Tank Factory](http://code.google.com/p/conflictterra/wiki/NKGTakedaClassCruiser)|
|  |[Matsudaira Class Cruiser Mech Factory](http://code.google.com/p/conflictterra/wiki/NKGMatsudairaClassCruiser)|
|  |[Okubo Class Cruiser Tank Factory](http://code.google.com/p/conflictterra/wiki/NKGOkuboClassCruiser)|

|Builds|[Resource Drop Zone](http://code.google.com/p/conflictterra/wiki/NKGResourceDropZone)|
|:-----|:------------------------------------------------------------------------------------|
|  |[Sterling Power Generator](http://code.google.com/p/conflictterra/wiki/NKGSterlingPowerGenerator)|
|  |[High-Tech Power Plant](http://code.google.com/p/conflictterra/wiki/NKGHighTechPowerPlant)|
|  |[Cruiser Beacon](http://code.google.com/p/conflictterra/wiki/NKGCruiserBeacon)|
|  |[Radar Outpost](http://code.google.com/p/conflictterra/wiki/NKGRadarOutpost)|
|  |[Radar Jamming Outpost](http://code.google.com/p/conflictterra/wiki/NKGRadarJammingOutpost)|
|  |[Gatling Turret](http://code.google.com/p/conflictterra/wiki/NKGGatlingTurret)|
|  |[Anti-Air Missile Turret](http://code.google.com/p/conflictterra/wiki/NKGAntiAirMissileTurret)|
|  |[Dual Cannon Turret](http://code.google.com/p/conflictterra/wiki/NKGDualCannonTurret)|


---


## Story ##
Coming soon!


---


## History ##
The Engineer Support Mech has had an interesting life.  It was of course needed from the very start, being a constructor, and therefore was modeled rather early.  An early example of a model that never made it in-game still exists and is pictured below.

|![http://img15.imageshack.us/img15/190/bengisketch.png](http://img15.imageshack.us/img15/190/bengisketch.png)|
|:------------------------------------------------------------------------------------------------------------|
|The very bare sketch for my early Engineer ideas.|
|![http://img121.imageshack.us/img121/3909/bengimodelold.png](http://img121.imageshack.us/img121/3909/bengimodelold.png)|
|A surviving prototype for the Engineer Support Mech.|

The squat, stout quality was something I wanted an engineering unit to have.  I was no doubt heavily influenced by the [SCV's](http://starcraft.wikia.com/wiki/SCV) of [Starcraft](http://en.wikipedia.org/wiki/Starcraft).  The arm we see closest to us is a welding arm; the arm that we can't see on the other side has a primitive looking grabbing apparatus.  This model was relatively boring and generic though, and never looked quite right, so I scrapped it.

|![http://img14.imageshack.us/img14/8202/bengimodel.png](http://img14.imageshack.us/img14/8202/bengimodel.png)|
|:------------------------------------------------------------------------------------------------------------|
|The "bengi" that made it in-game and served faithfully for several months.|

What I made next is what made it into the game.  It was an odd little unit that greatly resembled the [Guntank](http://en.wikipedia.org/wiki/Guntank) from Gundam; its strange juxtaposition of treads and "mech" sensibilities, along with the crane boom jutting from the back are all obvious evidence of this.  I decided that some kind of crane would be an interesting step away from the expected "welder" or "drill" often seen on construction mechs.

Some time after we went public, however, it was decided that we needed some kind of visual indication that the unit was doing something.  Choosing to not use the "nano particles" that several of the TA-derived Spring games use, it was hard to tell if the static Engineer was doing anything.  We reached a compromise where a welding spark effect would appear on the end of its crane boom, simply to symbolize that it is working.

The compromise was a compromise though, and I always felt that the welding spark on the end of what is supposed to be a crane boom never made sense.  I resolved to remodel the unit, to give it welders arms so that the sparks would make sense, and to also animate it to make it a little more exciting.  What I imagined in my head was a pair of arms, very much like the kind that help produce modern cars.

|![http://www.generation5.org/content/2005/images/kuka.png](http://www.generation5.org/content/2005/images/kuka.png)|
|:------------------------------------------------------------------------------------------------------------------|
|A robotic welding arm.|

What I actually made where relatively similar, articulated arms coming from the body and resting idly in a "praying mantis" like position.  In another attempt to make the unit interesting, I gave the unit a giant welders mask, that pivoted down over the windshield while building.  For locomotion, I retained the utilitarian treads of the previous model, actually copying that very part of the model.

|![http://img215.imageshack.us/img215/6396/bengisketchmkii.png](http://img215.imageshack.us/img215/6396/bengisketchmkii.png)|
|:--------------------------------------------------------------------------------------------------------------------------|
|Sketches working out how the robotic arms would operate.|

Animating these new arms was quite a chore, and what I came up with wasn't exactly what I wanted, but to go any further would require a very complex list of animations.

Ironically, shortly after introducing this new model, Knorke approached us and we set to work installing the mining attribute of the game.  This turned the Engineer into an attacking unit, because the gadget works by having the miner "attack" a mine-able unit.  The building animation was applied to its firing animation, and what we have today is the mining, building Engineer Support Mech!


---


## Name ##
This unit was never given a Japanese name of any kind simply for the reason that even a good one could not replace its very role.  It was a builder, an engineer unit that would always be called that.  I feel this was the right choice.