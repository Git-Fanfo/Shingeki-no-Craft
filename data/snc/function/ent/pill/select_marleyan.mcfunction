execute as @s[tag=vehicle] run function snc:ent/pill/vehicle/main
execute as @s[tag=vehicle_m] unless predicate snc:is_riding run kill

execute if predicate snc:titan/kill run function snc:ent/pill/damage

execute as @s[type=!item_display] if score ticks clock matches 0 as @e[distance=..64,type=!item] run tag @s[distance=..40, type=villager, tag=!near] add near

return 0