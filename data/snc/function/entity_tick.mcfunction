scoreboard players set #villager_c spawn 0
execute if score ticks clock matches 14 run scoreboard players reset * Visib_Kill_Count

## Detect entity: This is the MOST IMPORTANT function of the DP
# Server: execute in minecraft:sncraft_surv run 
# Human
execute if score $van_vill config matches 0 as @e[type=#snc:eldian] at @s run function snc:ent/human
execute if score $van_vill config matches 1 as @e[type=player] at @s run function snc:ent/human
# Hostile (Included Titans and Shifters)
##### HOW TO CREATE A SHIFTER #####
execute as @e[type=#snc:snc,tag=!aj.attack.bone,tag=!aj.beast.bone,tag=!aj.armor.bone,tag=!aj.jaw.bone] at @s run function snc:ent/disable_mobs
# Items
execute as @e[type=item,tag=!snc.item] at @s run function snc:item/main

## LIMITS
execute if score #villager_c spawn matches 60.. as @e[type=villager,predicate=snc:villager/is_adult,sort=random,limit=5] run function snc:logic/kill_mob

## Detect entity: This is the MOST IMPORTANT function of the DP
# Reset Titan count
scoreboard players set titan_count spawn 0

# Detect if spawn shifter
function snc:shifters/doesnt_exists