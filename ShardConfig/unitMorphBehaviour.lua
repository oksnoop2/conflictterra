unitMorphBehaviour = class(Behaviour)

function unitMorphBehaviour:Init()
game:SendToContent(self.unit:Internal():ID()..",morph")
end
