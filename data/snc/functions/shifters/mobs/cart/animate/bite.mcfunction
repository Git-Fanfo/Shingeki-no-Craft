$execute if score consume cart_vars matches 20 run item replace entity @s armor.head with minecraft:carved_pumpkin{CustomModelData:$(f1)}
execute if score consume cart_vars matches 20 at @s run playsound minecraft:aot.cart_bite player @a ~ ~ ~ 5 .7
$execute if score consume cart_vars matches 18 run item replace entity @s armor.head with minecraft:carved_pumpkin{CustomModelData:$(f2)}
$execute if score consume cart_vars matches 14 run item replace entity @s armor.head with minecraft:carved_pumpkin{CustomModelData:$(f3)}
$execute if score consume cart_vars matches 10 run item replace entity @s armor.head with minecraft:carved_pumpkin{CustomModelData:$(f1)}
execute if score consume cart_vars matches 8 at @s positioned ^ ^1.5 ^3 as @e[distance=..3] run function snc:shifters/mobs/cart/action/jaw/damage
execute if score consume cart_vars matches 1 run tag @s remove consume