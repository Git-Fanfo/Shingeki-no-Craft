tp @s ^2.1875 ^-2.9375 ^-0.25 ~0 ~0
data modify storage animated_java Owner set from entity @s UUID
tag @s remove aj.new
function #animated_java:armor/on_summon/as_locator_entities