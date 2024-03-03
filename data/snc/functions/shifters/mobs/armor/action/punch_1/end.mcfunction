scoreboard players set state armor_vars 5
execute on vehicle run effect clear @s slowness
scoreboard players set mov armor_vars 80

## Follow combo
execute if score combo_punch armor_vars matches 2 run scoreboard players set state armor_vars 14
scoreboard players set combo_punch armor_vars 0