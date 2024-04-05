$execute if score consume cart_vars matches 20 run item replace entity @s armor.head with carved_pumpkin[custom_model_data=$(f1)]
execute if score consume cart_vars matches 20 run playsound minecraft:aot.cart_bite player @a ~ ~ ~ 5 .7
$execute if score consume cart_vars matches 18 run item replace entity @s armor.head with carved_pumpkin[custom_model_data=$(f2)]
$execute if score consume cart_vars matches 14 run item replace entity @s armor.head with carved_pumpkin[custom_model_data=$(f3)]
$execute if score consume cart_vars matches 10 run item replace entity @s armor.head with carved_pumpkin[custom_model_data=$(f1)]
execute if score consume cart_vars matches 8 anchored eyes positioned ^ ^ ^3.25 as @e[distance=..3.5,tag=!cart,type=!item_display] run function snc:shifters/mobs/cart/action/jaw/damage with storage minecraft:attack

execute if score consume cart_vars matches 8 anchored eyes positioned ^ ^ ^3 run particle crit ~ ~ ~ 0 0 0 .45 30
execute if score consume cart_vars matches 1 run tag @s remove consume