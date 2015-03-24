# What is Space Rocks? #

Space Rocks is a gameplay mechanic thought up by Oksnoop, in an attempt to help break Conflict Terra away from the TA-isms that are most prevalent in the Spring Engine.  Space Rocks revolves almost entirely around the economy for Conflict Terra.

## How is it Different? ##

The idea behind Space Rocks is that instead of sending builders out into the world to build metal extractors over metal deposits on the map, which is the norm in the Spring Engine, metal is extracted from fallen meteorites that are spawned far above the map, and crash into the map.  This will change Conflict Terra's economy from being reliant on the metal maps that are created for most Spring maps, and make it reliant on a mechanic built into the game itself.

## How is it Implemented? ##

The current build of Conflict Terra does have the mechanic present, and it is playble but still in development. A .lua Gadget in the LuaRules/Gadgets folder is where the magic happens.

# Where We Stand Now #

The idea is still a very rough one, and needs to be refined before it can be effectively put into the game to serve its purpose.  At the moment, a version of the Gadget exists that causes an object to spawn above the map, and plummet to the ground where it detonates on impact and transforms into a feature, which can then be absorbed for resources.

## What Needs to be Done? ##

Several things.  Here is a list, in no particular order of importance, of what needs to be done:

  * A meteorite (and probably meteor) model needs to be modeled and textured.  A few variants could be created for the sake of variety.
  * Something resembling a wave system needs to be implemented.  At the moment, it is quite literally raining rocks from the sky.  This creates a very stressful gameplay experience, which is obviously very undesirable.  It also doesn't imitate a very realistic situation.  Meteorites don't constantly plummet through our skies, and meteors usually come in meteor showers.  The idea is to have the meteors fall in waves, something resembling the Logistic  resource wave present in Spring1944, only to have the waves more random instead of a steady, recorded time.
  * Different sizes of meteors should fall, and be spawned at different rates.  Example:  Small meteorites worth a small amount of metal would fall more often than larger meteorites which are worth much more.  Maybe have an occasional very large meteorite worth a very large amount of metal, something likely to only appearance once an hour or so.
  * Meteors striking units is a very obvious aspect of this mechanic.  While strikes happening out in the field are tolerable, impacts on players bases aren't desirable.  Some kind of element that protects player's bases would be good.  It should be noted that the meteor strikes will not deal a lot of damage, a mere scrape to most units.

# Extraction Methods #

Very little has been discussed concerning this aspect of the mechanic, but it should be addressed.  Up until now, it was just accepted that a brave builder unit would go out into the world to extract metal from these meteorites, but this method isn't very unique or exciting.  It also doesn't make a lot of sense in a "real world" setting, something that at least the NKG strives to maintain a semblance of.

## Proposed Methods ##

  * ### Builder Extraction ###
> This method is the simplest one and the one that is probably the least exciting.  It is basically where a builder reclaims the metal from the feature.
  * ### Special Building Extraction ###

> This method would not be very hard to implement.  The basic idea is that builders will have the option to build a building near the meteorite, which will then absorb the meteorite.  In essence it would emulate a metal extractor from the standard TA economy, but instead of drawing from the metal map, it would absorb the meteorite.  They could also of course absorb  other features near the building.

> If a builder building this building isn't desirable, a possible option would be to utilize the morph function so that a special unit morphs into the extractor described above.

# Current SpaceRock Code #

---

```
function gadget:GetInfo()
  return {
    name      = "Space Rock",
    desc      = "Spawns rocks from space.",
    author    = "oksnoop2",
    date      = "4/24/2010",
    license   = "GNU GPL, v2 or later",
    layer     = 0,
    enabled   = true,  --  loaded by default?
  }
end


if not gadgetHandler:IsSyncedCode() then
  return false -- no unsynced code
end


----- Settings -----------------------------------------------------------------

local meteorDefName  = "f1" -- meteor unit name, use a unit with a death explosion
local meteorInterval = 1 -- time between the arrival of meteors, in seconds
local fallGravity = 1
local meteorSpawnHeight = 5000
local burnEffect1 = "smallburn" -- CEG used for the meteor trail, needs to be visible out of los
local burnEffect2 = "medburn"

----------------------------------------------------------------------------------


local meteors = {} -- meteor set

function gadget:GameFrame(frame)

  if frame % (30 * meteorInterval) == 0 then 
    -- pick a random location as the meteor spawn point
    local meteorSpawnX = math.random(Game.mapSizeX)
    local meteorSpawnZ = math.random(Game.mapSizeZ)
    local meteorSpawnY = Spring.GetGroundHeight(meteorSpawnX, meteorSpawnZ) + meteorSpawnHeight
    
    -- create the meteor
    local meteorID = Spring.CreateUnit(meteorDefName, meteorSpawnX, meteorSpawnY, meteorSpawnZ, "n", Spring.GetGaiaTeamID()) -- will ignore Y and spawn at ground level
    meteors[meteorID] = true -- put it in the meteor set
    
    Spring.MoveCtrl.Enable(meteorID) -- tell spring we'll take care of moving the meteor
    Spring.MoveCtrl.SetPosition(meteorID, meteorSpawnX, meteorSpawnY, meteorSpawnZ) -- this time the height will be set correctly
    Spring.MoveCtrl.SetGravity(meteorID, fallGravity) -- make gravity affect the meteor
  end
  
  for meteorID in pairs(meteors) do  -- loop through every meteor in the meteor set
    local x, y, z = Spring.GetUnitPosition(meteorID)
    local h = Spring.GetGroundHeight(x, z)
    if y < h then -- if the meteor below ground level
      Spring.DestroyUnit(meteorID) -- make it explode
      meteors[meteorID] = nil -- remove it from the meteor set
    else -- above ground, show the meteor trail
      Spring.SpawnCEG(burnEffect1, x, y + 30, z)
      Spring.SpawnCEG(burnEffect2, x, y, z)
    end
  end
end

```