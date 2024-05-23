execute if score consume armor_vars matches 20 run item replace entity @s armor.head with carved_pumpkin[custom_model_data=65]
execute if score consume armor_vars matches 20 at @s run playsound minecraft:aot.attack_bite player @a ~ ~ ~ 5 .75
execute if score consume armor_vars matches 18 run item replace entity @s armor.head with carved_pumpkin[custom_model_data=66]
execute if score consume armor_vars matches 16 run item replace entity @s armor.head with carved_pumpkin[custom_model_data=67]
execute if score consume armor_vars matches 14 run item replace entity @s armor.head with carved_pumpkin[custom_model_data=65]
execute if score consume armor_vars matches 13 run item replace entity @s armor.head with carved_pumpkin[custom_model_data=64]
execute if score consume armor_vars matches 12 anchored eyes positioned ^ ^-3 ^2.5 run function snc:shifters/mobs/armor/action/jaw/damage with storage minecraft:armor

execute if score consume armor_vars matches 1 run tag @s remove consume

execute if score $op.hardening armor_vars matches 1.. run function snc:shifters/mobs/armor/action/hardening/main {"shifter":"armor"}