execute if score action cart_vars matches 40 on vehicle run effect give @s levitation 2 2 true
execute if score action cart_vars matches 40 run playsound minecraft:aot.cart_roar player @a ~ ~ ~ 5 1.05
execute if score action cart_vars matches 40 run summon firework_rocket ~ ~5 ~ {Silent:1b,LifeTime:1,ShotAtAngle:0b,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:0,Colors:[I;16753152],FadeColors:[I;16777215]}]}}}}
execute if score action cart_vars matches 40 run function snc:titans/volt/spawn
execute if score action cart_vars matches 40 run playsound minecraft:item.trident.thunder master @a ~ ~ ~
execute if score action cart_vars matches 36 run summon firework_rocket ~ ~5 ~ {Silent:1b,LifeTime:1,ShotAtAngle:0b,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:0,Colors:[I;16753152],FadeColors:[I;16777215]}]}}}}
execute if score action cart_vars matches 36 run function snc:titans/volt/spawn
execute if score action cart_vars matches 36 run playsound minecraft:item.trident.thunder master @a ~ ~ ~
execute if score action cart_vars matches 31 run summon firework_rocket ~ ~5 ~ {Silent:1b,LifeTime:1,ShotAtAngle:0b,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:0,Colors:[I;16753152],FadeColors:[I;16777215]}]}}}}
execute if score action cart_vars matches 31 run function snc:titans/volt/spawn
execute if score action cart_vars matches 31 run playsound minecraft:item.trident.thunder master @a ~ ~ ~

execute if score action cart_vars matches 40 run data modify entity @s item.components.minecraft:item_model set value "shifters/cart/born/2"
execute if score action cart_vars matches 36 run data modify entity @s item.components.minecraft:item_model set value "shifters/cart/born/3"
execute if score action cart_vars matches 32 run data modify entity @s item.components.minecraft:item_model set value "shifters/cart/born/4"
execute if score action cart_vars matches 28 run data modify entity @s item.components.minecraft:item_model set value "shifters/cart/born/5"
execute if score action cart_vars matches 24 run data modify entity @s item.components.minecraft:item_model set value "shifters/cart/born/6"
execute if score action cart_vars matches 20 run data modify entity @s item.components.minecraft:item_model set value "shifters/cart/born/7"
execute if score action cart_vars matches 16 run data modify entity @s item.components.minecraft:item_model set value "shifters/cart/born/8"
execute if score action cart_vars matches 12 run data modify entity @s item.components.minecraft:item_model set value "shifters/cart/born/9"
execute if score action cart_vars matches 8 run data modify entity @s item.components.minecraft:item_model set value "shifters/cart/born/10"
execute if score action cart_vars matches 4 run data modify entity @s item.components.minecraft:item_model set value "shifters/cart/born/11"
execute if score action cart_vars matches 1 run data modify entity @s item.components.minecraft:item_model set value "shifters/cart/idle/1"

execute if score action cart_vars matches 35 run effect give @a[scores={cart_vars=1}] absorption 10 4 true
execute if score action cart_vars matches 25 run effect give @a[scores={cart_vars=1}] absorption 10 5 true
execute if score action cart_vars matches 15 run effect give @a[scores={cart_vars=1}] absorption 10 6 true
execute if score action cart_vars matches 5 run effect give @a[scores={cart_vars=1}] absorption 10 7 true

execute if score action cart_vars matches 1 run execute as @a[scores={cart_vars=1}] run function snc:shifters/mobs/cart/abilities/give

execute if score action cart_vars matches 1 run scoreboard players set state cart_vars 3