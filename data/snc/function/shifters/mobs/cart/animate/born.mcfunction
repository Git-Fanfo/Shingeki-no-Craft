execute if score action cart_vars matches 40 run playsound minecraft:aot.cart_roar player @a ~ ~ ~ 5 1.05
execute if score action cart_vars matches 40 run summon firework_rocket ~ ~5 ~ {Silent:1b,LifeTime:1,ShotAtAngle:0b,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:0,Colors:[I;16753152],FadeColors:[I;16777215]}]}}}}
execute if score action cart_vars matches 40 run function snc:titans/volt/spawn
execute if score action cart_vars matches 40 run playsound minecraft:item.trident.thunder master @a ~ ~ ~
execute if score action cart_vars matches 46 run summon firework_rocket ~ ~5 ~ {Silent:1b,LifeTime:1,ShotAtAngle:0b,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:0,Colors:[I;16753152],FadeColors:[I;16777215]}]}}}}
execute if score action cart_vars matches 46 run function snc:titans/volt/spawn
execute if score action cart_vars matches 46 run playsound minecraft:item.trident.thunder master @a ~ ~ ~
execute if score action cart_vars matches 41 run summon firework_rocket ~ ~5 ~ {Silent:1b,LifeTime:1,ShotAtAngle:0b,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:0,Colors:[I;16753152],FadeColors:[I;16777215]}]}}}}
execute if score action cart_vars matches 41 run function snc:titans/volt/spawn
execute if score action cart_vars matches 41 run playsound minecraft:item.trident.thunder master @a ~ ~ ~

execute if score action cart_vars matches 40 run data modify entity @s item.components.minecraft:custom_model_data set value 38
execute if score action cart_vars matches 36 run data modify entity @s item.components.minecraft:custom_model_data set value 39
execute if score action cart_vars matches 32 run data modify entity @s item.components.minecraft:custom_model_data set value 40
execute if score action cart_vars matches 28 run data modify entity @s item.components.minecraft:custom_model_data set value 41
execute if score action cart_vars matches 24 run data modify entity @s item.components.minecraft:custom_model_data set value 42
execute if score action cart_vars matches 20 run data modify entity @s item.components.minecraft:custom_model_data set value 43
execute if score action cart_vars matches 16 run data modify entity @s item.components.minecraft:custom_model_data set value 44
execute if score action cart_vars matches 12 run data modify entity @s item.components.minecraft:custom_model_data set value 45
execute if score action cart_vars matches 8 run data modify entity @s item.components.minecraft:custom_model_data set value 46
execute if score action cart_vars matches 4 run data modify entity @s item.components.minecraft:custom_model_data set value 47
execute if score action cart_vars matches 1 run data modify entity @s item.components.minecraft:custom_model_data set value 48

execute if score action cart_vars matches 35 run effect give @a[scores={cart_vars=1}] absorption 10 4 true
execute if score action cart_vars matches 25 run effect give @a[scores={cart_vars=1}] absorption 10 5 true
execute if score action cart_vars matches 15 run effect give @a[scores={cart_vars=1}] absorption 10 6 true
execute if score action cart_vars matches 5 run effect give @a[scores={cart_vars=1}] absorption 10 7 true

execute if score action cart_vars matches 1 run execute as @a[scores={cart_vars=1}] run function snc:shifters/mobs/cart/abilities/give

execute if score action cart_vars matches 1 run scoreboard players set state cart_vars 3