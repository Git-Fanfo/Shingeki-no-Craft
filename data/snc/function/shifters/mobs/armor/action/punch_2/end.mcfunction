scoreboard players set state armor_vars 5
execute on vehicle run effect clear @s slowness

# Follow combo
execute if score combo_punch armor_vars matches 2 run scoreboard players set state armor_vars 15
execute unless score combo_punch armor_vars matches 2 run scoreboard players set combo_punch armor_vars 0