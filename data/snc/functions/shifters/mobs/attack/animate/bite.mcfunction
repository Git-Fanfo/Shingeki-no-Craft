execute if score consume attack_vars matches 20 run item replace entity @s armor.head with carved_pumpkin[custom_model_data=29]
execute if score consume attack_vars matches 20 at @s run playsound minecraft:aot.attack_bite player @a ~ ~ ~ 5 1
execute if score consume attack_vars matches 18 run item replace entity @s armor.head with carved_pumpkin[custom_model_data=30]
execute if score consume attack_vars matches 16 run item replace entity @s armor.head with carved_pumpkin[custom_model_data=27]
execute if score consume attack_vars matches 14 run item replace entity @s armor.head with carved_pumpkin[custom_model_data=28]
execute if score consume attack_vars matches 12 anchored eyes positioned ^ ^ ^2 as @e[distance=..6,type=!item_display] run function snc:shifters/combat/jaw with storage minecraft:attack
execute if score consume attack_vars matches 1 run tag @s remove consume