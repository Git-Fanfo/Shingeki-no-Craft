execute if score consume colossal_vars matches 20 run item replace entity @s armor.head with carved_pumpkin[custom_model_data=16]
execute if score consume colossal_vars matches 17 at @s run playsound minecraft:aot.shifters.bite player @a ~ ~ ~ 6 .8
execute if score consume colossal_vars matches 17 run item replace entity @s armor.head with carved_pumpkin[custom_model_data=17]
execute if score consume colossal_vars matches 15 run item replace entity @s armor.head with carved_pumpkin[custom_model_data=18]
execute if score consume colossal_vars matches 13 run item replace entity @s armor.head with carved_pumpkin[custom_model_data=19]
execute if score consume colossal_vars matches 11 run item replace entity @s armor.head with carved_pumpkin[custom_model_data=20]
execute if score consume colossal_vars matches 9 run item replace entity @s armor.head with carved_pumpkin[custom_model_data=18]
execute if score consume colossal_vars matches 8 run item replace entity @s armor.head with carved_pumpkin[custom_model_data=16]

execute if score consume colossal_vars matches 8 anchored eyes positioned ^ ^ ^3 run function snc:shifters/mobs/colossal/action/jaw/damage with storage minecraft:colossal

execute if score consume colossal_vars matches 1 run tag @s remove consume