# Range
execute if score @s atk matches 140 on vehicle unless function snc:titans/mobs/8/attack/1_trigger run return -1
execute if score @s atk matches 140 run tag @s add attack
execute if score @s atk matches 140 run data modify entity @s item.components."minecraft:custom_data".hex_UUID set from storage snc:hx_chrs out
execute if score @s atk matches 140 run data modify storage snc:hx_chrs out set value "snc-blank-UUID"

# Attack
$execute as $(hex_UUID) run function snc:titans/model/grab
# Apply dmg
execute if score @s atk matches 124 as @e[type=!item,tag=!titan,distance=..3] at @s run function snc:titans/ai/damage_1 with storage minecraft:titan_8
execute if score @s atk matches 124 run playsound minecraft:aot.shifters.bite hostile @a ~ ~ ~ 1.5 1.5
execute if score @s atk matches 124 run data modify entity @s item.components."minecraft:custom_data".hex_UUID set value "snc-blank-UUID"