## Detect floor
# Is on floor?
execute if block ~ ~-13 ~ #snc:filter_shifter run scoreboard players set on_floor attack_vars 0
execute unless block ~ ~-13 ~ #snc:filter_shifter run scoreboard players set on_floor attack_vars 1
# Prevent going throught walls 
##execute rotated ~ 0 positioned ^ ^-8 ^3 if block ~ ~ ~ #snc:filter_shifter run data merge entity @s {Attributes:[{Name:generic.movement_speed,Base:0.36}]}
execute unless score state attack_vars matches 2 rotated ~ 0 positioned ^ ^-8 ^3 unless block ~ ~ ~ #snc:filter_shifter run data merge entity @s {Attributes:[{Name:generic.movement_speed,Base:0}]}

## Prevent clipping ground
# On surface
execute if score state attack_vars matches 1 run function snc:shifters/mobs/step {"floor":14, "air":13}
execute if score state attack_vars matches 2 run function snc:shifters/mobs/step {"floor":7, "air":6}
execute if score state attack_vars matches 3..4 run function snc:shifters/mobs/step {"floor":12, "air":11}
execute if score state attack_vars matches 5 run function snc:shifters/mobs/step {"floor":12, "air":11}

execute if score state attack_vars matches 12..13 run function snc:shifters/mobs/step {"floor":11, "air":10}
execute if score state attack_vars matches 14 run function snc:shifters/mobs/step {"floor":10, "air":9}
execute if score state attack_vars matches 15 run function snc:shifters/mobs/step {"floor":7, "air":6}
execute if score state attack_vars matches 16..18 run function snc:shifters/mobs/step {"floor":11, "air":10}
execute if score state attack_vars matches 19 run function snc:shifters/mobs/step {"floor":13, "air":12}