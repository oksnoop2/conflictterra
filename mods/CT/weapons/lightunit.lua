--------------------------------------------------------------------------------

local weaponDef = {
  areaOfEffect       = 512,
  ballistic          = true,
  filename           = "weapons/explosions.tdf",
  impulseFactor      = 0,
  name               = "Light Unit",
  range              = 480,
  reloadtime         = 3.6,
  renderType         = 4,
  shakeduration      = ".3",
  shakemagnitude     = "8",
  soundHit           = "mechboom1",
  soundHitVolume     = 8,
  soundStart         = "largegun",
  turret             = true,
  weaponVelocity     = 250,
	      damage                  = {
		Cruiser = 200,
		Building = 200,
		Mech = 200,
		Tank = 200,
		Aircraft = 200,
		Ship = 200,
		Sub = 200,
	      },
}
--------------------------------------------------------------------------------

return lowerkeys({["lightunit"] = weaponDef})

--------------------------------------------------------------------------------
