ride @s mount @e[type=camel,tag=cart,limit=1,sort=nearest]

execute on vehicle at @s rotated ~ 0 as @e[tag=cart.barrels] run function snc:shifters/mobs/cart/action/shipload/barrels/drop

scoreboard players set action cart_vars 10
execute if score state cart_vars matches 3..5 run scoreboard players set $moving cart_vars -1
execute if score state cart_vars matches 3..5 run scoreboard players set state cart_vars 2