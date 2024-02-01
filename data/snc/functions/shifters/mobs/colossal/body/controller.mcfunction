# Effects
effect give @s invisibility infinite 0 true
effect give @s fire_resistance infinite 0 true
effect give @s resistance infinite 127 true

# Health System
execute if score $bossbar config matches 1 positioned ~ ~-60 ~ run bossbar set minecraft:colossal_health players @a[distance=..100]

# Stop when attacks
execute if score state colossal_vars matches 10.. run effect give @s slowness 1 6 true

# Place Barrier Blocks

# This value always has to be (max_height-1).
execute unless score state_sp colossal_vars matches 1 unless score state colossal_vars matches 2 if entity @s[tag=height] unless block ~ ~-61 ~ #snc:filter_shifter rotated ~ 0 run function snc:shifters/mobs/floor
execute if score state_sp colossal_vars matches 1 unless score state colossal_vars matches 2 if entity @s[tag=height] unless block ~ ~-19 ~ #snc:filter_shifter rotated ~ 0 run function snc:shifters/mobs/floor

## Keep height
execute unless score state_sp colossal_vars matches 1 if entity @s[tag=height] run function snc:shifters/mobs/colossal/action/movement/height
# Initial height
execute unless entity @s[tag=height] run function snc:shifters/mobs/colossal/action/movement/height_born

## If nothing is riding then kill
execute unless data entity @s Passengers run function snc:logic/kill_mob

## Detect when shifter died
execute if score state colossal_vars matches 0 on passengers run tag @s[type=!player] remove shifter
execute if score state colossal_vars matches 0 on passengers run data merge entity @s {Small:0b}
execute if score state colossal_vars matches 0 on passengers run ride @s dismount

execute if score state colossal_vars matches 0 run function snc:logic/kill_mob