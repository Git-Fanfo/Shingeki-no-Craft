tag @s add consume

## Bite
scoreboard players set consume armor_vars 20
## Consume
execute if score state armor_vars matches 2 on vehicle rotated ~ 0 positioned ^ ^-.8 ^4 if entity @e[distance=..3,type=#snc:human,tag=!transform,predicate=!snc:shifters/armor/score] on passengers if entity @s[tag=aj.armor.root] run function snc:shifters/mobs/armor/animate/consume