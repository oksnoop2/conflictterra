unitMorphBehaviour = class(Behaviour)

function unitMorphBehaviour:Init()
game:SendToContent(self.unit:Internal():ID()..",morph")
end


 [23:55] <AF> say I send a string "bannana emo" to gadget land from an AI
[23:55] <AF> and expect a response
[23:55] <AF> what callin would recieve that string?
[23:55] <AF> what is its name?
[23:56] <[LCC]jK> AICallIn(string data) <- string return_data
[23:56] <[LCC]jK> note it is unsynced