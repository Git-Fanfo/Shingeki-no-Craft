# Tp player to neck
execute as @p[scores={attack_vars=1}] rotated ~ 0 run tp ^ ^4 ^-1

# Start riding armor_stand instead of horse
execute on vehicle run kill
ride @s dismount

summon armor_stand ^ ^ ^ {Invisible:1b,Tags:["attack","dead","shifter"],ArmorItems:[{},{},{},{id:"minecraft:carved_pumpkin",Count:1b,components:{"custom_model_data":27}}]}
ride @s mount @e[type=armor_stand,tag=dead,sort=nearest,limit=1]
execute on vehicle store result entity @s Rotation[0] float 1 run execute on passengers if entity @s[tag=aj.attack.root] run data get entity @s Rotation[0]

