## Detect floor
# Is on floor?
execute if block ~ ~-13 ~ #snc:filter_shifter run scoreboard players set on_floor beast_vars 0
execute unless block ~ ~-13 ~ #snc:filter_shifter run scoreboard players set on_floor beast_vars 1
# Prevent going throught walls 
##execute rotated ~ 0 positioned ^ ^-8 ^3 if block ~ ~ ~ #snc:filter_shifter run data merge entity @s {Attributes:[{Name:generic.movement_speed,Base:0.36}]}
execute unless score state beast_vars matches 2 rotated ~ 0 positioned ^ ^-8 ^3 unless block ~ ~ ~ #snc:filter_shifter run data merge entity @s {Attributes:[{Name:generic.movement_speed,Base:0}]}

## Prevent clipping ground
# On surface
execute if score state beast_vars matches 1 run function snc:shifters/mobs/step {"floor":19, "air":18}
execute if score state beast_vars matches 2 run function snc:shifters/mobs/step {"floor":11, "air":10}
execute if score state beast_vars matches 3..4 run function snc:shifters/mobs/step {"floor":17, "air":16}
execute if score state beast_vars matches 5 run function snc:shifters/mobs/step {"floor":17, "air":16}

execute if score state beast_vars matches 12 run function snc:shifters/mobs/step {"floor":16, "air":15}
execute if score state beast_vars matches 13 run function snc:shifters/mobs/step {"floor":16, "air":15}
execute if score state beast_vars matches 14 run function snc:shifters/mobs/step {"floor":16, "air":15}
execute if score state beast_vars matches 15 run function snc:shifters/mobs/step {"floor":7, "air":6}
execute if score state beast_vars matches 16..18 run function snc:shifters/mobs/step {"floor":16, "air":15}
execute if score state beast_vars matches 19 run function snc:shifters/mobs/step {"floor":17, "air":16}