clear @s carved_pumpkin

##### HOW TO CREATE A SHIFTER #####
execute if score @s[tag=transform] shifter_vars matches 1 run function snc:shifters/mobs/cart/abilities/give
execute if score @s[tag=transform] shifter_vars matches 2 run function snc:shifters/mobs/colossal/abilities/give
execute if score @s[tag=transform] shifter_vars matches 3 run function snc:shifters/mobs/attack/abilities/give
execute if score @s[tag=transform] shifter_vars matches 4 run function snc:shifters/mobs/beast/abilities/give
execute if score @s[tag=transform] shifter_vars matches 5 run function snc:shifters/mobs/armor/abilities/give