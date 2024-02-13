# Hitbox
execute if entity @s[tag=cart.hitbox] run tp ^ ^1 ^-3.5

# Rotate pivot
execute if entity @s[tag=cart.shipload] unless score rotation cart_vars matches -20..20 store result entity @s Rotation[0] float 1 run execute on vehicle run data get entity @s Rotation[0]
execute if entity @s[tag=cart.shipload] run data modify entity @s Rotation[1] set value 0f
execute if entity @s[tag=cart.shipload] unless predicate snc:is_riding run ride @s mount @e[tag=body,tag=cart,sort=nearest,limit=1]
execute if entity @s[tag=cart.shipload] on vehicle run effect give @s slowness 2 1 true

execute if entity @s[tag=cart.barrel.1] unless score state cart_vars matches 2 run tp ^.82 ^4 ^-2.3
execute if entity @s[tag=cart.barrel.2] unless score state cart_vars matches 2 run tp ^-.82 ^4 ^-2.3
execute if entity @s[tag=cart.barrel.3] unless score state cart_vars matches 2 run tp ^.82 ^4 ^-3.95
execute if entity @s[tag=cart.barrel.4] unless score state cart_vars matches 2 run tp ^-.82 ^4 ^-3.95