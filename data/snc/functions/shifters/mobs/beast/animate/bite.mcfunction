execute if score consume beast_vars matches 20 run item replace entity @s armor.head with carved_pumpkin[custom_model_data=59]
execute if score consume beast_vars matches 20 at @s run playsound minecraft:aot.attack_bite player @a ~ ~ ~ 5 1
execute if score consume beast_vars matches 18 run item replace entity @s armor.head with carved_pumpkin[custom_model_data=58]
execute if score consume beast_vars matches 16 run item replace entity @s armor.head with carved_pumpkin[custom_model_data=59]
execute if score consume beast_vars matches 14 run item replace entity @s armor.head with carved_pumpkin[custom_model_data=60]
execute if score consume beast_vars matches 12 anchored eyes positioned ^ ^ ^5 as @e[distance=..9,type=!item_display] run function snc:shifters/combat/jaw with storage minecraft:beast
execute if score consume beast_vars matches 1 run tag @s remove consume