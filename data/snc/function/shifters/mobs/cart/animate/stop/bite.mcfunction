execute if score action cart_vars matches 20 run execute on vehicle run effect give @s slowness 1 127 true
execute if score action cart_vars matches 20 run data modify entity @s item.components.minecraft:item_model set value "shifters/cart/idle/1"
execute if score action cart_vars matches 20 on vehicle on controller run function snc:shifters/mobs/cart/head {"frame":1}
execute if score action cart_vars matches 20 run playsound minecraft:aot.shifters.bite player @a ~ ~ ~ 5 .8
execute if score action cart_vars matches 18 on vehicle on controller run function snc:shifters/mobs/cart/head {"frame":2}
execute if score action cart_vars matches 14 on vehicle on controller run function snc:shifters/mobs/cart/head {"frame":3}
execute if score action cart_vars matches 10 on vehicle on controller run function snc:shifters/mobs/cart/head {"frame":1}
execute if score action cart_vars matches 8 run function snc:shifters/mobs/cart/action/bite/damage with storage minecraft:cart
# If didn't find anything, drop
execute if score action cart_vars matches 8 as 0000007f-0000-007f-0000-008000000001 at @s unless data entity @s Passengers as @a[scores={cart_vars=1},sort=nearest,limit=1] unless entity @e[type=#snc:human,sort=nearest,limit=1,distance=...1] run function snc:shifters/mobs/cart/action/hold/restart
execute if score action cart_vars matches 1 run tag @s remove consume
execute if score action cart_vars matches 1 run scoreboard players set state cart_vars 3

return 1