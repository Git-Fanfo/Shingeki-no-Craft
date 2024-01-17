scoreboard players operation @s aj.id = .aj.last_id aj.id
tag @s remove aj.new
function #animated_java:attack/on_summon/as_rig_entities
execute if entity @s[tag=aj.attack.bone] run function #animated_java:attack/zzzzzzzz/on_summon/as_bones
execute if entity @s[tag=aj.attack.locator_origin] run function animated_java:attack/zzzzzzzz/summon/as_locator_origins
