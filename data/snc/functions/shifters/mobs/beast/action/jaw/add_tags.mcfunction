tag @s add consume

## Bite
scoreboard players set consume beast_vars 20
## Consume
execute if score state beast_vars matches 2 if entity @e[distance=1..15,type=#snc:eldian,tag=!transform,predicate=!snc:shifters/beast/score] on vehicle on passengers if entity @s[tag=aj.beast.root] run function snc:shifters/mobs/beast/animate/consume