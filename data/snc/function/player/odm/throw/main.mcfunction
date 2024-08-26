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

execute unless score $odm_gas config matches 1 run playsound minecraft:aot.shoot player @a ~ ~ ~ 3 1.0

## Effects
execute rotated ~ 0 positioned ^.5 ^ ^.2 run particle minecraft:cloud ~ ~1 ~ ^ ^ ^2000000 0.0000003 0 force
execute rotated ~ 0 positioned ^-.5 ^ ^.2 run particle minecraft:cloud ~ ~1 ~ ^ ^ ^2000000 0.0000003 0 force
ride @s dismount

## O [hook][motion_odm] -> gets shoot and detects when motion_odm dies
# Summon hooks
$summon zombie_villager ^-1.1 ^.2 ^-1 {leash:{UUID:$(UUID)},Team:"nocol",Tags:["snc.projectile","snc.wire","snc.wire.init","snc.wire.air","snc.wire.R"],NoAI:1b,Silent:1b,Invulnerable:1b,HandItems:[{id:"minecraft:player_head",count:1,components:{"minecraft:custom_model_data":4,"minecraft:profile":{id:$(UUID)}}},{}],ArmorItems:[{},{},{},{id:"minecraft:arrow",count:1,components:{"custom_model_data":1}}],attributes:[{id:"minecraft:generic.scale",base:.4}]}

$summon zombie_villager ^1.1 ^.2 ^-1 {leash:{UUID:$(UUID)},Team:"nocol",Tags:["snc.projectile","snc.wire","snc.wire.init","snc.wire.air","snc.wire.L"],NoAI:1b,Silent:1b,Invulnerable:1b,HandItems:[{id:"minecraft:player_head",count:1,components:{"minecraft:custom_model_data":4,"minecraft:profile":{id:$(UUID)}}},{}],ArmorItems:[{},{},{},{id:"minecraft:arrow",count:1,components:{"custom_model_data":1}}],attributes:[{id:"minecraft:generic.scale",base:.4}]}

# ODM status -> 1 on air
scoreboard players set @s odm_state 1
scoreboard players set @s snc.odm_push.left 0
scoreboard players set @s snc.odm_push.right 0

# Save Rotation to compare
execute store result score @s snc.odm_throw_x run data get entity @s Rotation[0]
execute store result score @s snc.odm_throw_y run data get entity @s Rotation[1]