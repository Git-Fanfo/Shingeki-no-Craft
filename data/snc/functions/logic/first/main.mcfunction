execute as @a at @s run playsound minecraft:block.iron_door.close player @s ~ ~ ~ 1 1.3
tellraw @a ["",{"text":"\nPlease ","color":"white"},{"text":"wait","color":"yellow"},{"text":" a few seconds while we set everything ready for you. ","color":"white"},{"text":"Don't leave the world","color":"yellow"},{"text":".\n","color":"white"}]
kill @e[type=!player, type=!villager, tag=!village, tag=!eldian, tag=!titan]
execute as @e[tag=ai] at @s run function snc:logic/kill_mob

scoreboard players set init config 9
reload