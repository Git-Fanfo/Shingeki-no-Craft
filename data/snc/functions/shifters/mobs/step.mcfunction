$execute unless block ~ ~-$(floor) ~ #snc:filter_shifter run function snc:shifters/mobs/floor
$execute unless block ~ ~-$(air) ~ #snc:filter_shifter run function snc:shifters/mobs/up
data merge entity @s {NoGravity:0b}

# Block in front
$execute rotated ~ 0 positioned ^ ^-$(air) ^2 unless block ~ ~ ~ #snc:filter_shifter run fill ~ ~$(air) ~ ~ ~$(air) ~ barrier replace air