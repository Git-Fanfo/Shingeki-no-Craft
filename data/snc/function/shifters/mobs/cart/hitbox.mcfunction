## ALWAYS Remove when dead
execute if score state cart_vars matches 9 if function snc:shifters/mobs/cart/action/shipload/remove run return -1

# Hitbox
#execute if entity @s[tag=cart.hitbox] run tp ^ ^ ^-3.2
execute if entity @s[tag=aj.cart.locator.consume] on passengers run function snc:shifters/mobs/cart/action/hold/effects

# Rotate pivot
execute if entity @s[tag=cart.case] run function snc:shifters/mobs/cart/action/shipload/case

## Barrels
execute if entity @s[tag=cart.barrel.1] unless score state cart_vars matches 2 run tp ^.82 ^3.4 ^-2.3
execute if entity @s[tag=cart.barrel.2] unless score state cart_vars matches 2 run tp ^-.82 ^3.4 ^-2.3
execute if entity @s[tag=cart.barrel.3] unless score state cart_vars matches 2 run tp ^.82 ^3.4 ^-3.95
execute if entity @s[tag=cart.barrel.4] unless score state cart_vars matches 2 run tp ^-.82 ^3.4 ^-3.95

## Guns
execute if entity @s[tag=cart.gun] on passengers if entity @s[type=player] at @s on vehicle on passengers unless entity @s[type=player] run rotate @s ~ ~

## Turrets
execute if entity @s[tag=cart.turret.1] run function snc:shifters/mobs/cart/action/shipload/turrets/main {"x":1.3,"y":4.6,"z":-2,"turret":1,"rotate":315}
execute if entity @s[tag=cart.turret.2] run function snc:shifters/mobs/cart/action/shipload/turrets/main {"x":-1.3,"y":4.6,"z":-2,"turret":2,"rotate":45}
execute if entity @s[tag=cart.turret.3] run function snc:shifters/mobs/cart/action/shipload/turrets/main {"x":"","y":4,"z":-5,"turret":3,"rotate":180}

execute if entity @s[tag=cart.turret.1] if data entity @s interaction run function snc:interact/turret {"turret":1}
execute if entity @s[tag=cart.turret.2] if data entity @s interaction run function snc:interact/turret {"turret":2}
execute if entity @s[tag=cart.turret.3] if data entity @s interaction run function snc:interact/turret {"turret":3}