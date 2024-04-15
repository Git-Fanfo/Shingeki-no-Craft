effect give @s invisibility infinite 0 true
effect give @s fire_resistance infinite 0 true

# Apply damage then carrier is hurt

$execute at @p[scores={$(shifter)_vars=1},tag=transform] rotated ~ 0 run function snc:shifters/mobs/$(shifter)/hitbox

$execute if score state $(shifter)_vars matches 0 run function snc:shifters/mobs/check_shipload