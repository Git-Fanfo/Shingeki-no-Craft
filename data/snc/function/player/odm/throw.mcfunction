execute at @s run playsound minecraft:aot.shoot player @a[distance=..8] ~ ~ ~ 1 1
## Effects
execute rotated ~ 0 positioned ^.5 ^ ^.2 run particle minecraft:cloud ~ ~1 ~ ^ ^ ^2000000 0.0000003 0 force
execute rotated ~ 0 positioned ^-.5 ^ ^.2 run particle minecraft:cloud ~ ~1 ~ ^ ^ ^2000000 0.0000003 0 force
ride @s dismount

# Save player ID to detect when ground
execute store result score @s id_player run data get entity @s UUID[0]
execute store result score @s id_detect_R run data get entity @s UUID[0]
execute store result score @s id_detect_L run data get entity @s UUID[0]

## O [hook][motion_odm] -> gets shoot and detects when motion_odm dies

# Summon hooks
summon snowball ^-1.5 ^.2 ^3 {Tags:["snc.projectile","odm","not_mov","motion_odm"],Passengers:[{id:"minecraft:block_display",Tags:["snc.projectile","odm","hook"],teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.1f,0.1f,0.1f]},block_state:{Name:"minecraft:black_concrete"}}],Item:{id:"minecraft:arrow",count:1,components:{"custom_model_data":1}}}

summon snowball ^1.5 ^.2 ^3 {Tags:["snc.projectile","odm","not_mov","motion_odm"],Passengers:[{id:"minecraft:block_display",Tags:["snc.projectile","odm","hook"],teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.1f,0.1f,0.1f]},block_state:{Name:"minecraft:black_concrete"}}],Item:{id:"minecraft:arrow",count:1,components:{"custom_model_data":1}}}

## ID
# ODM
execute as @e[tag=hook,sort=nearest,limit=2] run scoreboard players operation @s snc.odm_id = $id snc.odm_id
# Player
scoreboard players operation @s snc.odm_id = $id snc.odm_id
# Global
scoreboard players add $id snc.odm_id 1

# Wrap bats :')
##execute as @e[tag=rope,type=bat,sort=nearest,limit=2] at @s run data modify entity @s leash.UUID set from entity @e[tag=shooter,sort=nearest,limit=1] UUID

# ODM status -> 1 = threw
scoreboard players set @s odm_state -1
scoreboard players set @s man_cool 14

# Save Rotation to compare
execute store result score @s rot_throw run data get entity @s Rotation[0]

# Reset scan
scoreboard players set @s[scores={using_carrot=1..}] using_carrot 0