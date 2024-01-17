execute as @s[tag=not_titan] run scoreboard players reset @s kill_cool

execute as @s[tag=ai] run scoreboard players reset @s kill_cool
execute as @s[tag=model] run scoreboard players reset @s walk
execute as @s[tag=model] run scoreboard players reset @s movx
execute as @s[tag=model] run scoreboard players reset @s movz
execute as @s[tag=model] run scoreboard players reset @s atk
execute as @s[tag=model] run scoreboard players reset @s idle

tp @s ~ ~-256 ~
kill @s
return 0