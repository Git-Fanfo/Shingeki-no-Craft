execute unless score @s colossal_vars matches ..1200 run scoreboard players set @s colossal_vars 1200
## Prevent 2 corpses at the same time
scoreboard players set $corpses colossal_vars 0
execute if score @s colossal_vars matches 1200 as @e[tag=shifter,tag=colossal,tag=dead] run scoreboard players add $corpses colossal_vars 1
execute if score $corpses colossal_vars matches 2.. as @e[tag=shifter,tag=colossal,tag=dead,limit=1,sort=arbitrary] run function snc:shifters/mobs/kill {"shifter":"colossal"}

## Reset
execute if score @s colossal_vars matches 1200 run bossbar remove minecraft:colossal_health
# execute if score @s colossal_vars matches 1200 run scoreboard players set state colossal_vars 0

execute if score @s colossal_vars matches 200.. run particle campfire_signal_smoke ^ ^ ^40 2 3 2 .01 1 force
execute if score @s colossal_vars matches 200.. run fill ^-3 ^-1 ^-3 ^3 ^-1 ^3 minecraft:air replace barrier

## Change variant
# data merge entity @e[type=minecraft:block_display,sort=nearest,limit=1] {start_interpolation:0,interpolation_duration:20,transformation:{translation:[0f,0f,-0.6f],left_rotation:[0.722f,0f,0f,0.692f],right_rotation:[0f,0f,0f,1f]}}
# data merge entity @e[type=minecraft:block_display,sort=nearest,limit=1] {start_interpolation:0,interpolation_duration:20,teleport_duration:40,transformation:{translation:[-4f,-4f,-4f],scale:[8f,8f,8f]}}

execute if score @s colossal_vars matches 1200 store result entity @s Rotation[0] float 1 on passengers run data get entity @s Rotation[0]
effect give @s slow_falling infinite 2 true

execute if score @s colossal_vars matches 1200 if score $form colossal_vars matches 0 on passengers run data merge entity @s {item:{id:'minecraft:turtle_scute',Count:1b,components:{"custom_model_data":502}}}
execute if score $form colossal_vars matches 0 run attribute @s generic.scale base set 10
execute if score @s colossal_vars matches 1200 if score $form colossal_vars matches 1 on passengers run data merge entity @s {item:{id:'minecraft:turtle_scute',Count:1b,components:{"custom_model_data":460}},start_interpolation:0,interpolation_duration:116,transformation:{translation:[0f,0f,53f],left_rotation:[0.722f,0f,0f,0.692f],right_rotation:[0f,0f,0f,1f]}}

execute if score @s colossal_vars matches 1086 if score $form colossal_vars matches 1 positioned ^ ^ ^40 run scoreboard players add @a[distance=..120] earthquake 15
execute if score @s colossal_vars matches 1086 if score $form colossal_vars matches 1 run playsound aot.rock_smash master @a ^ ^ ^40 6 .1
execute if score @s colossal_vars matches 1082 if score $form colossal_vars matches 1 on passengers run data merge entity @s {item:{id:'minecraft:turtle_scute',Count:1b,components:{"custom_model_data":459}}}
execute if score @s colossal_vars matches 1080 if score $form colossal_vars matches 1 on passengers run data merge entity @s {item:{id:'minecraft:turtle_scute',Count:1b,components:{"custom_model_data":458}}}
execute if score @s colossal_vars matches 1078 if score $form colossal_vars matches 1 on passengers run data merge entity @s {item:{id:'minecraft:turtle_scute',Count:1b,components:{"custom_model_data":457}}}
execute if score @s colossal_vars matches 1076 if score $form colossal_vars matches 1 on passengers run data merge entity @s {item:{id:'minecraft:turtle_scute',Count:1b,components:{"custom_model_data":456}}}
execute if score @s colossal_vars matches 1074 if score $form colossal_vars matches 1 on passengers run data merge entity @s {item:{id:'minecraft:turtle_scute',Count:1b,components:{"custom_model_data":455}}}
execute if score @s colossal_vars matches 1073 if score $form colossal_vars matches 1 on passengers run data merge entity @s {item:{id:'minecraft:turtle_scute',Count:1b,components:{"custom_model_data":454}}}
execute if score @s colossal_vars matches 1070 if score $form colossal_vars matches 1 on passengers run data merge entity @s {item:{id:'minecraft:turtle_scute',Count:1b,components:{"custom_model_data":455}}}
execute if score @s colossal_vars matches 1068 if score $form colossal_vars matches 1 on passengers run data merge entity @s {item:{id:'minecraft:turtle_scute',Count:1b,components:{"custom_model_data":454}}}

execute if score @s colossal_vars matches 1100 run function snc:shifters/mobs/colossal/action/death/decay
execute if score @s colossal_vars matches 1050 run function snc:shifters/mobs/colossal/action/death/decay
execute if score @s colossal_vars matches 1000 run function snc:shifters/mobs/colossal/action/death/decay
execute if score @s colossal_vars matches 950 run function snc:shifters/mobs/colossal/action/death/decay
execute if score @s colossal_vars matches 900 run function snc:shifters/mobs/colossal/action/death/decay
execute if score @s colossal_vars matches 850 run function snc:shifters/mobs/colossal/action/death/decay
execute if score @s colossal_vars matches 800 run function snc:shifters/mobs/colossal/action/death/decay
execute if score @s colossal_vars matches 750 run function snc:shifters/mobs/colossal/action/death/decay
execute if score @s colossal_vars matches 700 run function snc:shifters/mobs/colossal/action/death/decay
execute if score @s colossal_vars matches 650 run function snc:shifters/mobs/colossal/action/death/decay
execute if score @s colossal_vars matches 600 run function snc:shifters/mobs/colossal/action/death/decay
execute if score @s colossal_vars matches 550 run function snc:shifters/mobs/colossal/action/death/decay
execute if score @s colossal_vars matches 450 run function snc:shifters/mobs/colossal/action/death/decay
execute if score @s colossal_vars matches 400 run function snc:shifters/mobs/colossal/action/death/decay
execute if score @s colossal_vars matches 350 run function snc:shifters/mobs/colossal/action/death/decay
execute if score @s colossal_vars matches 300 run function snc:shifters/mobs/colossal/action/death/decay
execute if score @s colossal_vars matches 250 run function snc:shifters/mobs/colossal/action/death/decay
execute if score @s colossal_vars matches 200 run function snc:shifters/mobs/colossal/action/death/decay

execute if score @s colossal_vars matches 0 run particle minecraft:cloud ^ ^ ^40 2 2 2 .2 500 force
execute if score @s colossal_vars matches 0 run playsound minecraft:aot.steam player @a ~ ~ ~ 2 .9
execute if score @s colossal_vars matches 0 run function snc:shifters/mobs/kill {"shifter":"colossal"}