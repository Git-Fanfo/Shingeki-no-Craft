## Rotate model
execute store result score rotation cart_vars run data get entity @s Rotation[0]
scoreboard players operation rotation cart_vars -= player_rotation cart_vars

## Rotate pivot
execute unless score rotation cart_vars matches -20..20 on vehicle at @s on passengers if entity @s[tag=aj.cart.root] run rotate @s ~ 0
## Mouth Grab
execute on vehicle on controller at @s anchored eyes run tp 0000007f-0000-007f-0000-008000000001 ^.1 ^ ^1 ~ ~

## Animations
function snc:shifters/mobs/cart/animate/stop/main