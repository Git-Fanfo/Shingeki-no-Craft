# Tp player to neck
execute as @p[scores={colossal_vars=1}] rotated ~ 0 run tp ^ ^7 ^-1

# Start riding armor_stand instead of horse
execute on vehicle run kill
ride @s dismount

summon armor_stand ^ ^ ^ {Invisible:1b,Tags:["colossal","dead","shifter"]}
ride @s mount @e[type=armor_stand,tag=dead,sort=nearest,limit=1]
execute on vehicle store result entity @s Rotation[0] float 1 run execute on passengers if entity @s[tag=aj.colossal.root] run data get entity @s Rotation[0]

