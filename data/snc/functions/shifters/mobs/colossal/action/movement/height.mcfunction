## Detect floor
# Is on floor?
execute if block ~ ~-13 ~ #snc:filter_shifter run scoreboard players set on_floor colossal_vars 0
execute unless block ~ ~-13 ~ #snc:filter_shifter run scoreboard players set on_floor colossal_vars 1

## Prevent clipping ground
# On surface
execute if score state colossal_vars matches 2.. run function snc:shifters/mobs/step {"floor":36, "air":35}