execute on vehicle on passengers if entity @s[tag=transform] run tag @s remove consume
scoreboard players set $hold beast_vars 0
execute unless score state beast_vars matches 2 run scoreboard players set state beast_vars 3