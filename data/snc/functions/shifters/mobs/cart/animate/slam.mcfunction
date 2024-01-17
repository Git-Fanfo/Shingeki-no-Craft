execute if score action cart_vars matches 36 run data merge entity @s {item:{id:'minecraft:scute',Count:1b,tag:{CustomModelData:11}}, transformation:{scale:[5.3f,5.3f,5.3f]}}
execute if score action cart_vars matches 34 run data merge entity @s {item:{id:'minecraft:scute',Count:1b,tag:{CustomModelData:12}}, transformation:{scale:[5.3f,5.3f,5.3f]}}
execute if score action cart_vars matches 32 run data merge entity @s {item:{id:'minecraft:scute',Count:1b,tag:{CustomModelData:13}}, transformation:{scale:[5.3f,5.3f,5.3f]}}
execute if score action cart_vars matches 30 run data merge entity @s {item:{id:'minecraft:scute',Count:1b,tag:{CustomModelData:14}}, transformation:{scale:[5.3f,5.3f,5.3f]}}
execute if score action cart_vars matches 29 run data merge entity @s {item:{id:'minecraft:scute',Count:1b,tag:{CustomModelData:15}}, transformation:{scale:[5.3f,5.3f,5.3f]}}
execute if score action cart_vars matches 28 run data merge entity @s {item:{id:'minecraft:scute',Count:1b,tag:{CustomModelData:16}}, transformation:{scale:[5.3f,5.3f,5.3f]}}
execute if score action cart_vars matches 27 run data merge entity @s {item:{id:'minecraft:scute',Count:1b,tag:{CustomModelData:17}}, transformation:{scale:[5.3f,5.3f,5.3f]}}
execute if score action cart_vars matches 26 run data merge entity @s {item:{id:'minecraft:scute',Count:1b,tag:{CustomModelData:18}}, transformation:{scale:[5.3f,5.3f,5.3f]}}
execute if score action cart_vars matches 25 run data merge entity @s {item:{id:'minecraft:scute',Count:1b,tag:{CustomModelData:19}}, transformation:{scale:[5.3f,5.3f,5.3f]}}
execute if score action cart_vars matches 24 run data merge entity @s {item:{id:'minecraft:scute',Count:1b,tag:{CustomModelData:20}}, transformation:{scale:[5.3f,5.3f,5.3f]}}
execute if score action cart_vars matches 23 run data merge entity @s {item:{id:'minecraft:scute',Count:1b,tag:{CustomModelData:21}}, transformation:{scale:[5.3f,5.3f,5.3f]}}
#PISO
execute if score action cart_vars matches 30 run playsound minecraft:aot.footsteps hostile @a ~ ~ ~ 2 .1
execute if score action cart_vars matches 21 as @p[scores={cart_vars=1}] at @s rotated ~ 0 positioned ^3 ^-3 ^2 as @e[distance=..3] run function snc:shifters/mobs/cart/action/slam/damage

execute if score action cart_vars matches 22 run data merge entity @s {item:{id:'minecraft:scute',Count:1b,tag:{CustomModelData:22}}, transformation:{scale:[5.3f,5.3f,5.3f]}}
#7
execute if score action cart_vars matches 15 run data merge entity @s {item:{id:'minecraft:scute',Count:1b,tag:{CustomModelData:23}}, transformation:{scale:[5.3f,5.3f,5.3f]}}
execute if score action cart_vars matches 12 run data merge entity @s {item:{id:'minecraft:scute',Count:1b,tag:{CustomModelData:24}}, transformation:{scale:[5.3f,5.3f,5.3f]}}
execute if score action cart_vars matches 9 run data merge entity @s {item:{id:'minecraft:scute',Count:1b,tag:{CustomModelData:25}}, transformation:{scale:[5.3f,5.3f,5.3f]}}
execute if score action cart_vars matches 6 run data merge entity @s {item:{id:'minecraft:scute',Count:1b,tag:{CustomModelData:26}}, transformation:{scale:[5.3f,5.3f,5.3f]}}
execute if score action cart_vars matches 3 run data merge entity @s {item:{id:'minecraft:scute',Count:1b,tag:{CustomModelData:27}}, transformation:{scale:[5.3f,5.3f,5.3f]}}

execute if score action cart_vars matches 3 as @a[scores={cart_vars=1}] run scoreboard players set state cart_vars 3