execute if score action cart_vars matches 10 on vehicle at @s rotated ~ -45 run function snc:logic/motion/generic {"score":"cart_vars","strength":0.02, "unstoppable":"false"}
execute if score action cart_vars matches 10 run data modify entity @s item.components.minecraft:item_model set value "shifters/cart/jump/1"
execute if score action cart_vars matches 9 run data modify entity @s item.components.minecraft:item_model set value "shifters/cart/jump/2"
execute if score action cart_vars matches 8 run data modify entity @s item.components.minecraft:item_model set value "shifters/cart/jump/3"
execute if score action cart_vars matches 6 run data modify entity @s item.components.minecraft:item_model set value "shifters/cart/jump/4"
execute if score action cart_vars matches 4 run data modify entity @s item.components.minecraft:item_model set value "shifters/cart/jump/5"
execute if score action cart_vars matches 2 run data modify entity @s item.components.minecraft:item_model set value "shifters/cart/jump/6"

execute if score action cart_vars matches 0 run scoreboard players set state cart_vars 3

return 1