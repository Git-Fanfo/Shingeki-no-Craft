tag @s remove consume

execute if score consume armor_vars matches 220 as @a[distance=..90] at @s run playsound minecraft:aot.shifters.armor.roar player @s ~ ~ ~ 8 1
execute if score consume armor_vars matches 218 run item replace entity @s armor.head with carved_pumpkin[custom_model_data=65]
execute if score consume armor_vars matches 216 run item replace entity @s armor.head with carved_pumpkin[custom_model_data=66]
execute if score consume armor_vars matches 214 run item replace entity @s armor.head with carved_pumpkin[custom_model_data=67]
execute if score consume armor_vars matches 212 run item replace entity @s armor.head with carved_pumpkin[custom_model_data=68]

execute if score consume armor_vars matches 173 run item replace entity @s armor.head with carved_pumpkin[custom_model_data=67]
execute if score consume armor_vars matches 170 run item replace entity @s armor.head with carved_pumpkin[custom_model_data=66]
execute if score consume armor_vars matches 167 run item replace entity @s armor.head with carved_pumpkin[custom_model_data=67]
execute if score consume armor_vars matches 164 run item replace entity @s armor.head with carved_pumpkin[custom_model_data=68]

execute if score consume armor_vars matches 124 run item replace entity @s armor.head with carved_pumpkin[custom_model_data=67]
execute if score consume armor_vars matches 120 run item replace entity @s armor.head with carved_pumpkin[custom_model_data=68]
execute if score consume armor_vars matches 70 run item replace entity @s armor.head with carved_pumpkin[custom_model_data=67]
execute if score consume armor_vars matches 67 run item replace entity @s armor.head with carved_pumpkin[custom_model_data=66]
execute if score consume armor_vars matches 64 run item replace entity @s armor.head with carved_pumpkin[custom_model_data=65]
execute if score consume armor_vars matches 61 run item replace entity @s armor.head with carved_pumpkin[custom_model_data=64]
execute if score consume armor_vars matches 61 run scoreboard players set consume armor_vars 0

execute if score $op.hardening armor_vars matches 1.. run function snc:shifters/mobs/armor/action/hardening/main {"shifter":"armor"}