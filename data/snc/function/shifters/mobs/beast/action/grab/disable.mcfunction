scoreboard players set $hold beast_vars 0
scoreboard players set #grab beast_vars 0
scoreboard players set $area beast_vars 0
execute as @n[tag=snc.boulder] run tag @s add snc.boulder.drop
# Don't give items once is dead please
execute unless score state beast_vars matches 9 on vehicle on passengers if entity @s[type=player] run function snc:shifters/mobs/beast/abilities/give