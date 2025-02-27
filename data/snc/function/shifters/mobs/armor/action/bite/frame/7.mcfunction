tag @s remove consume
scoreboard players set $hold armor_vars 0
execute unless score state armor_vars matches 2 run scoreboard players set state armor_vars 3
execute on vehicle run effect clear @s slowness