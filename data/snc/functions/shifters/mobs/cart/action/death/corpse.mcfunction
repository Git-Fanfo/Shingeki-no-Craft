execute unless score @s cart_vars matches ..1200 run scoreboard players set @s cart_vars 1200
## Prevent 2 corpses at the same time
scoreboard players set $corpses cart_vars 0
execute if score @s cart_vars matches 1200 as @e[tag=shifter,tag=cart,tag=dead] run scoreboard players add $corpses cart_vars 1
execute if score $corpses cart_vars matches 2.. as @e[tag=shifter,tag=cart,tag=dead,limit=1,sort=arbitrary] run function snc:shifters/mobs/kill
attribute @s generic.scale base set 4.5

## Reset
execute if score @s cart_vars matches 1200 run bossbar remove minecraft:cart_health
execute if score @s cart_vars matches 1200 run scoreboard players set state cart_vars 0

execute if score @s cart_vars matches 200.. run particle campfire_signal_smoke ^1.5 ^-2 ^ 2 3 2 .01 1 force
execute if score @s cart_vars matches 200.. run fill ^-3 ^-1 ^-3 ^3 ^-1 ^3 minecraft:air replace barrier

## Change variant
execute if score @s cart_vars matches 1200 run data merge entity @s {item:{id:'minecraft:turtle_scute',Count:1b,tag:{CustomModelData:48}}}
execute if score @s cart_vars matches 1200 run data merge entity @s {item:{id:'minecraft:turtle_scute',Count:1b,tag:{CustomModelData:49}}}
execute if score @s cart_vars matches 1200 run data merge entity @s {item:{id:'minecraft:turtle_scute',Count:1b,tag:{CustomModelData:50}}}
#4
execute if score @s cart_vars matches 1176 run data merge entity @s {item:{id:'minecraft:turtle_scute',Count:1b,tag:{CustomModelData:51}}}
execute if score @s cart_vars matches 1172 run data merge entity @s {item:{id:'minecraft:turtle_scute',Count:1b,tag:{CustomModelData:52}}}
execute if score @s cart_vars matches 1168 run data merge entity @s {item:{id:'minecraft:turtle_scute',Count:1b,tag:{CustomModelData:53}}}
execute if score @s cart_vars matches 1165 run data merge entity @s {item:{id:'minecraft:turtle_scute',Count:1b,tag:{CustomModelData:54}}}
execute if score @s cart_vars matches 1162 run data merge entity @s {item:{id:'minecraft:turtle_scute',Count:1b,tag:{CustomModelData:55}}}
#8

execute if score @s cart_vars matches 1150 run data merge entity @s {item:{id:'minecraft:turtle_scute',Count:1b,tag:{CustomModelData:56}}}
execute if score @s cart_vars matches 1100 run data merge entity @s {item:{id:'minecraft:turtle_scute',Count:1b,tag:{CustomModelData:57}}}
execute if score @s cart_vars matches 1050 run data merge entity @s {item:{id:'minecraft:turtle_scute',Count:1b,tag:{CustomModelData:58}}}
execute if score @s cart_vars matches 1000 run data merge entity @s {item:{id:'minecraft:turtle_scute',Count:1b,tag:{CustomModelData:59}}}
execute if score @s cart_vars matches 950 run data merge entity @s {item:{id:'minecraft:turtle_scute',Count:1b,tag:{CustomModelData:60}}}
execute if score @s cart_vars matches 900 run data merge entity @s {item:{id:'minecraft:turtle_scute',Count:1b,tag:{CustomModelData:61}}}
execute if score @s cart_vars matches 850 run data merge entity @s {item:{id:'minecraft:turtle_scute',Count:1b,tag:{CustomModelData:62}}}
execute if score @s cart_vars matches 750 run data merge entity @s {item:{id:'minecraft:turtle_scute',Count:1b,tag:{CustomModelData:63}}}
execute if score @s cart_vars matches 700 run data merge entity @s {item:{id:'minecraft:turtle_scute',Count:1b,tag:{CustomModelData:64}}}
execute if score @s cart_vars matches 650 run data merge entity @s {item:{id:'minecraft:turtle_scute',Count:1b,tag:{CustomModelData:65}}}
execute if score @s cart_vars matches 600 run data merge entity @s {item:{id:'minecraft:turtle_scute',Count:1b,tag:{CustomModelData:66}}}
execute if score @s cart_vars matches 550 run data merge entity @s {item:{id:'minecraft:turtle_scute',Count:1b,tag:{CustomModelData:67}}}
execute if score @s cart_vars matches 450 run data merge entity @s {item:{id:'minecraft:turtle_scute',Count:1b,tag:{CustomModelData:68}}}
execute if score @s cart_vars matches 400 run data merge entity @s {item:{id:'minecraft:turtle_scute',Count:1b,tag:{CustomModelData:69}}}
execute if score @s cart_vars matches 350 run data merge entity @s {item:{id:'minecraft:turtle_scute',Count:1b,tag:{CustomModelData:70}}}
execute if score @s cart_vars matches 300 run data merge entity @s {item:{id:'minecraft:turtle_scute',Count:1b,tag:{CustomModelData:71}}}
execute if score @s cart_vars matches 250 run data merge entity @s {item:{id:'minecraft:turtle_scute',Count:1b,tag:{CustomModelData:72}}}
execute if score @s cart_vars matches 200 run data merge entity @s {item:{id:'minecraft:turtle_scute',Count:1b,tag:{CustomModelData:73}}}

execute if score @s cart_vars matches 0 run particle minecraft:cloud ~ ~4 ~ 2 2 2 .2 500 force
execute if score @s cart_vars matches 0 run function snc:shifters/mobs/kill