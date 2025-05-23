execute if score action colossal_vars matches 50 run data modify entity @s item.components.minecraft:item_model set value "shifters/colossal/eat/1"
execute if score action colossal_vars matches 48 run data modify entity @s item.components.minecraft:item_model set value "shifters/colossal/eat/2"
execute if score action colossal_vars matches 46 run data modify entity @s item.components.minecraft:item_model set value "shifters/colossal/eat/3"
execute if score action colossal_vars matches 44 run data modify entity @s item.components.minecraft:item_model set value "shifters/colossal/eat/4"
execute if score action colossal_vars matches 42 run data modify entity @s item.components.minecraft:item_model set value "shifters/colossal/eat/5"
execute if score action colossal_vars matches 40 run data modify entity @s item.components.minecraft:item_model set value "shifters/colossal/eat/6"
execute if score action colossal_vars matches 38 run data modify entity @s item.components.minecraft:item_model set value "shifters/colossal/eat/7"
execute if score action colossal_vars matches 36 run data modify entity @s item.components.minecraft:item_model set value "shifters/colossal/eat/8"
execute if score action colossal_vars matches 34 run data modify entity @s item.components.minecraft:item_model set value "shifters/colossal/eat/9"
execute if score action colossal_vars matches 32 run data modify entity @s item.components.minecraft:item_model set value "shifters/colossal/eat/10"
execute if score action colossal_vars matches 30 run data modify entity @s item.components.minecraft:item_model set value "shifters/colossal/eat/11"
execute if score action colossal_vars matches 28 run data modify entity @s item.components.minecraft:item_model set value "shifters/colossal/eat/12"
execute if score action colossal_vars matches 26 run data modify entity @s item.components.minecraft:item_model set value "shifters/colossal/eat/13"
execute if score action colossal_vars matches 24 run data modify entity @s item.components.minecraft:item_model set value "shifters/colossal/eat/14"
execute if score action colossal_vars matches 22 run data modify entity @s item.components.minecraft:item_model set value "shifters/colossal/eat/15"
execute if score action colossal_vars matches 20 run data modify entity @s item.components.minecraft:item_model set value "shifters/colossal/eat/16"
execute if score action colossal_vars matches 18 run data modify entity @s item.components.minecraft:item_model set value "shifters/colossal/eat/17"
execute if score action colossal_vars matches 16 run data modify entity @s item.components.minecraft:item_model set value "shifters/colossal/eat/18"
execute if score action colossal_vars matches 14 run data modify entity @s item.components.minecraft:item_model set value "shifters/colossal/eat/19"
execute if score action colossal_vars matches 12 run data modify entity @s item.components.minecraft:item_model set value "shifters/colossal/eat/20"
execute if score action colossal_vars matches 10 run data modify entity @s item.components.minecraft:item_model set value "shifters/colossal/eat/21"
execute if score action colossal_vars matches 8 run data modify entity @s item.components.minecraft:item_model set value "shifters/colossal/eat/22"

execute if score action colossal_vars matches 16 on vehicle rotated ~ 0 positioned ^5 ^1 ^13.5 as @e[type=!#snc:pivot,distance=..10] unless entity @s[tag=colossal] unless score @s colossal_vars matches 1 run function snc:shifters/mobs/colossal/action/bite/tp
execute if score action colossal_vars matches 14 on vehicle rotated ~ 0 positioned ^5 ^9 ^13 as @e[type=!#snc:pivot,distance=..10] unless entity @s[tag=colossal] unless score @s colossal_vars matches 1 run function snc:shifters/mobs/colossal/action/bite/tp
execute if score action colossal_vars matches 12 on vehicle rotated ~ 0 positioned ^5 ^12 ^10.5 as @e[type=!#snc:pivot,distance=..10] unless entity @s[tag=colossal] unless score @s colossal_vars matches 1 run function snc:shifters/mobs/colossal/action/bite/tp
execute if score action colossal_vars matches 10 on vehicle rotated ~ 0 positioned ^3 ^14 ^5 as @e[type=!#snc:pivot,distance=..10] unless entity @s[tag=colossal] unless score @s colossal_vars matches 1 run function snc:shifters/mobs/colossal/action/bite/tp
execute if score action colossal_vars matches 8 on vehicle rotated ~ 0 positioned ^1.5 ^19 ^4 as @e[type=!#snc:pivot,distance=..10] unless entity @s[tag=colossal] unless score @s colossal_vars matches 1 run function snc:shifters/mobs/colossal/action/bite/tp

execute if score action colossal_vars matches 21 on vehicle on controller run tag @s add consume
execute if score action colossal_vars matches 20 on vehicle on controller run function snc:shifters/mobs/colossal/head {"frame":1}

execute if score action colossal_vars matches 17 on vehicle on controller run playsound minecraft:aot.shifters.bite player @a ~ ~ ~ 6 .8
execute if score action colossal_vars matches 17 on vehicle on controller run function snc:shifters/mobs/colossal/head {"frame":2}
execute if score action colossal_vars matches 15 on vehicle on controller run function snc:shifters/mobs/colossal/head {"frame":3}
execute if score action colossal_vars matches 13 on vehicle on controller run function snc:shifters/mobs/colossal/head {"frame":4}
execute if score action colossal_vars matches 11 on vehicle on controller run function snc:shifters/mobs/colossal/head {"frame":5}
execute if score action colossal_vars matches 9 on vehicle on controller run function snc:shifters/mobs/colossal/head {"frame":3}
execute if score action colossal_vars matches 8 on vehicle on controller run function snc:shifters/mobs/colossal/head {"frame":1}

execute if score action colossal_vars matches 8 on vehicle on controller at @s anchored eyes positioned ^ ^ ^3 run function snc:shifters/mobs/colossal/action/jaw/damage with storage minecraft:colossal

execute if score action colossal_vars matches 1 on vehicle on controller run tag @s remove consume

execute if score action colossal_vars matches ..1 run scoreboard players set state colossal_vars 3
