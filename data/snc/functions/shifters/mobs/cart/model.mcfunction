## States
# 0 : Dead
# 1 : Born
# 2 : Sneak
# 3 : Idle
# 4 : Walk
# 5 : Run
# 6 : Jump
# 9 : Die
###############
# 12 : punch_1
# 13 : punch_2
# 14 : punch_3
# 15 : Jaw
# 16 : kick_1
# 17 : kick_2
# 18 : kick_3
# 19 : block

## Rotate model
execute store result score rotation cart_vars run data get entity @s Rotation[0]
scoreboard players operation rotation cart_vars -= player_rotation cart_vars

# Rotate pivot
execute unless score rotation cart_vars matches -20..20 store result entity @s Rotation[0] float 1 run execute on vehicle run data get entity @s Rotation[0]
# execute store result entity @s Rotation[0] float 1 run execute on vehicle run data get entity @s Rotation[0]
data modify entity @s Rotation[1] set value 0f

## Animations
## 2 types: Strong(S) and Weak(W)
# S: Can't be combined with a S animation.
# W: Can be combined with a S Animation.

function snc:shifters/mobs/cart/animate/stop_motion