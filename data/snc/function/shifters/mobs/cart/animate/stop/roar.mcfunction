execute if score action cart_vars matches 100 run execute on vehicle run effect give @s slowness 5 127 true
execute if score action cart_vars matches 100 run data modify entity @s item.components.minecraft:item_model set value "shifters/cart/idle/1"
execute if score action cart_vars matches 100 run function snc:shifters/mobs/drop

execute if score action cart_vars matches 100 at @s run playsound minecraft:snc.shifters.cart.roar player @a ~ ~ ~ 24 1
execute if score action cart_vars matches 97 on vehicle on passengers if entity @s[tag=transform] run function snc:shifters/mobs/cart/head {"frame":1}
execute if score action cart_vars matches 95 on vehicle on passengers if entity @s[tag=transform] run function snc:shifters/mobs/cart/head {"frame":2}
execute if score action cart_vars matches 93 on vehicle on passengers if entity @s[tag=transform] run function snc:shifters/mobs/cart/head {"frame":3}
execute if score action cart_vars matches 5 on vehicle on passengers if entity @s[tag=transform] run function snc:shifters/mobs/cart/head {"frame":2}
execute if score action cart_vars matches 2 on vehicle on passengers if entity @s[tag=transform] run function snc:shifters/mobs/cart/head {"frame":1}

execute if score action cart_vars matches 2 run scoreboard players set state cart_vars 3

return 1