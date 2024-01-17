tp @s ^-3.875 ^-13.6875 ^-2.5625 ~0 ~0
data modify storage animated_java Owner set from entity @s UUID
tag @s remove aj.new
function #animated_java:beast/on_summon/as_locator_entities