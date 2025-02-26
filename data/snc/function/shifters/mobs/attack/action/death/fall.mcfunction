# Tp player to neck
execute as @p[scores={attack_vars=1},tag=!transform,distance=..30] rotated ~ 0 run tp ^ ^4 ^-1

# Start riding armor_stand instead of horse
execute on vehicle run kill
ride @s dismount

summon armor_stand ^ ^ ^ {DisabledSlots:4144959,Invisible:1b,Tags:["attack","dead","shifter"],ArmorItems:[{},{},{},{id:"minecraft:carved_pumpkin",Count:1b,components:{"item_model":"shifters/attack/bite/meat/4"}}]}
ride @s mount @e[type=armor_stand,tag=dead,sort=nearest,limit=1]
execute on vehicle run rotate @s ~ 0
