execute if score idle cart_vars matches 39 run data modify entity @s item.components.minecraft:item_model set value "shifters/cart/idle/1"
execute if score idle cart_vars matches 34 run data modify entity @s item.components.minecraft:item_model set value "shifters/cart/idle/2"
execute if score idle cart_vars matches 22 run data modify entity @s item.components.minecraft:item_model set value "shifters/cart/idle/3"
execute if score idle cart_vars matches 10 run data modify entity @s item.components.minecraft:item_model set value "shifters/cart/idle/1"

execute on vehicle run attribute @s minecraft:scale base set 1.5
return 1