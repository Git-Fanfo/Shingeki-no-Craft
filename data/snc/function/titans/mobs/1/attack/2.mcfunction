# Range
execute if score @s atk matches 140 on vehicle unless function snc:titans/mobs/1/attack/2_trigger run return -1
execute if score @s atk matches 140 run tag @s add attack
execute if score @s atk matches 140 run data modify entity @s item.components."minecraft:custom_data".hex_UUID set from storage snc:hx_chrs out
execute if score @s atk matches 140 run data modify storage snc:hx_chrs out set value "snc-blank-UUID"

# Attack
execute if score @s atk matches 140 on vehicle run effect give @s slowness 1 6 true
$execute as $(hex_UUID) run function snc:titans/model/grab

# Apply dmg
execute if score @s atk matches 132 as @e[type=!item,tag=!titan,distance=..3] at @s run function snc:titans/ai/damage_2 with storage minecraft:titan_1
execute if score @s atk matches 132 run playsound minecraft:aot.shifters.bite hostile @a ~ ~ ~ 2 1
execute if score @s atk matches 132 run data modify entity @s item.components."minecraft:custom_data".hex_UUID set value "snc-blank-UUID"