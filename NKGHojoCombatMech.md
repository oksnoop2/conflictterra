![http://img217.imageshack.us/img217/8919/hojotitle.png](http://img217.imageshack.us/img217/8919/hojotitle.png)


---


## Role ##

|![http://conflictterra.googlecode.com/svn/games/CT/unitpics/bbasicmech.png](http://conflictterra.googlecode.com/svn/games/CT/unitpics/bbasicmech.png)|Light, fast, rapid fire SM.  Built for skirmishing as opposed to holding the line.|
|:----------------------------------------------------------------------------------------------------------------------------------------------------|:---------------------------------------------------------------------------------|

The Hojo Combat Mech is a light, raiding oriented unit that does best in ambushes and other off-the-front-line maneuvers.  That being said, they are not completely frail, and can be sufficiently effective if supported by other units.  Armed with a Rapid Fire Cannon on each arm, they are able to deal adequate damage over time.  If they get into trouble, or are needing to traverse trying terrain, the Hojo Combat Mech has the ability to "Jump Jet" over obstacles and enemies.  This ability has a short recharge counter.

|[Link to Unit Definition.  This will display its current stats.](http://code.google.com/p/conflictterra/source/browse/games/CT/units/bbasicmech.lua)|
|:---------------------------------------------------------------------------------------------------------------------------------------------------|

|[Armor Class](http://code.google.com/p/conflictterra/wiki/ArmorSystem)|Mech|
|:---------------------------------------------------------------------|:---|
|[Attack Bonus](http://code.google.com/p/conflictterra/wiki/ArmorSystem)|None|

|Built From|[Saito Class Cruiser Mech Factory](http://code.google.com/p/conflictterra/wiki/NKGSaitoClassCruiser)|
|:---------|:---------------------------------------------------------------------------------------------------|
|  |[Matsudaira Class Cruiser Mech Factory](http://code.google.com/p/conflictterra/wiki/NKGMatsudairaClassCruiser)|

|![http://img827.imageshack.us/img827/1081/hojoraiding.png](http://img827.imageshack.us/img827/1081/hojoraiding.png)|
|:------------------------------------------------------------------------------------------------------------------|
|A group of Hojo Combat Mechs raiding a small mining operation.|


---


## Story ##
Coming soon!


---


## History ##
The Hojo Combat Mech was designed and modeled early in Conflict Terra's life, but was made fully operational much later.  This was because of the lack of knowledge on how to create a walking animation.  So, for the longest time, the "bbasicmech" was simply a tall and stiff robot that rolled on the ground as if on roller skates, and fired bullets from his pointed-down guns.

Early one morning, after several hours of working on other things for the game, I suddenly had a realization of how the animation scripts we'd been given actually worked.  After a few more hours, I was able to successfully animate Hojo to lift his arms, and fire forward.  What an accomplishment that was!

It would take a few more days before I could apply that acquired knowledge to form a very crude walking animation.  What I came up with that day is still sitting in the Hojo's animation script today, and has served as the basis for all of the other walking animations in Conflict Terra.  It may not be very pretty, but it gets the job done.

As far as the design for Hojo goes, it was perhaps one of the most drawn out designs I created.  There is a page in my "Conflict Terra notebook" dedicated to Hojo's various parts.  The goal was to create a grunt-type unit that also looked cool, and majestic if it were actually real.  Heavy inspiration was, of course, taken from the [GM](http://en.wikipedia.org/wiki/RGM-79_GM) of Gundam fame.

|![http://www.mahq.net/Mecha/gundam/msgundam/rgm-79.jpg](http://www.mahq.net/Mecha/gundam/msgundam/rgm-79.jpg)|
|:------------------------------------------------------------------------------------------------------------|
|The RGM-79 GM.|

It was with Hojo that I made the decision to eschew robotic hands that grasped the handles of guns, something very common in Mecha.  So Hojo was given "machine gun hands", with small shields protecting the sides of his "hands."  The thought put into Hojo goes so far as to include extra ammunition clips mounted on his outer thighs, so that the mech could release the spent ammunition clip, and with a combined motion of raising the leg and lowering the arm, load an extra clip.  This idea was of course not scripted into the unit, due to both its complexity and the fact that our units do not actually have ammo.

|![http://img840.imageshack.us/img840/507/hojoleg.png](http://img840.imageshack.us/img840/507/hojoleg.png)|
|:--------------------------------------------------------------------------------------------------------|
|The stabilizing spikes and extra ammunition clip on the leg of a Hojo Combat Mech.|

Another "real world" idea worked into Hojo are the odd spike-like protrusions coming off of the rear thigh.  The idea behind these was that if Hojo were to be hit with a powerful forward force, such as a well-aimed shell, the spikes could immediately extend into the ground and stabilize the enormous robot.  This is yet another idea that was not scripted into the unit.

|![http://img829.imageshack.us/img829/9205/hojosketch.png](http://img829.imageshack.us/img829/9205/hojosketch.png)|
|:----------------------------------------------------------------------------------------------------------------|
|The early sketches of the various parts of the Hojo.|

When I had finished the first version of Hojo's model, I chose to play around with poses and I discovered a tremendous flaw!  I had put in a solid core running down the entirety of his trunk.  This prevented him for pivoting his waist!  I fixed this problem with no issues, but if I hadn't of discovered it then, I would have gotten a unit into the game only to discover it could not properly function.

When the Hojo was originally given the Jump Jet ability, a rather ugly placeholder effect was put in the unit to ignite when it jumped.  The "buildersparks" CEG, the same one used by [Engineer Support Mech](http://code.google.com/p/conflictterra/wiki/NKGEngineerSupportMech) when it builds, was this effect.  Eventually, we learned how to make our own CEGs, and one of the first new custom ones was an appropriate Jump Jet exhaust, one I have wanted for a long time.  This new one drew heavily from anime, using a starburst-like base that ends in a fading streak of light.  Utilizing the same blue "flame" that all NKG units share, the Hojo was finally complete!

|![http://img508.imageshack.us/img508/8666/newjumpjetside.png](http://img508.imageshack.us/img508/8666/newjumpjetside.png)|
|:------------------------------------------------------------------------------------------------------------------------|
|A Hojo Combat Mech and Honda Combat Mech jumping with their new custom CEGs.|

The Hojo Combat Mech stands as the sort of "icon" or "poster boy" of Conflict Terra.  His memorable name and design probably outweigh his actual usefulness, but many a Hojo has finished a player, and many more have died trying.

|![http://img809.imageshack.us/img809/3554/hojoalpha.png](http://img809.imageshack.us/img809/3554/hojoalpha.png)|
|:--------------------------------------------------------------------------------------------------------------|
|An illustration of a readied Hojo Combat Mech.|


---


## Name ##
The name Hojo is taken from the [Hōjō clan](http://en.wikipedia.org/wiki/Late_Hōjō_clan) of medieval Japan.  The name was selected for this unit with the mentality that due to this mech's general purpose, and early-game deployment, it would stand as an "earlier" mech in the Conflict Terra universe.  The Hōjō were indeed a mighty and powerful clan in Japanese history, but by the time of the Sengoku Jidai, their power had begun to wane.  The name stands as a memorable and affectionate one, although often mispronounced and misspelled by players (as with almost all of the NKG's names.)