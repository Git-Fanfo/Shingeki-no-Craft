## States
# 0 : Dead
# 1 : Born
# 2 : Sneak
# 3 : Idle
# 4 : Walk
# 5 : Run
# 9 : Die
###############

## Rotate model
execute store result score rotation colossal_vars run data get entity @s Rotation[0]
scoreboard players operation rotation colossal_vars -= player_rotation colossal_vars

## Rotate pivot
execute unless score rotation colossal_vars matches -20..20 on vehicle at @s on passengers unless entity @s[type=player] run tp @s ~ ~ ~ ~ 0

## Animations
## 2 types: Strong(S) and Weak(W)
# S: Can't be combined with a S animation.
# W: Can be combined with a S Animation.

function snc:shifters/mobs/colossal/animate/stop_motion