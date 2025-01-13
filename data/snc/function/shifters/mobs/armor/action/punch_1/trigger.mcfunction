advancement revoke @s only snc:shifters/armor/punch
# combo_punch:
# -1 = ready > 1 = trigger > -2 = ready > 2 = trigger
execute if score combo_punch armor_vars matches -1 run scoreboard players set combo_punch armor_vars 1
execute if score combo_punch armor_vars matches -2 run scoreboard players set combo_punch armor_vars 2

# If not attacking finish combo
execute unless score state armor_vars matches 10..30 run scoreboard players set combo_punch armor_vars 0
# If it doesn't have combo then attack normally
execute if score combo_punch armor_vars matches ..0 run scoreboard players set state armor_vars 13