scoreboard players set state armor_vars 5
execute on vehicle run effect clear @s slowness

# Follow combo
execute if score combo_punch armor_vars matches 4 run scoreboard players set state armor_vars 15
scoreboard players set combo_punch armor_vars 0