execute if score action cart_vars matches 10 run data merge entity @s {item:{id:'minecraft:turtle_scute',Count:1b,components:{"custom_model_data":28}}, transformation:{scale:[5.3f,5.3f,5.3f]}}
execute if score action cart_vars matches 10 on vehicle run attribute @s minecraft:generic.scale base set 1.13
execute if score action cart_vars matches 7 run data merge entity @s {item:{id:'minecraft:turtle_scute',Count:1b,components:{"custom_model_data":29}}, transformation:{scale:[5.3f,5.3f,5.3f]}}
execute if score action cart_vars matches 7 on vehicle run attribute @s minecraft:generic.scale base set .8
execute if score action cart_vars matches 5 run data merge entity @s {item:{id:'minecraft:turtle_scute',Count:1b,components:{"custom_model_data":30}}, transformation:{scale:[5.3f,5.3f,5.3f]}}
execute if score action cart_vars matches 7 on vehicle run attribute @s minecraft:generic.scale base set .5