tp @s ^-2 ^-2.625 ^-0.25 ~0 ~0
data modify storage animated_java Owner set from entity @s UUID
tag @s remove aj.new
function #animated_java:attack/on_summon/as_locator_entities