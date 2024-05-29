scoreboard players set $hold beast_vars 0
scoreboard players set #grab beast_vars 0
scoreboard players set $area beast_vars 0
#execute as @e[tag=big_rock] run function snc:shifters/mobs/beast/action/grab/dismount
# Don't give items once is dead please
execute unless score state beast_vars matches 9 on vehicle on passengers if entity @s[type=player] run function snc:shifters/mobs/beast/abilities/give