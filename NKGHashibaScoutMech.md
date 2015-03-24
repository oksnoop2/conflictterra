![http://img8.imageshack.us/img8/171/hashibatitle.png](http://img8.imageshack.us/img8/171/hashibatitle.png)


---


## Role ##

|![http://conflictterra.googlecode.com/svn/games/CT/unitpics/bscoutmech.png](http://conflictterra.googlecode.com/svn/games/CT/unitpics/bscoutmech.png)|Very fast, lightly armored reconnaissance mech.  Unarmed and radar equipped.  Can build temporary camera towers.|
|:----------------------------------------------------------------------------------------------------------------------------------------------------|:---------------------------------------------------------------------------------------------------------------|

The Hashiba Scout Mech is purely a reconnaissance and intellegence unit.  Unarmed and easy to kill, it is very speedy and excellent at scouting out strategic positions.  It is equipped with a radar that extends to precisely the same range as its Line of Sight, so it can detect cloaked units.  Being very cheap, it is usually not a risky endeavor to build a handful of these units to help scout out the map.

The Hashiba Scout Mech has the unique ability to build temporary camera towers.  These towers are stealthy, cloaked buildings with a large Line of Sight.  It should be noted they DO NOT have any radar, and cloaked units will remain cloaked when near them.  After 60 seconds, the tower will self-destruct.  They cost a negligible 5 metal and 5 energy to build, and are built quickly, so they can be easily used to set up a way of observing key points on the map.

|[Link to Unit Definition.  This will display its current stats.](http://code.google.com/p/conflictterra/source/browse/games/CT/units/bscoutmech.lua)|
|:---------------------------------------------------------------------------------------------------------------------------------------------------|

|[Armor Class](http://code.google.com/p/conflictterra/wiki/ArmorSystem)|Mech|
|:---------------------------------------------------------------------|:---|
|[Attack Bonus](http://code.google.com/p/conflictterra/wiki/ArmorSystem)|Unarmed|

|Built From|[Saito Class Cruiser Mech Factory](http://code.google.com/p/conflictterra/wiki/NKGSaitoClassCruiser)|
|:---------|:---------------------------------------------------------------------------------------------------|
|  |[Matsudaira Class Cruiser Mech Factory](http://code.google.com/p/conflictterra/wiki/NKGMatsudairaClassCruiser)|


---


## Story ##
Coming soon!


---


## History ##
This unit was conceived very late into Conflict Terra's life.  A sort of light and quick scouting mech was desired by some early on, but was put off as being "unnecessary."  However, it was realized eventually that the NKG's pre-existing "radar units"--slow, clunky units that provided radar coverage--were un-enticing and hardly used.  The solution to this was to remodel the very concept of the "radar units" into something that more resembled a group of "scout units"--very cheap, fast, unarmed units that were easy to use.  The Hashiba was born soon after this realization.

Not long after it was decided that a scouting mech would make it into the game, I had a sudden realization of something I could do to make this new unit exciting, somewhat unique, and even more useful.  I would make it able to construct a temporary camera device, that would allow the player to spy on spots on the map without risking an actual unit there.  This idea was directly inspired by one of the few Abilities in [Warcraft III:  Reign of Chaos](http://en.wikipedia.org/wiki/Warcraft_3) that I actually liked.

The Night Elves had an [early unit](http://classic.battle.net/war3/nightelf/units/huntress.shtml) that could place a Sentinel--an owl spirit of sorts-- in a tree.  This Sentinel was invisible to other players, and could detect cloaked units.  This unique form of information gathering always greatly appealed to me, and I decided to use one of the few things I liked from Warcraft III.  The camera tower is my floating owl spirit now.

|![http://img13.imageshack.us/img13/7863/hashibasketch.png](http://img13.imageshack.us/img13/7863/hashibasketch.png)|
|:------------------------------------------------------------------------------------------------------------------|
|Preliminary sketches for the Hashiba, when it was still going to be humanoid.  Note the radar arms.|

Modeling the Hashiba proved to be an acute challenge.  An early idea I had for the unit was a very lanky humanoid design, that had "arms" that were in fact radar arrays.  A handful of doodles doomed this idea to looking too stupid.  I eventually went with a "reverse-joint" leg style, for the nimble quality I wanted to give it, and tried attaching some sort of radar arrays onto the body.  This too was deemed to look silly, so I opted to redo the unit.

|![http://3.bp.blogspot.com/_g-xTa3Zhnd8/SaRc4w5BWrI/AAAAAAAAJ7c/xXwz6Hm7RiE/s400/racing_mech_by_muzzoid.jpg](http://3.bp.blogspot.com/_g-xTa3Zhnd8/SaRc4w5BWrI/AAAAAAAAJ7c/xXwz6Hm7RiE/s400/racing_mech_by_muzzoid.jpg)|
|:----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
|The googled image I used to create the Hashiba.|

A lucky Google search yielded me the above image, an image I liked very much.  I then went with a rounded "body", with a center mounted camera.  This made sense for a recon unit afterall!

The camera tower that accompanies the unit was quickly and for the most part thoughtlessly modeled.  A cloaked, stealthy unit that would only ever live for a total of 60 seconds would not be seen often at all, and so I felt its design did not matter very much.  Going for a very basic and utilitarian design, I made it a simple tower with a rotating "camera disk."

Shortly after it was brought in-game, it was Oksnoop2 who suggested the camera lens of the mech rotate and zoom when the unit idled.  I decided this was something easy to add, and would bring a little bit of life to the unit.  Sadly, the movement of the lens is usually so far away and so subtle that its difficult to detect from a normal play distance, but its there!

When I was working on animating this unit, I was unsatisfied with the walking animation I developed for the [Ueda Combat Support Mech](http://code.google.com/p/conflictterra/wiki/NKGUedaCombatSupportMech).  Resolved to try and improve it for the Hashiba, I soon discovered I had made a much better and more fluid walking animation from a simple tweak.  I excitedly applied this new script to most of the reverse-joint leg mechs in the game.


---


## Name ##
Hashiba is a name that I, somewhat comically, never thought of until I was looking at this unit.  The acquired "family" name of one of the most important people in Japanese history, [Hashiba Hideyoshi](http://en.wikipedia.org/wiki/Hashiba_Hideyoshi) was the man who finally and completely united Japan during the Era of Warring States.  However, he started his life as a peasant, and so had no family name.  After gaining recognition under his lord [Oda Nobunaga](http://en.wikipedia.org/wiki/Oda_Nobunaga), Hideyoshi took the name Hashiba.  Later in life, Hideyoshi would earn the "family" name of Toyotomi, the one he is perhaps more well known for.

I feel this name is quite fitting of the unit.  Hideyoshi was nicknamed "Monkey" for his squirrelly-ness, and is often depicted today as a very hyper and active individual.  The name I missed when selecting famous samurai names ended up fitting its unit rather well.