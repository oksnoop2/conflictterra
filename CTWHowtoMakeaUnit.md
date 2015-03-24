# Table of Contents #

  * [Introduction](http://code.google.com/p/conflictterra/wiki/CTWHowtoMakeaUnit#Introduction)
  * [Where to Start](http://code.google.com/p/conflictterra/wiki/CTWHowtoMakeaUnit#Where_to_Start)
    * [3D Model File](http://code.google.com/p/conflictterra/wiki/CTWHowtoMakeaUnit#3D_Model_File)
    * [Texture File](http://code.google.com/p/conflictterra/wiki/CTWHowtoMakeaUnit#Texture_File)
    * [Unit Definition](http://code.google.com/p/conflictterra/wiki/CTWHowtoMakeaUnit#Unit_Definition)
    * [Animation Script](http://code.google.com/p/conflictterra/wiki/CTWHowtoMakeaUnit#Animation_Script)
  * [First Step: Concept](http://code.google.com/p/conflictterra/wiki/CTWHowtoMakeaUnit#First_Step:__Concept)
  * [Second Step: Model](http://code.google.com/p/conflictterra/wiki/CTWHowtoMakeaUnit#Second_Step:__Model)
  * [Third Step: Texture](http://code.google.com/p/conflictterra/wiki/CTWHowtoMakeaUnit#Third_Step:__Texture)
  * [Fourth Step: Upspring](http://code.google.com/p/conflictterra/wiki/CTWHowtoMakeaUnit#Fourth_Step:__Upspring)
  * [Fifth Step: Unit Def](http://code.google.com/p/conflictterra/wiki/CTWHowtoMakeaUnit#Fifth_Step:__Unit_Def)
  * [Sixth Step: Animation Script](http://code.google.com/p/conflictterra/wiki/CTWHowtoMakeaUnit#Sixth_Step:__Animation_Script)
  * [Seventh Step: Test](http://code.google.com/p/conflictterra/wiki/CTWHowtoMakeaUnit#Seventh_Step:__Test)

# Introduction #

The Conflict Terra Way:  How to Make a Unit.  A tutorial explaining the basics to making a unit in the Spring RTS engine that details the methods used by the Conflict Terra Development Team.  While not explaining every facet of the process, or all of the valid paths to reaching the end, it is a strong sentiment in the two-man Development Team, and elsewhere in the community, that there is poor documentation on how to do things in the engine, so this is an attempt to lay out the basics in laymen's terms.


# Where to Start #

There are four files that are required as a bare minimum for a unit to be functional in the Spring engine.  My definition of functional is the unit can perform its intended task.  For example, a tank must be able to move and fire its weapon, or a radar tower is stationary and acts as a radar unit.

These four files are:

  * ## 3D Model File ##
> A unit needs a 3D model file for the engine to render.  The engine supports a handful of options, but Conflict Terra uses the .s3o for all of its models.

  * ## Texture File ##
> The 3D model file will call on an image file to provide its texture.  Conflict Terra uses targas to provide its textures.

  * ## Unit Definition ##
> The unit definition is a script that defines the parameters of the unit, and can provide info for several other secondary aspects of the unit, such as sounds, special effects, and wreckage info associated with the unit.  Conflict Terra uses .lua for all of its unit definitions.

  * ## Animation Script ##
> The animation script handles, naturally, all of the animation aspects associated with the unit.  This can be a lengthy script controlling the walking, aiming and firing of a humanoid mech unit, or an almost empty file for a static building.  Conflict Terra uses .lua for all of its animation scripts.

Although other files must be present and called upon for other aspects of the unit, such as sounds and special effects, these four files will provide the bare minimum for the engine to load the unit and a good starting point for further understanding of developing in the Spring Engine.

# First Step:  Concept #

The first step of creation for every unit, whether developers realize it or not, is conception.  This can come about as just a cool idea out of thin air, or as a reaction to fulfill a missing aspect in the game.  The functional concept of a unit is just as important as the physical concept, and this should be remembered.  Doodling or sketching on paper is a great starting place for unit concepts, especially when designing how the unit will look.

# Second Step:  Model #

The second step is to physically manifest your unit concept in the way of modeling it in a 3D modeling program.  There are a ton of options out there, but the free program Wings3D is the program used to model everything seen in Conflict Terra.  Wings3D is free, very intuitive, and whereas maybe not the most powerful software out there, it is a great place to begin.

See: http://code.google.com/p/conflictterra/wiki/Simple_Tank_Wings3d

# Third Step:  Texture #

See: http://springrts.com/phpbb/viewtopic.php?f=57&t=10612

# Fourth Step:  Upspring #

See: http://springrts.com/phpbb/viewtopic.php?f=14&t=13034

# Fifth Step:  Unit Def #

# Sixth Step:  Animation Script #

# Seventh Step:  Test #