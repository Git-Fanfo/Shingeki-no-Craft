execute if score action cart_vars matches 10 run data modify entity @s item.components.minecraft:item_model set value "shifters/cart/crouch/1"
execute if score action cart_vars matches 10 on vehicle run attribute @s minecraft:scale base set 1.13
execute if score action cart_vars matches 7 run data modify entity @s item.components.minecraft:item_model set value "shifters/cart/crouch/2"
execute if score action cart_vars matches 7 on vehicle run attribute @s minecraft:scale base set .8
execute if score action cart_vars matches 5 run data modify entity @s item.components.minecraft:item_model set value "shifters/cart/crouch/3"
execute if score action cart_vars matches 7 on vehicle run attribute @s minecraft:scale base set .5
execute if score action cart_vars matches 0 run scoreboard players set $moving cart_vars 0