    local	resources = {
		graphics = {
			trees = {
				bark		= 'Bark.bmp',
				leaf		= 'bleaf.bmp',
				gran1		= 'gran.bmp',
				gran2		= 'gran2.bmp',
				birch1		= 'birch1.bmp',
				birch2		= 'birch2.bmp',
				birch3		= 'birch3.bmp',
			},
			maps = {
				detailtex	= 'detailtex2.bmp',
				watertex	= 'ocean.jpg',
			},
			groundfx = {
				groundflash	= 'groundflash.tga',
				groundring	= 'groundring.tga',
				seismic		= 'circles.tga',
			},
			projectiletextures = {
				circularthingy		= 'circularthingy.tga',
				laserend			= 'laserend.tga',
				laserfalloff		= 'laserfalloff.tga',
				randdots			= 'randdots.tga',
				smoketrail			= 'smoketrail.tga',
				wake				= 'wake.tga',
				flare				= 'flare.tga',
				explo				= 'explo.tga',
				explofade			= 'explofade.tga',
				heatcloud			= 'explo.tga',
				flame				= 'flame.tga',
				muzzleside			= 'muzzlefront.tga',
				muzzlefront			= 'muzzleside.tga',
				largebeam			= 'largelaserfalloff.tga',
				tpsmoke 			= 'tpsmoke.png',
				tpsmoke2			= 'tpsmoke2.png',
				tpdollar			= 'tpdollar.png',
				ct_machinegun_front                = 'ct_machinegun_front.png',
				ct_machinegun_side                 = 'ct_machinegun_side.png',
				ct_bigbeam                 = 'ct_bigbeam.png',
				ct_jumpjet_front                 = 'ct_jumpjet_front.png',
				ct_jumpjet_side                 = 'ct_jumpjet_side.png',
				ct_cannon_tank                 = 'ct_cannon_tank.png',
				ct_cannon_artillery                 = 'ct_cannon_artillery.png',
				ct_cannon_artillery_side                 = 'ct_cannon_artillery_side.png',
				ct_smokecloud                 = 'ct_smokecloud.png',
				ct_missiletail_side                 = 'ct_missiletail_side.png',
				ct_missiletail_side_big                 = 'ct_missiletail_side_big.png',
				ct_smoketrail                 = 'ct_smoketrail.png',
			},
		}
	}

local VFSUtils = VFS.Include('gamedata/VFSUtils.lua')

local function AutoAdd(subDir, map, filter)
  local dirList = RecursiveFileSearch("bitmaps/" .. subDir)
  for _, fullPath in ipairs(dirList) do
    local path, key, ext = fullPath:match("bitmaps/(.*/(.*)%.(.*))")
    if not fullPath:match("/%.svn") then
    local subTable = resources["graphics"][subDir] or {}
    resources["graphics"][subDir] = subTable
      if not filter or filter == ext then
        if not map then
          table.insert(subTable, path)
        else -- a mapped subtable
          subTable[key] = path
        end
      end
    end
  end
end

-- Add default caustics, smoke and scars
AutoAdd("caustics", false)
AutoAdd("smoke", false, "tga")
AutoAdd("scars", false)
-- Add mod groundfx and projectiletextures
AutoAdd("groundfx", true)
AutoAdd("projectiletextures", true)

return resources