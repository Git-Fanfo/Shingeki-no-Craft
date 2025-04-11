# Range
execute if score @s atk matches 70 on vehicle unless function snc:titans/mobs/ameer/attack/2_trigger run return -1
execute if score @s atk matches 70 run tag @s add attack
execute if score @s atk matches 70 run data modify entity @s item.components."minecraft:custom_data".hex_UUID set from storage snc:hx_titan out
execute if score @s atk matches 70 run data modify storage snc:hx_titan out set value "snc-blank-UUID"

# Attack
execute if score @s atk matches 70 on vehicle run effect give @s slowness 2 6 true
$execute as $(hex_UUID) run function snc:titans/model/grab

# Apply dmg
execute if score @s atk matches 54 as @e[type=!item,tag=!titan,distance=..4] at @s run function snc:titans/ai/damage_2 with storage minecraft:titan_6

execute if score @s atk matches 54 run playsound minecraft:aot.shifters.bite hostile @a ~ ~ ~ 2 1
execute if score @s atk matches 54 run data modify entity @s item.components."minecraft:custom_data".hex_UUID set value "snc-blank-UUID"