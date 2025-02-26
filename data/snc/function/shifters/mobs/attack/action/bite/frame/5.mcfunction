tag @s remove consume
scoreboard players set $hold attack_vars 0
execute unless score state attack_vars matches 2 run scoreboard players set state attack_vars 3