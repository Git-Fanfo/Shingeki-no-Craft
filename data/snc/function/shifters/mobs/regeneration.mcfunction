#> snc:shifters/mobs/regeneration
# Manages regeneration for the $(shifter) titan (Titan form)
#
# @input
#   $(shifter) Titan
#
# @output
#   Regeneration every 10 seconds

# Always reset absorption
effect clear @s absorption
effect give @s regeneration 3 0 true

## Prevent goes above max hp
$execute if score titan.health.bar $(shifter)_vars matches $(hp).. run scoreboard players operation titan.health.bar $(shifter)_vars -= #4 constant
$scoreboard players operation titan.health.bar $(shifter)_vars /= #4 constant

$execute store result storage minecraft:$(shifter) absorption int 1 run scoreboard players get titan.health.bar $(shifter)_vars
$function snc:shifters/mobs/absorption with storage minecraft:$(shifter)