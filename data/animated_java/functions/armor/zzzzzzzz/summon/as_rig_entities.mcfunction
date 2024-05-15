scoreboard players operation @s aj.id = .aj.last_id aj.id
tag @s remove aj.new
function #animated_java:armor/on_summon/as_rig_entities
execute if entity @s[tag=aj.armor.bone] run function #animated_java:armor/zzzzzzzz/on_summon/as_bones
execute if entity @s[tag=aj.armor.locator_origin] run function animated_java:armor/zzzzzzzz/summon/as_locator_origins
