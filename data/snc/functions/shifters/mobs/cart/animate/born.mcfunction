execute if score action cart_vars matches 40 run summon firework_rocket ~ ~5 ~ {Silent:1b,LifeTime:1,ShotAtAngle:0b,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:0,Colors:[I;16753152],FadeColors:[I;16777215]}]}}}}
execute if score action cart_vars matches 40 run function snc:titans/volt/spawn
execute if score action cart_vars matches 40 run playsound minecraft:item.trident.thunder master @a ~ ~ ~
execute if score action cart_vars matches 46 run summon firework_rocket ~ ~5 ~ {Silent:1b,LifeTime:1,ShotAtAngle:0b,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:0,Colors:[I;16753152],FadeColors:[I;16777215]}]}}}}
execute if score action cart_vars matches 46 run function snc:titans/volt/spawn
execute if score action cart_vars matches 46 run playsound minecraft:item.trident.thunder master @a ~ ~ ~
execute if score action cart_vars matches 41 run summon firework_rocket ~ ~5 ~ {Silent:1b,LifeTime:1,ShotAtAngle:0b,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:0,Colors:[I;16753152],FadeColors:[I;16777215]}]}}}}
execute if score action cart_vars matches 41 run function snc:titans/volt/spawn
execute if score action cart_vars matches 41 run playsound minecraft:item.trident.thunder master @a ~ ~ ~

execute if score action cart_vars matches 40 run data merge entity @s {item:{id:'minecraft:turtle_scute',Count:1b,tag:{CustomModelData:38}}, transformation:{scale:[5.3f,5.3f,5.3f]}}
execute if score action cart_vars matches 36 run data merge entity @s {item:{id:'minecraft:turtle_scute',Count:1b,tag:{CustomModelData:39}}, transformation:{scale:[5.3f,5.3f,5.3f]}}
execute if score action cart_vars matches 32 run data merge entity @s {item:{id:'minecraft:turtle_scute',Count:1b,tag:{CustomModelData:40}}, transformation:{scale:[5.3f,5.3f,5.3f]}}
execute if score action cart_vars matches 28 run data merge entity @s {item:{id:'minecraft:turtle_scute',Count:1b,tag:{CustomModelData:41}}, transformation:{scale:[5.3f,5.3f,5.3f]}}
execute if score action cart_vars matches 24 run data merge entity @s {item:{id:'minecraft:turtle_scute',Count:1b,tag:{CustomModelData:42}}, transformation:{scale:[5.3f,5.3f,5.3f]}}
execute if score action cart_vars matches 20 run data merge entity @s {item:{id:'minecraft:turtle_scute',Count:1b,tag:{CustomModelData:43}}, transformation:{scale:[5.3f,5.3f,5.3f]}}
execute if score action cart_vars matches 16 run data merge entity @s {item:{id:'minecraft:turtle_scute',Count:1b,tag:{CustomModelData:44}}, transformation:{scale:[5.3f,5.3f,5.3f]}}
execute if score action cart_vars matches 12 run data merge entity @s {item:{id:'minecraft:turtle_scute',Count:1b,tag:{CustomModelData:45}}, transformation:{scale:[5.3f,5.3f,5.3f]}}
execute if score action cart_vars matches 8 run data merge entity @s {item:{id:'minecraft:turtle_scute',Count:1b,tag:{CustomModelData:46}}, transformation:{scale:[5.3f,5.3f,5.3f]}}
execute if score action cart_vars matches 4 run data merge entity @s {item:{id:'minecraft:turtle_scute',Count:1b,tag:{CustomModelData:47}}, transformation:{scale:[5.3f,5.3f,5.3f]}}
execute if score action cart_vars matches 1 run data merge entity @s {item:{id:'minecraft:turtle_scute',Count:1b,tag:{CustomModelData:48}}, transformation:{scale:[5.3f,5.3f,5.3f]}}

execute if score action cart_vars matches 35 run effect give @a[scores={cart_vars=1}] absorption 10 6 true
execute if score action cart_vars matches 25 run effect give @a[scores={cart_vars=1}] absorption 10 8 true
execute if score action cart_vars matches 15 run effect give @a[scores={cart_vars=1}] absorption 10 10 true
execute if score action cart_vars matches 5 run effect give @a[scores={cart_vars=1}] absorption 10 11 true

execute if score action cart_vars matches 1 run execute as @a[scores={cart_vars=1}] run function snc:give/item/cart/primary
execute if score action cart_vars matches 1 run function snc:shifters/mobs/cart/spawn/summon_carts

execute if score action cart_vars matches 1 run scoreboard players set consume cart_vars 20
execute if score action cart_vars matches 1 run scoreboard players set state cart_vars 3