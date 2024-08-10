execute if block ~ ~-.05 ~ #air run effect give @s levitation 1 0 true

execute if score @s snc.odm_gas matches 19.. run playsound minecraft:aot.shoot player @a ~ ~ ~ 3 1.05
execute if score @s snc.odm_gas matches 17..18 run playsound minecraft:aot.shoot player @a ~ ~ ~ 3 1.04
execute if score @s snc.odm_gas matches 15..16 run playsound minecraft:aot.shoot player @a ~ ~ ~ 3 1.03
execute if score @s snc.odm_gas matches 13..14 run playsound minecraft:aot.shoot player @a ~ ~ ~ 3 1.02
execute if score @s snc.odm_gas matches 11..12 run playsound minecraft:aot.shoot player @a ~ ~ ~ 3 1.01
execute if score @s snc.odm_gas matches 9..10 run playsound minecraft:aot.shoot player @a ~ ~ ~ 3 1.0
execute if score @s snc.odm_gas matches 7..8 run playsound minecraft:aot.shoot player @a ~ ~ ~ 3 0.99
execute if score @s snc.odm_gas matches 5..6 run playsound minecraft:aot.shoot player @a ~ ~ ~ 3 0.98
execute if score @s snc.odm_gas matches 3..4 run playsound minecraft:aot.shoot player @a ~ ~ ~ 3 0.96
execute if score @s snc.odm_gas matches 1..2 run playsound minecraft:aot.shoot player @a ~ ~ ~ 3 0.94

## Effects
execute rotated ~ 0 positioned ^.5 ^ ^.2 run particle minecraft:cloud ~ ~1 ~ ^ ^ ^2000000 0.0000003 0 force
execute rotated ~ 0 positioned ^-.5 ^ ^.2 run particle minecraft:cloud ~ ~1 ~ ^ ^ ^2000000 0.0000003 0 force
ride @s dismount

## O [hook][motion_odm] -> gets shoot and detects when motion_odm dies
# Summon hooks
$summon snowball ^-1.6 ^.2 ^ {Air:1s,Tags:["not_mov","motion_odm"],Passengers:[{id:"minecraft:item_display",item_display:"fixed",item:{id:"minecraft:player_head",count:1,components:{"minecraft:custom_model_data":4,"profile":{id:$(UUID)}}},Tags:["snc.projectile","snc.hook","snc.R"],teleport_duration:1,interpolation_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.03f,0.03f,0.3f]}}],Item:{id:"minecraft:arrow",count:1,components:{"custom_model_data":1}}}
$summon snowball ^1.6 ^.2 ^ {Air:1s,Tags:["not_mov","motion_odm"],Passengers:[{id:"minecraft:item_display",item_display:"fixed",item:{id:"minecraft:player_head",count:1,components:{"minecraft:custom_model_data":4,"profile":{id:$(UUID)}}},Tags:["snc.projectile","snc.hook","snc.L"],teleport_duration:1,interpolation_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.03f,0.03f,0.3f]}}],Item:{id:"minecraft:arrow",count:1,components:{"custom_model_data":1}}}

# Wrap bats :')
##execute as @e[tag=rope,type=bat,sort=nearest,limit=2] at @s run data modify entity @s leash.UUID set from entity @e[tag=shooter,sort=nearest,limit=1] UUID

# ODM status -> 1 on air
scoreboard players set @s odm_state 1
scoreboard players set @s snc.odm_push.left 0
scoreboard players set @s snc.odm_push.right 0

# Save Rotation to compare
execute store result score @s snc.odm_throw_x run data get entity @s Rotation[0]
execute store result score @s snc.odm_throw_y run data get entity @s Rotation[1]