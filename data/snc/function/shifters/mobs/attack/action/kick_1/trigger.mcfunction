advancement revoke @s only snc:shifters/attack/kick
# combo_kick:
# -1 = ready > 1 = trigger > -2 = ready > 2 = trigger
execute if score combo_kick attack_vars matches -1 run scoreboard players set combo_kick attack_vars 1
execute if score combo_kick attack_vars matches -2 run scoreboard players set combo_kick attack_vars 2

# If not attacking finish combo
execute unless score state attack_vars matches 10..30 run scoreboard players set combo_kick attack_vars 0
# If it doesn't have combo then attack normally
execute if score combo_kick attack_vars matches ..0 run scoreboard players set state attack_vars 16