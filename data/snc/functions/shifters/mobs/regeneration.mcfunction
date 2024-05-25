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
effect give @s regeneration 1 0 true

## Prevent goes above max hp
#$scoreboard players set #regen $(shifter)_vars $(hp)
#$scoreboard players operation #regen $(shifter)_vars /= #2 constant
$execute if score titan.health.bar $(shifter)_vars matches $(hp).. run scoreboard players operation titan.health.bar $(shifter)_vars -= #4 constant

$execute if score titan.health.bar $(shifter)_vars matches 68..72 run effect give @s absorption 20 17 true
$execute if score titan.health.bar $(shifter)_vars matches 64..67 run effect give @s absorption 20 16 true
$execute if score titan.health.bar $(shifter)_vars matches 60..63 run effect give @s absorption 20 15 true

$execute if score titan.health.bar $(shifter)_vars matches 56..59 run effect give @s absorption 20 14 true
$execute if score titan.health.bar $(shifter)_vars matches 52..55 run effect give @s absorption 20 13 true
$execute if score titan.health.bar $(shifter)_vars matches 48..51 run effect give @s absorption 20 12 true
$execute if score titan.health.bar $(shifter)_vars matches 44..47 run effect give @s absorption 20 11 true
$execute if score titan.health.bar $(shifter)_vars matches 40..43 run effect give @s absorption 20 10 true

$execute if score titan.health.bar $(shifter)_vars matches 36..39 run effect give @s absorption 20 9 true
$execute if score titan.health.bar $(shifter)_vars matches 32..35 run effect give @s absorption 20 8 true
$execute if score titan.health.bar $(shifter)_vars matches 28..31 run effect give @s absorption 20 7 true
$execute if score titan.health.bar $(shifter)_vars matches 24..27 run effect give @s absorption 20 6 true
$execute if score titan.health.bar $(shifter)_vars matches 20..23 run effect give @s absorption 20 5 true

$execute if score titan.health.bar $(shifter)_vars matches 16..19 run effect give @s absorption 20 4 true
$execute if score titan.health.bar $(shifter)_vars matches 12..15 run effect give @s absorption 20 3 true
$execute if score titan.health.bar $(shifter)_vars matches 8..11 run effect give @s absorption 20 2 true
$execute if score titan.health.bar $(shifter)_vars matches 4..7 run effect give @s absorption 20 1 true
effect give @s absorption 20 0 true