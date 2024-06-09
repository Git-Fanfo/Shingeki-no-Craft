effect give @s invisibility infinite 0 true
effect give @s fire_resistance infinite 0 true

## Apply damage then carrier is hurt
$execute at @p[scores={$(shifter)_vars=1},tag=transform] rotated ~ 0 run function snc:shifters/mobs/$(shifter)/hitbox

#$execute unless entity @p[scores={$(shifter)_vars=1}] run scoreboard players set state $(shifter)_vars 9
#$execute if score state $(shifter)_vars matches 9 run scoreboard players set $energy $(shifter)_vars 0
$execute if score state $(shifter)_vars matches 9 run function snc:shifters/mobs/remove_hitboxes