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

## Rotate pivot
execute on vehicle at @s on passengers unless entity @s[type=player] run rotate @s ~ 0
execute on vehicle on passengers if entity @s[type=#snc:eldian] at @s anchored eyes run tp @e[tag=aj.cart.locator.consume,sort=nearest,limit=1] ^.1 ^ ^1 ~ ~
## Animations
## 2 types: Strong(S) and Weak(W)
# S: Can't be combined with a S animation.
# W: Can be combined with a S Animation.

function snc:shifters/mobs/cart/animate/stop_motion