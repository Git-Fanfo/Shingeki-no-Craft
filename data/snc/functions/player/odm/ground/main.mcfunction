execute if entity @s[tag=R] run scoreboard players operation @a id_detect_R -= @s id_hook_R
execute if entity @s[tag=L] run scoreboard players operation @a id_detect_L -= @s id_hook_L

execute as @a run function snc:player/odm/ground/select_players
tag @e[tag=rope,sort=nearest, limit=1] add snc.hook.buried

kill @s