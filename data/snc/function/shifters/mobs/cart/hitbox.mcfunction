# Hitbox
execute if entity @s[tag=cart.hitbox] run tp ^ ^ ^-3.2

execute if entity @s[tag=aj.cart.locator.consume] on passengers run function snc:shifters/mobs/cart/action/hold/effects

# Rotate pivot
execute if entity @s[tag=cart.case] on vehicle at @s on passengers unless entity @s[type=player] run tp @s ~ ~ ~ ~ 0

execute if entity @s[tag=cart.case] run data modify entity @s Rotation[1] set value 0f
execute if entity @s[tag=cart.case] unless predicate snc:is_riding run ride @s mount @e[tag=body,tag=cart,sort=nearest,limit=1]
execute if entity @s[tag=cart.case] on vehicle run effect give @s slowness 2 2 true

## Barrels
execute if entity @s[tag=cart.barrel.1] unless score state cart_vars matches 2 run tp ^.82 ^3.4 ^-2.3
execute if entity @s[tag=cart.barrel.2] unless score state cart_vars matches 2 run tp ^-.82 ^3.4 ^-2.3
execute if entity @s[tag=cart.barrel.3] unless score state cart_vars matches 2 run tp ^.82 ^3.4 ^-3.95
execute if entity @s[tag=cart.barrel.4] unless score state cart_vars matches 2 run tp ^-.82 ^3.4 ^-3.95

## Guns
execute if entity @s[tag=cart.gun] on passengers if entity @s[type=player] at @s on vehicle on passengers unless entity @s[type=player] run tp @s ~ ~ ~ ~ ~

## Turrets
execute if entity @s[tag=cart.turret.1] run function snc:shifters/mobs/cart/action/shipload/turrets/main {"x":1.3,"y":4.6,"z":-2,"turret":1,"rotate":315}
execute if entity @s[tag=cart.turret.2] run function snc:shifters/mobs/cart/action/shipload/turrets/main {"x":-1.3,"y":4.6,"z":-2,"turret":2,"rotate":45}
execute if entity @s[tag=cart.turret.3] run function snc:shifters/mobs/cart/action/shipload/turrets/main {"x":"","y":4,"z":-5,"turret":3,"rotate":180}

execute if entity @s[tag=cart.turret.1] if data entity @s interaction run function snc:interact/turret {"turret":1}
execute if entity @s[tag=cart.turret.2] if data entity @s interaction run function snc:interact/turret {"turret":2}
execute if entity @s[tag=cart.turret.3] if data entity @s interaction run function snc:interact/turret {"turret":3}

execute unless entity @e[scores={shifter_vars=1},sort=nearest,limit=1] run function snc:shifters/mobs/remove_hitboxes