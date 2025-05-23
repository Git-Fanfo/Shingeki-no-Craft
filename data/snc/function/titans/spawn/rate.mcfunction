summon item_display ~ ~ ~ {Tags:["titan","snc.titan.spawn"]}
scoreboard players remove @s random 1
execute if score @s random matches 1.. run function snc:titans/spawn/rate