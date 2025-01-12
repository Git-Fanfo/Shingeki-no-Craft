execute if score walk cart_vars matches 20 run data modify entity @s item.components.minecraft:item_model set value "shifters/cart/walk/1"
execute if score walk cart_vars matches 17 run data modify entity @s item.components.minecraft:item_model set value "shifters/cart/walk/2"
execute if score walk cart_vars matches 15 run data modify entity @s item.components.minecraft:item_model set value "shifters/cart/walk/3"
execute if score walk cart_vars matches 12 run data modify entity @s item.components.minecraft:item_model set value "shifters/cart/walk/4"

execute if score walk cart_vars matches 10 run data modify entity @s item.components.minecraft:item_model set value "shifters/cart/walk/1"
execute if score walk cart_vars matches 7 run data modify entity @s item.components.minecraft:item_model set value "shifters/cart/walk/2"
execute if score walk cart_vars matches 5 run data modify entity @s item.components.minecraft:item_model set value "shifters/cart/walk/3"
execute if score walk cart_vars matches 2 run data modify entity @s item.components.minecraft:item_model set value "shifters/cart/walk/4"

execute if score walk cart_vars matches 20 on vehicle if predicate snc:player/on_ground run function snc:shifters/mobs/cart/action/movement/step
execute if score walk cart_vars matches 10 on vehicle if predicate snc:player/on_ground run function snc:shifters/mobs/cart/action/movement/step