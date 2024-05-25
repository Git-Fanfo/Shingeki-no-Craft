# Tp player to neck
execute as @p[scores={armor_vars=1},tag=!transform,distance=..30] rotated ~ 0 run tp ^ ^4 ^-1

# Start riding armor_stand instead of horse
execute on vehicle run kill
ride @s dismount

summon armor_stand ^ ^ ^ {DisabledSlots:4144959,Invisible:1b,Tags:["armor","dead","shifter"],Pose:{Head:[65f,0f,0f]},ArmorItems:[{},{},{},{id:"minecraft:carved_pumpkin",Count:1b,components:{"custom_model_data":64}}]}
ride @s mount @e[type=armor_stand,tag=dead,sort=nearest,limit=1]
execute on vehicle run tp @s ~ ~ ~ ~ 0