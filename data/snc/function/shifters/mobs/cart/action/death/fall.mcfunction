# Tp player to neck
execute as @p[scores={cart_vars=1},tag=!transform,distance=..30] rotated ~ 0 run tp ^ ^4 ^-1

# Start riding armor_stand instead of horse
execute on vehicle run kill
ride @s dismount

summon armor_stand ^ ^ ^ {DisabledSlots:4144959,Invisible:1b,Tags:["cart","dead","shifter"]}
ride @s mount @n[type=armor_stand,tag=dead]
execute on vehicle run tp @s ~ ~ ~ ~ 0