# Tp player to neck
execute as @p[scores={beast_vars=1},tag=!transform,distance=..30] rotated ~ 0 run tp ^ ^11 ^-1

# Start riding armor_stand instead of horse
execute on vehicle run kill
ride @s dismount

summon armor_stand ^ ^ ^ {DisabledSlots:4144959,Invisible:1b,Tags:["beast","dead","shifter"],Pose:{Head:[20f,0f,0f]},ArmorItems:[{},{},{},{id:"minecraft:carved_pumpkin",Count:1b,components:{"custom_model_data":58}}]}
ride @s mount @e[type=armor_stand,tag=dead,sort=nearest,limit=1]
execute on vehicle store result entity @s Rotation[0] float 1 run execute on passengers if entity @s[tag=aj.beast.root] run data get entity @s Rotation[0]