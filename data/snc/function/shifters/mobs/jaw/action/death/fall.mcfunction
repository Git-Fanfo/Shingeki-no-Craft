# Tp player to neck
execute as @p[scores={jaw_vars=1},tag=!transform,distance=..30] rotated ~ 0 run tp ^ ^4 ^-1

# Start riding armor_stand instead of horse
execute on vehicle run kill
ride @s dismount

summon armor_stand ^ ^ ^ {DisabledSlots:4144959,Invisible:1b,Tags:["jaw","dead","shifter"],Pose:{Head:[-20f,10f,15f]},ArmorItems:[{},{},{},{id:"minecraft:carved_pumpkin",Count:1b,components:{"item_model":"shifters/jaw/bite/meat/1"}}]}

ride @s mount @n[type=armor_stand,tag=dead]
execute on vehicle run rotate @s ~ 0