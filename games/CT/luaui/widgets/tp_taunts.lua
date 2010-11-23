--bugs: 
--"   audiotaunt1"
--sound spamming (just too lolzy too fix!)


----PlaySoundStream and StopSoundStream

function widget:GetInfo()
  return {
    name      = "Audio LOL System",
    desc      = "annoy your enemies with the power of rocknroll and jodeling!",
    author    = "knorke",
    date      = "23 Nov 2010",
    license   = "lol",
    layer     = 0,
    enabled   = true  --  loaded by default	
  }
end

local sendmsgprefix = "*AUDIO*"
local triggermsgprefix = "taunt"

--Spring.ExtractModArchiveFile("sounds\\tp\\money.ogg")
--Spring.ExtractModArchiveFile("sounds\\tp\\satan.ogg")
--Spring.ExtractModArchiveFile("sounds\\tp\\bad.ogg")
--Spring.ExtractModArchiveFile("sounds\\tp\\proph.ogg")

function widget:AddConsoleLine(msg, priority)
if (string.find (msg, triggermsgprefix) ~= nil and string.find(msg,">") ~=nil) then
	local tauntstring =  string.sub (msg, string.find(msg,">") + string.len(triggermsgprefix)+2) -- "GameID: xxxxxxx"	
	Spring.Echo (sendmsgprefix .. tauntstring)
	end

if (string.find (msg, sendmsgprefix) ~= nil) then
	local id = string.sub (msg, string.len(sendmsgprefix)+1)
	Spring.Echo ("playing taunt:" .. id)
	if (id=="01") then Spring.PlaySoundFile  ("sounds\\tp\\money.ogg") end
	if (id=="02") then Spring.PlaySoundFile ("sounds\\tp\\satan.ogg") end
	if (id=="03") then Spring.PlaySoundFile ("sounds\\tp\\bad.ogg") end
	if (id=="04") then Spring.PlaySoundFile ("sounds\\tp\\proph.ogg") end
	if (id=="05") then Spring.PlaySoundFile ("sounds\\tp\\jodel.ogg") end
	end

--if (string.find (msg, "lol") ~= nil) then
--	Spring.PlaySoundStream ("sounds\\tp\\money.ogg")
	--end
end