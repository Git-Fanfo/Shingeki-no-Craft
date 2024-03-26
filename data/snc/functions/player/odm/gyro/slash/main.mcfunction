execute if score @s odm_action matches -25 run particle sweep_attack ^ ^1 ^1.5 0 0 0 1 3 force

execute as @e[distance=.1..2.5] run damage @s 9 player_attack by @p

execute if score @s odm_action matches -25 run playsound minecraft:entity.player.attack.sweep player @a ~ ~ ~ 1 .8
execute if score @s odm_action matches -24 run playsound minecraft:entity.player.attack.sweep player @a ~ ~ ~ 1 1.3

execute if score @s odm_action matches -24 run function snc:player/odm/gyro/slash/particles

execute if score @s odm_action matches -21 run tag @s remove spin
scoreboard players add @s odm_action 1
execute if score @s odm_action matches -20 run scoreboard players set @s odm_action 0