#> snc:shifters/human/regeneration
# Manages regeneration for the $(shifter) titan (Human form)
#
# @input
#   $(shifter) Titan
#
# @output
#   Regeneration every time is called

## Always reset absorption
effect clear @s absorption
effect give @s regeneration 1 0 true
$execute unless score titan.health.bar $(shifter)_vars matches 20 run particle minecraft:campfire_signal_smoke ~ ~1 ~ .1 1 .1 .005 5 force

$execute if score titan.health.bar $(shifter)_vars matches 16..20 run effect give @s absorption 20 4 true
$execute if score titan.health.bar $(shifter)_vars matches 12..15 run effect give @s absorption 20 3 true
$execute if score titan.health.bar $(shifter)_vars matches 8..11 run effect give @s absorption 20 2 true
$execute if score titan.health.bar $(shifter)_vars matches 4..7 run effect give @s absorption 20 1 true
effect give @s absorption 20 0 true