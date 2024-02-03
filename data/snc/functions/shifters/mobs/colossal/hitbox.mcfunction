## coords for the hitboxes
execute unless entity @s[tag=cart.shipload] run tp ^ ^1 ^-3.5

# Rotate pivot
execute if entity @s[tag=cart.shipload] unless score rotation cart_vars matches -20..20 store result entity @s Rotation[0] float 1 run execute on vehicle run data get entity @s Rotation[0]
execute if entity @s[tag=cart.shipload] run data modify entity @s Rotation[1] set value 0f

execute if entity @s[tag=cart.shipload] unless predicate snc:is_riding run ride @s mount @e[tag=body,tag=cart,sort=nearest,limit=1]