# Hitbox
execute if entity @s[tag=cart.hitbox] run tp ^ ^1 ^-3.5

# Rotate pivot
execute if entity @s[tag=cart.case] unless score rotation cart_vars matches -20..20 store result entity @s Rotation[0] float 1 run execute on vehicle run data get entity @s Rotation[0]
execute if entity @s[tag=cart.case] run data modify entity @s Rotation[1] set value 0f
execute if entity @s[tag=cart.case] unless predicate snc:is_riding run ride @s mount @e[tag=body,tag=cart,sort=nearest,limit=1]
execute if entity @s[tag=cart.case] on vehicle run effect give @s slowness 2 2 true

## Barrels
execute if entity @s[tag=cart.barrel.1] unless score state cart_vars matches 2 run tp ^.82 ^4 ^-2.3
execute if entity @s[tag=cart.barrel.2] unless score state cart_vars matches 2 run tp ^-.82 ^4 ^-2.3
execute if entity @s[tag=cart.barrel.3] unless score state cart_vars matches 2 run tp ^.82 ^4 ^-3.95
execute if entity @s[tag=cart.barrel.4] unless score state cart_vars matches 2 run tp ^-.82 ^4 ^-3.95

## Guns
execute if entity @s[tag=cart.gun] on passengers if entity @s[type=item_display] store result entity @s Rotation[0] float 1 on vehicle on passengers if entity @s[type=player] run data get entity @s Rotation[0]
execute if entity @s[tag=cart.gun] on passengers if entity @s[type=item_display] store result entity @s Rotation[1] float 1 on vehicle on passengers if entity @s[type=player] run data get entity @s Rotation[1]

## Turrets
execute if entity @s[tag=cart.turret.1] run function snc:shifters/mobs/cart/action/shipload/turrets/main {"x":1.3,"y":5.7,"z":-2.5,"turret":1,"rotate":-45}
execute if entity @s[tag=cart.turret.2] run function snc:shifters/mobs/cart/action/shipload/turrets/main {"x":-1.3,"y":5.7,"z":-2.5,"turret":2,"rotate":45}
execute if entity @s[tag=cart.turret.3] run function snc:shifters/mobs/cart/action/shipload/turrets/main {"x":"","y":4.8,"z":-6,"turret":3,"rotate":180}