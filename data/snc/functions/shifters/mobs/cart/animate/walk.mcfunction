execute if score walk cart_vars matches 20 run data merge entity @s {item:{id:'minecraft:scute',Count:1b,tag:{CustomModelData:4}}, transformation:{scale:[5.3f,5.3f,5.3f]}}
execute if score walk cart_vars matches 17 run data merge entity @s {item:{id:'minecraft:scute',Count:1b,tag:{CustomModelData:5}}, transformation:{scale:[5.3f,5.3f,5.3f]}}
execute if score walk cart_vars matches 15 run data merge entity @s {item:{id:'minecraft:scute',Count:1b,tag:{CustomModelData:6}}, transformation:{scale:[5.3f,5.3f,5.3f]}}
execute if score walk cart_vars matches 12 run data merge entity @s {item:{id:'minecraft:scute',Count:1b,tag:{CustomModelData:7}}, transformation:{scale:[5.3f,5.3f,5.3f]}}

execute if score walk cart_vars matches 10 run data merge entity @s {item:{id:'minecraft:scute',Count:1b,tag:{CustomModelData:4}}, transformation:{scale:[5.3f,5.3f,5.3f]}}
execute if score walk cart_vars matches 7 run data merge entity @s {item:{id:'minecraft:scute',Count:1b,tag:{CustomModelData:5}}, transformation:{scale:[5.3f,5.3f,5.3f]}}
execute if score walk cart_vars matches 5 run data merge entity @s {item:{id:'minecraft:scute',Count:1b,tag:{CustomModelData:6}}, transformation:{scale:[5.3f,5.3f,5.3f]}}
execute if score walk cart_vars matches 2 run data merge entity @s {item:{id:'minecraft:scute',Count:1b,tag:{CustomModelData:7}}, transformation:{scale:[5.3f,5.3f,5.3f]}}

execute if score walk cart_vars matches 20 if score on_floor cart_vars matches 1 run playsound minecraft:entity.horse.gallop player @a ~ ~ ~ 2 .1
execute if score walk cart_vars matches 10 if score on_floor cart_vars matches 1 run playsound minecraft:entity.horse.gallop player @a ~ ~ ~ 2 .1

execute if score walk cart_vars matches 5 run scoreboard players set state cart_vars 3