scoreboard players set state attack_vars 5
execute on vehicle run effect clear @s slowness
scoreboard players set mov attack_vars 80

# Follow combo
execute if score combo_punch attack_vars matches 4 run scoreboard players set state attack_vars 14
scoreboard players set combo_punch attack_vars 0