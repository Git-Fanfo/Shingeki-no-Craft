$execute if score consume cart_vars matches 20 run item replace entity @s armor.head with carved_pumpkin[custom_model_data=$(f1)]
execute if score consume cart_vars matches 20 run playsound minecraft:aot.shifters.bite player @a ~ ~ ~ 5 .8
$execute if score consume cart_vars matches 18 run item replace entity @s armor.head with carved_pumpkin[custom_model_data=$(f2)]
$execute if score consume cart_vars matches 14 run item replace entity @s armor.head with carved_pumpkin[custom_model_data=$(f3)]
$execute if score consume cart_vars matches 10 run item replace entity @s armor.head with carved_pumpkin[custom_model_data=$(f1)]
execute if score consume cart_vars matches 8 unless entity @s[tag=snc.bite] anchored eyes positioned ^ ^ ^3 run function snc:shifters/mobs/cart/action/jaw/damage with storage minecraft:cart
execute if score consume cart_vars matches 8 if entity @s[tag=snc.bite] as @e[tag=aj.cart.locator.consume] at @s unless data entity @s Passengers as @a[scores={cart_vars=1},sort=nearest,limit=1] unless entity @e[type=#snc:human,sort=nearest,limit=1,distance=...1] run function snc:shifters/mobs/cart/action/hold/restart
execute if score consume cart_vars matches 8 run tag @s remove snc.bite

execute if score consume cart_vars matches 1 run tag @s remove consume