scoreboard players set state attack_vars 5
execute on vehicle run effect clear @s slowness

# Follow combo
execute if score combo_kick attack_vars matches 2 run scoreboard players set state attack_vars 17
scoreboard players set combo_kick attack_vars 0