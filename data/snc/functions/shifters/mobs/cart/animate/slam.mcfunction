execute if score action cart_vars matches 36 run data modify entity @s item.components.minecraft:custom_model_data set value 11
execute if score action cart_vars matches 34 run data modify entity @s item.components.minecraft:custom_model_data set value 12
execute if score action cart_vars matches 32 run data modify entity @s item.components.minecraft:custom_model_data set value 13
execute if score action cart_vars matches 30 run data modify entity @s item.components.minecraft:custom_model_data set value 14
execute if score action cart_vars matches 29 run data modify entity @s item.components.minecraft:custom_model_data set value 15
execute if score action cart_vars matches 28 run data modify entity @s item.components.minecraft:custom_model_data set value 16
execute if score action cart_vars matches 27 run data modify entity @s item.components.minecraft:custom_model_data set value 17
execute if score action cart_vars matches 26 run data modify entity @s item.components.minecraft:custom_model_data set value 18
execute if score action cart_vars matches 25 run data modify entity @s item.components.minecraft:custom_model_data set value 19
execute if score action cart_vars matches 24 run data modify entity @s item.components.minecraft:custom_model_data set value 20
execute if score action cart_vars matches 23 run data modify entity @s item.components.minecraft:custom_model_data set value 21
#PISO
execute if score action cart_vars matches 30 run playsound minecraft:aot.footsteps hostile @a ~ ~ ~ 2 .1
execute if score action cart_vars matches 21 on vehicle on passengers if entity @s[type=player] rotated ~ 0 positioned ^ ^1 ^4 as @e[distance=..3] run function snc:shifters/mobs/cart/action/slam/damage
execute if score action cart_vars matches 21 on vehicle on passengers if entity @s[type=player] rotated ~ 0 positioned ^ ^1 ^4 run summon creeper ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,ExplosionRadius:1b,Fuse:0}

execute if score action cart_vars matches 22 run data modify entity @s item.components.minecraft:custom_model_data set value 22
#7
execute if score action cart_vars matches 15 run data modify entity @s item.components.minecraft:custom_model_data set value 23
execute if score action cart_vars matches 12 run data modify entity @s item.components.minecraft:custom_model_data set value 24
execute if score action cart_vars matches 9 run data modify entity @s item.components.minecraft:custom_model_data set value 25
execute if score action cart_vars matches 6 run data modify entity @s item.components.minecraft:custom_model_data set value 26
execute if score action cart_vars matches 3 run data modify entity @s item.components.minecraft:custom_model_data set value 27

execute if score action cart_vars matches 3 as @a[scores={cart_vars=1}] run scoreboard players set state cart_vars 3