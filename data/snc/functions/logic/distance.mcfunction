$particle minecraft:damage_indicator ~ ~ ~ $(half_minus_zero_point_five) $(half_minus_zero_point_five) $(half_minus_zero_point_five) 0 1000 force
$effect give @e[distance=..$(distance)] minecraft:glowing infinite 0 true
$effect clear @e[distance=$(distance)..] minecraft:glowing