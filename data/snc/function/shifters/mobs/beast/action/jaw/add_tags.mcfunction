tag @s add consume

## Bite
scoreboard players set consume beast_vars 20
## Consume
execute if score state beast_vars matches 2 on vehicle rotated ~ 0 positioned ^ ^-1.7 ^4 if entity @e[distance=..3,type=#snc:human,tag=!transform,predicate=!snc:shifters/beast/score] on passengers if entity @s[tag=aj.beast.root] run function snc:shifters/mobs/beast/animate/consume