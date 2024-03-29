execute if score consume beast_vars matches 20 run item replace entity @s armor.head with carved_pumpkin[custom_model_data=59]
execute if score consume beast_vars matches 20 at @s run playsound minecraft:aot.attack_bite player @a ~ ~ ~ 5 1
execute if score consume beast_vars matches 18 run item replace entity @s armor.head with carved_pumpkin[custom_model_data=58]
execute if score consume beast_vars matches 16 run item replace entity @s armor.head with carved_pumpkin[custom_model_data=59]
execute if score consume beast_vars matches 14 run item replace entity @s armor.head with carved_pumpkin[custom_model_data=60]
execute if score consume beast_vars matches 12 at @s positioned ^ ^1.5 ^4 as @e[distance=..4,tag=!beast] run function snc:shifters/mobs/beast/action/jaw/damage with storage minecraft:beast
execute if score consume beast_vars matches 1 run tag @s remove consume