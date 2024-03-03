execute as @p[scores={attack_vars=1}] anchored eyes positioned ^ ^ ^ rotated ~ 0 run summon snowball ^ ^ ^1 {Tags:["not_mov","motion_punch_up","attack"],Item:{id:"minecraft:arrow",Count:1b,tag:{CustomModelData:1}}}

execute on vehicle run attribute @s generic.scale base set 4.5

# Start combo
scoreboard players set combo_punch armor_vars 3