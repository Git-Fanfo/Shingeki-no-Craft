scoreboard players operation @s aj.id = .aj.last_id aj.id
tag @s remove aj.new
function #animated_java:beast/on_summon/as_rig_entities
execute if entity @s[tag=aj.beast.bone] run function #animated_java:beast/zzzzzzzz/on_summon/as_bones
execute if entity @s[tag=aj.beast.locator_origin] run function animated_java:beast/zzzzzzzz/summon/as_locator_origins
