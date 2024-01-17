execute if entity @s[tag=hook,tag=R] run scoreboard players operation @a id_detect_R -= @s id_hook_R
execute if entity @s[tag=hook,tag=L] run scoreboard players operation @a id_detect_L -= @s id_hook_L

execute as @a run function snc:player/odm/ground/select_players
execute as @e[tag=rope,sort=nearest, limit=1] at @s run function snc:player/odm/ground/bury

kill @s