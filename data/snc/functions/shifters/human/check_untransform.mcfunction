##### HOW TO CREATE A SHIFTER #####
execute if score @s shifter_vars matches 1 run function snc:shifters/human/timer/cd with storage minecraft:cart
execute if score @s shifter_vars matches 2 run function snc:shifters/human/timer/cd with storage minecraft:colossal
execute if score @s shifter_vars matches 3 run function snc:shifters/human/timer/cd with storage minecraft:attack
execute if score @s shifter_vars matches 4 run function snc:shifters/human/timer/cd with storage minecraft:beast
execute if score @s shifter_vars matches 5 run function snc:shifters/human/timer/cd with storage minecraft:armor

## UNIQUE: CART
execute if score @s shifter_vars matches 1 as @a run function snc:shifters/mobs/cart/action/turret/clear_gun