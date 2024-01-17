scoreboard players reset @s reputation

scoreboard players remove @s reputation 1
execute if entity @s[tag=grass] run scoreboard players add @s reputation 2
tag @s remove grass

scoreboard players remove @s reputation 1
execute if entity @s[tag=light] run scoreboard players add @s reputation 2
tag @s remove light

execute unless score time clock matches 13000 run scoreboard players remove @s reputation 3
execute if entity @s[tag=sun] run scoreboard players add @s reputation 5
tag @s remove sun

execute if entity @s[tag=!near] run scoreboard players add @s reputation 2
tag @s remove near

scoreboard players remove @s[tag=handcuffs] reputation 20

## Set reputation
scoreboard players operation @a[distance=..100] reputation += @s reputation