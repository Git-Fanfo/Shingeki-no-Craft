#> snc:shifters/select_dead_model
# Manages animation for the dead corpses of the shifters
#
# @input
#   The shifter's model with a 'dead' tag
#
# @output
#   Change the model depending on the frame

##### HOW TO CREATE A SHIFTER #####
execute if score @s cart_vars matches 1.. run scoreboard players remove @s cart_vars 1
execute if score @s colossal_vars matches 1.. run scoreboard players remove @s colossal_vars 1
execute if score @s armor_vars matches 1.. run scoreboard players remove @s armor_vars 1
execute if score @s attack_vars matches 1.. run scoreboard players remove @s attack_vars 1
execute if score @s beast_vars matches 1.. run scoreboard players remove @s beast_vars 1
execute if score @s jaw_vars matches 1.. run scoreboard players remove @s jaw_vars 1

execute as @s[tag=cart] run function snc:shifters/mobs/cart/action/death/corpse
execute as @s[tag=colossal] run function snc:shifters/mobs/colossal/action/death/corpse
execute as @s[tag=attack] run function snc:shifters/mobs/attack/action/death/corpse
execute as @s[tag=beast] run function snc:shifters/mobs/beast/action/death/corpse
execute as @s[tag=armor] run function snc:shifters/mobs/armor/action/death/corpse
execute as @s[tag=jaw] run function snc:shifters/mobs/jaw/action/death/corpse