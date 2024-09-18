execute as @s[tag=ai] run scoreboard players reset @s snc.despawn
execute as @s[tag=model] run scoreboard players reset @s walk
execute as @s[tag=model] run scoreboard players reset @s movx
execute as @s[tag=model] run scoreboard players reset @s movz
execute as @s[tag=model] run scoreboard players reset @s atk
execute as @s[tag=model] run scoreboard players reset @s idle
#execute if entity @s[tag=titan] run say death
tp @s ~ ~-256 ~
kill
return 1