local preProcFile  = 'gamedata/movedefs_pre.lua'
local postProcFile = 'gamedata/movedefs_post.lua'

--------------------------------------------------------------------------------
--------------------------------------------------------------------------------

local moveDefine	=	VFS.Include("gamedata/movedefs_classes.lua")
local tags			= 	VFS.Include("gamedata/movedefs_tags.lua")
local tagList		=	tags.defaults
local cleanMovDefs	= {}

for _,mdef in pairs (moveDefine) do -- be sure to get everything lowercase
	for tagName,tagVal in pairs (tagList) do
		cleanMovDefs[string.lower(tagName)] = tagVal
	end		
end

for _,mdef in pairs (moveDefine) do
	for tagName,tagVal in pairs (tagList) do
		tagName = string.lower(tagName)
		if( mdef[tagName] == nil and tagVal ~=  0 ) then
		local tempVal
			if(tagName == "footprintz")then
				if (mdef["footprintx"] == nil) then
					mdef["footprintx"] = tagList["footprintx"]
				end
				tempVal = mdef["footprintx"]
			elseif(tagName == "slopemod")then
				if (mdef["maxslope"] == nil) then
					mdef["maxslope"] = tagList["maxslope"]
				end
				tempVal = 4/ (mdef["maxslope"] + 0.001)
			else
				tempVal = tagVal			
			end
			Spring.Echo("Warning! moveDef: " .. mdef["name"] .. ", assigning default value for missing tag " .. tagName .. "(" .. tempVal .. ")")
		end
	end		
end

if (VFS.FileExists(postProcFile)) then
  Shared = shared  -- make it global
  MoveDefs = moveDefine  -- make it global
  VFS.Include(postProcFile)
  MoveDefs = nil
end
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------

return moveDefine

--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
