ride @s dismount
ride @s mount @n[type=skeleton_horse,tag=cart]
execute if score state cart_vars matches 3..5 unless predicate snc:player/keybinds/move on vehicle on passengers \
        if entity @s[tag=aj.cart.root] if entity @s[tag=!aj.cart.animation.sneak.playing] run \
            scoreboard players set #sneak cart_vars 1

execute if score #sneak cart_vars matches 1 on vehicle at @s rotated ~ 0 as @e[tag=cart.barrels] run function snc:shifters/mobs/cart/action/shipload/barrels/drop

execute if score #sneak cart_vars matches 1 run scoreboard players set action cart_vars 10
execute if score #sneak cart_vars matches 1 if score state cart_vars matches 3..5 run scoreboard players set $moving cart_vars -1
execute if score #sneak cart_vars matches 1 if score state cart_vars matches 3..5 run scoreboard players set state cart_vars 2