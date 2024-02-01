scoreboard players add @s odm_state 1
particle crit ^.75 ^1.6 ^.6 .1 .1 .1 .1 2 force @s
particle crit ^-.75 ^1.6 ^.6 .1 .1 .1 .1 2 force @s
playsound minecraft:block.iron_door.close player @s ~ ~ ~ 2 1.45
# title @s actionbar ["",{"text":"<","bold":true,"color":"dark_red"},{"text":"x","bold":true,"color":"gray"},{"text":">","bold":true,"color":"dark_red"}]