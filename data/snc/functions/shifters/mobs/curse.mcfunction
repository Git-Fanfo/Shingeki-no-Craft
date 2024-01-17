##### HOW TO CREATE A SHIFTER #####
## Set previous curse
$execute if score @s armor_vars matches 1 run scoreboard players operation curse $(shifter)_vars = curse armor_vars
$execute if score @s attack_vars matches 1 run scoreboard players operation curse $(shifter)_vars = curse attack_vars
$execute if score @s beast_vars matches 1 run scoreboard players operation curse $(shifter)_vars = curse beast_vars
$execute if score @s colossal_vars matches 1 run scoreboard players operation curse $(shifter)_vars = curse colossal_vars
$execute if score @s cart_vars matches 1 run scoreboard players operation curse $(shifter)_vars = curse cart_vars
