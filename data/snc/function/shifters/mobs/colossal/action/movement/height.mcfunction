## Prevent clipping ground
execute rotated ~ 0 run fill ^-6 ^-3 ^-6 ^6 ^-1 ^6 air replace barrier

## Get Height
scoreboard players set $floor colossal_vars 0
function snc:shifters/mobs/colossal/action/movement/legs_height

## If is underground
# Go up
execute if score $form colossal_vars matches 1 if score state colossal_vars matches 2.. if score $floor colossal_vars matches ..35 run effect give @s levitation 1 7 true
# Stop
execute if score $floor colossal_vars matches 37.. run effect clear @s levitation
# Place floor
execute if score $form colossal_vars matches 1 if score state colossal_vars matches 2.. if score $floor colossal_vars matches ..36 run function snc:shifters/mobs/floor