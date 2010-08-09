unitMorphBehaviour = class(Behaviour)

function unitMorphBehaviour:Init()
game:SendToContent(self.unit:Internal():ID()..",morph")
game:SendToConsole("morph command sent")
end
