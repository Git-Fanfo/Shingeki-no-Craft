#> snc:titans/spawn/wave
# Spawns 1 ore more pure titan in the world
#
# @input
#   Runs every second with a 20% of chance
#
# @output
#   1..4 pure titans
execute if score $titn_spwn_rate config matches 1..3 run summon item_display ~ ~ ~ {Tags:["titan","snc.titan.spawn"]}
execute if score $titn_spwn_rate config matches 1..3 if predicate snc:chance/60 run summon item_display ~ ~ ~ {Tags:["titan","snc.titan.spawn"]}
execute if score $titn_spwn_rate config matches 2..3 if predicate snc:chance/40 run summon item_display ~ ~ ~ {Tags:["titan","snc.titan.spawn"]}
execute if score $titn_spwn_rate config matches 3 if predicate snc:chance/30 run summon item_display ~ ~ ~ {Tags:["titan","snc.titan.spawn"]}
tag @s add near