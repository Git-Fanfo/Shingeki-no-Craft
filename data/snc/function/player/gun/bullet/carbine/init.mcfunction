execute if entity @s[type=player] run function snc:player/gun/bullet/carbine/player

particle dust_plume ^ ^-.6 ^1.5 0 0 0 0 1 force

execute store result score @s random run random value 1..3
execute if score @s random matches 1 run playsound aot.human.gun.carbine.shoot player @a ~ ~ ~ 8.5 0.9
execute if score @s random matches 2 run playsound aot.human.gun.carbine.shoot player @a ~ ~ ~ 8.5 1
execute if score @s random matches 3 run playsound aot.human.gun.carbine.shoot player @a ~ ~ ~ 8.5 1.1
scoreboard players reset @s random

#execute as @a[distance=..96] run function snc:shifters/mobs/cart/action/shipload/turrets/sfx