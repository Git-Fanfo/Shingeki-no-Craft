execute if score action cart_vars matches 0 run scoreboard players set action cart_vars 100
execute if score action cart_vars matches 100 run execute on vehicle run effect give @s slowness 5 127 true
execute if score action cart_vars matches 100 run data modify entity @s item.components.minecraft:item_model set value "shifters/cart/idle/1"
execute if score action cart_vars matches 100 as @e[tag=aj.cart.locator.consume] run function snc:shifters/mobs/cart/action/hold/drop
execute if score action cart_vars matches 100 at @s run playsound minecraft:aot.cart_roar player @a ~ ~ ~ 5 1
$execute if score action cart_vars matches 97 on vehicle on controller run item replace entity @s armor.head with carved_pumpkin[item_model="$(f1)"]
$execute if score action cart_vars matches 95 on vehicle on controller run item replace entity @s armor.head with carved_pumpkin[item_model="$(f2)"]
$execute if score action cart_vars matches 93 on vehicle on controller run item replace entity @s armor.head with carved_pumpkin[item_model="$(f3)"]
$execute if score action cart_vars matches 5 on vehicle on controller run item replace entity @s armor.head with carved_pumpkin[item_model="$(f2)"]
$execute if score action cart_vars matches 2 on vehicle on controller run item replace entity @s armor.head with carved_pumpkin[item_model="$(f1)"]
execute if score action cart_vars matches 2 run scoreboard players set state cart_vars 3