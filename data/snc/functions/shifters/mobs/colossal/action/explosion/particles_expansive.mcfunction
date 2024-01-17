execute unless score @s colossal_vars matches 0.. run scoreboard players set @s colossal_vars 80

execute if score @s colossal_vars matches 80 run data merge entity @s {start_interpolation:0,interpolation_duration:20,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[40f,40f,40f]}}

execute if score @s colossal_vars matches 60 run data merge entity @s {item:{id:'minecraft:scute',Count:1b,tag:{CustomModelData:458}}, start_interpolation:0,interpolation_duration:10,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[50f,50f,50f]}}

execute if score @s colossal_vars matches 50 run data merge entity @s {item:{id:'minecraft:scute',Count:1b,tag:{CustomModelData:459}}, start_interpolation:0,interpolation_duration:10,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[60f,60f,60f]}}

execute if score @s colossal_vars matches 40 run data merge entity @s {item:{id:'minecraft:scute',Count:1b,tag:{CustomModelData:460}}, start_interpolation:0,interpolation_duration:10,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[70f,70f,70f]}}

execute if score @s colossal_vars matches 30 run data merge entity @s {item:{id:'minecraft:scute',Count:1b,tag:{CustomModelData:461}}, start_interpolation:0,interpolation_duration:30,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[80f,80f,80f]}}

scoreboard players remove @s colossal_vars 1
execute if score @s colossal_vars matches 0 run kill