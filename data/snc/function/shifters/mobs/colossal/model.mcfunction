## Rotate model
execute store result score rotation colossal_vars run data get entity @s Rotation[0]
scoreboard players operation rotation colossal_vars -= player_rotation colossal_vars

## Rotate pivot
execute unless score rotation colossal_vars matches -20..20 on vehicle at @s on passengers if entity @s[tag=aj.colossal.root] run rotate @s ~ 0
## Height
execute unless score state colossal_vars matches 1 on vehicle at @s run function snc:shifters/mobs/colossal/action/movement/height

## Animations
function snc:shifters/mobs/colossal/animate/stop/main