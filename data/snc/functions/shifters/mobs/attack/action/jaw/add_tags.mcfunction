tag @s add consume

## Bite
scoreboard players set consume attack_vars 20
## Consume
execute if score state attack_vars matches 2 on vehicle rotated ~ 0 positioned ^ ^-.8 ^4 if entity @e[distance=..3,type=#snc:eldian,tag=!transform,predicate=!snc:shifters/attack/score] on passengers if entity @s[tag=aj.attack.root] run function snc:shifters/mobs/attack/animate/consume