scoreboard players set state attack_vars 5
execute on vehicle run effect clear @s slowness

# Follow combo
execute if score combo_kick attack_vars matches 1 run scoreboard players set state attack_vars 17
execute unless score combo_kick attack_vars matches 1 run scoreboard players set combo_kick attack_vars 0