require "taskqueues"
require "taskqueuebehaviour"
require "attackerbehaviour"
require "unitMorphBehaviour"

behaviours = {
bflagship = {
unitMorphBehaviour,
},
}

function defaultBehaviours(unit)
b = {}
u = unit:Internal()
if u:CanBuild() then
table.insert(b,TaskQueueBehaviour)
else
if IsAttacker(unit) then
table.insert(b,AttackerBehaviour)
end
end
return b
end