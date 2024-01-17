## Rotate model
execute store result score rotation cart_vars run data get entity @s Rotation[0]
scoreboard players operation rotation cart_vars -= player_rotation cart_vars

# Rotate quaternion
execute unless score rotation cart_vars matches -20..20 on passengers run function snc:shifters/mobs/cart/body/rotate

# Rotate pivot
execute unless score rotation cart_vars matches -20..20 run data modify entity @s Rotation[0] set from entity @a[scores={cart_vars=1},tag=transform,limit=1] Rotation[0]

#data modify entity @s Pose.Head[0] set from entity @a[scores={cart_vars=1},tag=transform,limit=1] Rotation[1]