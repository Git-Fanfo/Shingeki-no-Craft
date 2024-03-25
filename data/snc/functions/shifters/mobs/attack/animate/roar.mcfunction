tag @s remove consume
execute if score consume attack_vars matches 220 at @s run playsound minecraft:aot.attack_roar player @a ~ ~ ~ 5 1
execute if score consume attack_vars matches 217 run item replace entity @s armor.head with carved_pumpkin[custom_model_data=29]
execute if score consume attack_vars matches 215 run item replace entity @s armor.head with carved_pumpkin[custom_model_data=30]
execute if score consume attack_vars matches 213 run item replace entity @s armor.head with carved_pumpkin[custom_model_data=27]
execute if score consume attack_vars matches 105 run item replace entity @s armor.head with carved_pumpkin[custom_model_data=30]
execute if score consume attack_vars matches 102 run item replace entity @s armor.head with carved_pumpkin[custom_model_data=29]
execute if score consume attack_vars matches 99 run item replace entity @s armor.head with carved_pumpkin[custom_model_data=28]
execute if score consume attack_vars matches 99 run scoreboard players set consume attack_vars 0