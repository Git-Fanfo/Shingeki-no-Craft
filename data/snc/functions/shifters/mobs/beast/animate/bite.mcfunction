execute if score consume beast_vars matches 20 run item replace entity @s armor.head with carved_pumpkin[custom_model_data=59]
execute if score consume beast_vars matches 20 at @s run playsound minecraft:aot.attack_bite player @a ~ ~ ~ 5 1
execute if score consume beast_vars matches 18 run item replace entity @s armor.head with carved_pumpkin[custom_model_data=58]
execute if score consume beast_vars matches 16 run item replace entity @s armor.head with carved_pumpkin[custom_model_data=59]
execute if score consume beast_vars matches 14 run item replace entity @s armor.head with carved_pumpkin[custom_model_data=60]
execute if score consume beast_vars matches 12 anchored eyes positioned ^ ^ ^4 run function snc:shifters/mobs/beast/action/jaw/damage with storage minecraft:beast

execute if score consume beast_vars matches 1 run tag @s remove consume
execute if score consume beast_vars matches 1 run scoreboard players set $hold beast_vars 0