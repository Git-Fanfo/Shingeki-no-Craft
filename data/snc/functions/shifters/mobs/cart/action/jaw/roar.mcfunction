tag @s remove consume
execute if score consume cart_vars matches 220 at @s run playsound minecraft:aot.cart_roar player @a ~ ~ ~ 5 1
$execute if score consume cart_vars matches 217 run item replace entity @s armor.head with minecraft:carved_pumpkin{CustomModelData:$(f1)}
$execute if score consume cart_vars matches 215 run item replace entity @s armor.head with minecraft:carved_pumpkin{CustomModelData:$(f2)}
$execute if score consume cart_vars matches 213 run item replace entity @s armor.head with minecraft:carved_pumpkin{CustomModelData:$(f3)}
$execute if score consume cart_vars matches 135 run item replace entity @s armor.head with minecraft:carved_pumpkin{CustomModelData:$(f2)}
$execute if score consume cart_vars matches 132 run item replace entity @s armor.head with minecraft:carved_pumpkin{CustomModelData:$(f1)}

execute if score consume cart_vars matches 132 run scoreboard players set consume cart_vars 0