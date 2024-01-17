execute if score @s odm_action matches -25 run particle sweep_attack ^ ^1 ^1.5 0 0 0 1 3 force

execute as @e[distance=.1..2.5,type=!creeper] run damage @s 9 player_attack by @p

execute if score @s odm_action matches -25 run playsound minecraft:entity.player.attack.sweep player @a ~ ~ ~ 1 .8
execute if score @s odm_action matches -24 run playsound minecraft:entity.player.attack.sweep player @a ~ ~ ~ 1 1.3

execute if score @s odm_action matches -24 run particle cloud ^0.3 ^1 ^2 0 0 0 0 1 force
execute if score @s odm_action matches -24 run particle cloud ^0.817638090205042 ^1 ^1.93185165257814 0 0 0 0 1 force
execute if score @s odm_action matches -24 run particle cloud ^1.3 ^1 ^1.73205080756888 0 0 0 0 1 force
execute if score @s odm_action matches -24 run particle cloud ^1.7142135623731 ^1 ^1.4142135623731 0 0 0 0 1 force
execute if score @s odm_action matches -24 run particle cloud ^2.03205080756888 ^1 ^1 0 0 0 0 1 force
execute if score @s odm_action matches -24 run particle cloud ^2.23185165257814 ^1 ^0.517638090205042 0 0 0 0 1 force
execute if score @s odm_action matches -24 run particle cloud ^2.3 ^1 ^0 0 0 0 0 1 force
execute if score @s odm_action matches -24 run particle cloud ^2.23185165257814 ^1 ^-0.517638090205042 0 0 0 0 1 force
execute if score @s odm_action matches -24 run particle cloud ^2.03205080756888 ^1 ^-1. 0 0 0 0 1 force
execute if score @s odm_action matches -24 run particle cloud ^1.7142135623731 ^1 ^-1.4142135623731 0 0 0 0 1 force
execute if score @s odm_action matches -24 run particle cloud ^1.3 ^1 ^-1.73205080756888 0 0 0 0 1 force
execute if score @s odm_action matches -24 run particle cloud ^0.817638090205042 ^1 ^-1.93185165257814 0 0 0 0 1 force
execute if score @s odm_action matches -24 run particle cloud ^0.3 ^1 ^-2 0 0 0 0 1 force
execute if score @s odm_action matches -24 run particle cloud ^-0.217638090205042 ^1 ^-1.93185165257814 0 0 0 0 1 force
execute if score @s odm_action matches -24 run particle cloud ^-0.7 ^1 ^-1.73205080756888 0 0 0 0 1 force
execute if score @s odm_action matches -24 run particle cloud ^-1.11421356237309 ^1 ^-1.4142135623731 0 0 0 0 1 force
execute if score @s odm_action matches -24 run particle cloud ^-1.43205080756888 ^1 ^-1 0 0 0 0 1 force
execute if score @s odm_action matches -24 run particle cloud ^-1.63185165257814 ^1 ^-0.517638090205041 0 0 0 0 1 force
execute if score @s odm_action matches -24 run particle cloud ^-1.7 ^1 ^0 0 0 0 0 1 force
execute if score @s odm_action matches -24 run particle cloud ^-1.63185165257814 ^1 ^0.517638090205041 0 0 0 0 1 force
execute if score @s odm_action matches -24 run particle cloud ^-1.43205080756888 ^1 ^1 0 0 0 0 1 force
execute if score @s odm_action matches -24 run particle cloud ^-1.1142135623731 ^1 ^1.41421356237309 0 0 0 0 1 force
execute if score @s odm_action matches -24 run particle cloud ^-0.700000000000001 ^1 ^1.73205080756888 0 0 0 0 1 force
execute if score @s odm_action matches -24 run particle cloud ^-0.217638090205041 ^1 ^1.93185165257814 0 0 0 0 1 force

execute if score @s odm_action matches -21 run tag @s remove spin
scoreboard players add @s odm_action 1
execute if score @s odm_action matches -20 run scoreboard players set @s odm_action 0