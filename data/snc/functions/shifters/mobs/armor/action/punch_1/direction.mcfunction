execute as @p[scores={armor_vars=1}] anchored eyes positioned ^ ^ ^ rotated ~ 0 run summon snowball ^ ^ ^1 {Tags:["not_mov","motion_punch_1","attack"],Item:{id:"minecraft:arrow",Count:1b,components:{"custom_model_data":1}}}

execute on vehicle run attribute @s generic.scale base set 5.9

## Start combo
scoreboard players set combo_punch armor_vars 1