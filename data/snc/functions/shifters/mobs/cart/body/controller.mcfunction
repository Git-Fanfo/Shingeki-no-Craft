# Effects
effect give @s invisibility infinite 0 true
effect give @s fire_resistance infinite 0 true
effect give @s resistance infinite 255 true

# Health System
execute if score $bossbar config matches 1 run bossbar set minecraft:cart_health players @a[distance=..50]

# Stop when attacks
execute if score state cart_vars matches 10.. run effect give @s slowness 1 5 true

## Jump
execute if entity @s[tag=height] run function snc:shifters/mobs/cart/action/movement/jump

# Place Barrier Blocks
# If sneaking:
execute if score state cart_vars matches 2 unless block ~ ~-3 ~ #snc:filter_shifter rotated ~ 0 run function snc:shifters/mobs/floor

# If not sneaking: This value always has to be (max_height-1).
execute unless score state cart_vars matches 2 if entity @s[tag=height] unless block ~ ~-4 ~ #snc:filter_shifter rotated ~ 0 run function snc:shifters/mobs/floor

# Keep height
execute unless score state cart_vars matches 2 if entity @s[tag=height] run function snc:shifters/mobs/cart/action/movement/height
execute unless entity @s[tag=height] run function snc:shifters/mobs/cart/action/movement/height_born

## If nothing is riding then kill
execute unless data entity @s Passengers run function snc:logic/kill_mob

## Detect when shifter died

execute if score state cart_vars matches 0 on passengers run tag @s[type=!player] remove shifter
execute if score state cart_vars matches 0 on passengers run data merge entity @s {Small:0b}
execute if score state cart_vars matches 0 on passengers run ride @s dismount

execute if score state cart_vars matches 0 run function snc:logic/kill_mob