execute if score state cart_vars matches 0 run kill

data modify entity @s[tag=pos_1] Rotation[0] set from entity @p Rotation[0]
data modify entity @s[tag=pos_2] Rotation[0] set from entity @p Rotation[0]
data modify entity @s[tag=pos_3] Rotation[0] set from entity @p Rotation[0]

execute at @s[tag=!pos_4] run function snc:shifters/mobs/cart/action/turret/mount

data modify entity @s[tag=pos_4] Rotation[0] set from entity @a[scores={cart_vars=1},limit=1] Rotation[0]

execute at @p[scores={cart_vars=1},tag=transform] rotated ~ 0 run function snc:shifters/mobs/cart/action/turret/set_tp

