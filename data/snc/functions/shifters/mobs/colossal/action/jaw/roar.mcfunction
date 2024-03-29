tag @s remove consume
execute if score consume colossal_vars matches 220 run playsound minecraft:aot.colossal_roar player @a ~ ~ ~ 4 .9

$execute if score consume colossal_vars matches 220 run item replace entity @s armor.head with carved_pumpkin[custom_model_data=$(f1)]
$execute if score consume colossal_vars matches 214 run item replace entity @s armor.head with carved_pumpkin[custom_model_data=$(f2)]
$execute if score consume colossal_vars matches 210 run item replace entity @s armor.head with carved_pumpkin[custom_model_data=$(f3)]
$execute if score consume colossal_vars matches 206 run item replace entity @s armor.head with carved_pumpkin[custom_model_data=$(f4)]
$execute if score consume colossal_vars matches 202 run item replace entity @s armor.head with carved_pumpkin[custom_model_data=$(f5)]
$execute if score consume colossal_vars matches 116 run item replace entity @s armor.head with carved_pumpkin[custom_model_data=$(f4)]
$execute if score consume colossal_vars matches 112 run item replace entity @s armor.head with carved_pumpkin[custom_model_data=$(f3)]
$execute if score consume colossal_vars matches 108 run item replace entity @s armor.head with carved_pumpkin[custom_model_data=$(f2)]
$execute if score consume colossal_vars matches 104 run item replace entity @s armor.head with carved_pumpkin[custom_model_data=$(f1)]

execute if score consume colossal_vars matches 101 run scoreboard players set consume colossal_vars 0