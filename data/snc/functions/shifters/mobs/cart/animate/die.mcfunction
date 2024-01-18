execute unless block ~ ~-5.3 ~ #snc:filter_shifter on vehicle run data merge entity @s {NoGravity:1b}

execute unless score @s cart_vars matches ..7200 run scoreboard players set @s cart_vars 7200
## Prevent 2 corpses at the same time
scoreboard players set $corpses cart_vars 0
execute if score @s cart_vars matches 7200 as @e[tag=shifter,tag=cart,tag=dead] run scoreboard players add $corpses cart_vars 1
execute if score $corpses cart_vars matches 2.. as @e[tag=shifter,tag=cart,tag=dead,limit=1,sort=arbitrary] run function snc:shifters/mobs/kill_old

execute if score @s cart_vars matches 7200 run bossbar remove minecraft:cart_health

execute if score @s cart_vars matches 1000.. on vehicle run particle campfire_signal_smoke ^1.5 ^-2 ^ 2 3 2 .01 1 force
execute if score @s cart_vars matches 1000.. on vehicle run fill ^-3 ^-1 ^-3 ^3 ^-1 ^3 minecraft:air replace barrier

## TEMP
execute if score @s cart_vars matches 7200.. run item replace entity @p[scores={cart_vars=1}] armor.head with air

execute if score @s cart_vars matches 7200 run data merge entity @s {item:{id:'minecraft:turtle_scute',Count:1b,tag:{CustomModelData:48}}, transformation:{scale:[5.3f,5.3f,5.3f]}}
execute if score @s cart_vars matches 7200 run data merge entity @s {item:{id:'minecraft:turtle_scute',Count:1b,tag:{CustomModelData:49}}, transformation:{scale:[5.3f,5.3f,5.3f]}}
execute if score @s cart_vars matches 7200 run data merge entity @s {item:{id:'minecraft:turtle_scute',Count:1b,tag:{CustomModelData:50}}, transformation:{scale:[5.3f,5.3f,5.3f]}}
#4
execute if score @s cart_vars matches 7176 run data merge entity @s {item:{id:'minecraft:turtle_scute',Count:1b,tag:{CustomModelData:51}}, transformation:{scale:[5.3f,5.3f,5.3f]}}
execute if score @s cart_vars matches 7172 run data merge entity @s {item:{id:'minecraft:turtle_scute',Count:1b,tag:{CustomModelData:52}}, transformation:{scale:[5.3f,5.3f,5.3f]}}
execute if score @s cart_vars matches 7168 run data merge entity @s {item:{id:'minecraft:turtle_scute',Count:1b,tag:{CustomModelData:53}}, transformation:{scale:[5.3f,5.3f,5.3f]}}
execute if score @s cart_vars matches 7165 run data merge entity @s {item:{id:'minecraft:turtle_scute',Count:1b,tag:{CustomModelData:54}}, transformation:{scale:[5.3f,5.3f,5.3f]}}
execute if score @s cart_vars matches 7162 run data merge entity @s {item:{id:'minecraft:turtle_scute',Count:1b,tag:{CustomModelData:55}}, transformation:{scale:[5.3f,5.3f,5.3f]}}
#8

execute if score @s cart_vars matches 7150 run data merge entity @s {item:{id:'minecraft:turtle_scute',Count:1b,tag:{CustomModelData:56}}, transformation:{scale:[5.3f,5.3f,5.3f]}}
execute if score @s cart_vars matches 7100 run data merge entity @s {item:{id:'minecraft:turtle_scute',Count:1b,tag:{CustomModelData:57}}, transformation:{scale:[5.3f,5.3f,5.3f]}}
execute if score @s cart_vars matches 7050 run data merge entity @s {item:{id:'minecraft:turtle_scute',Count:1b,tag:{CustomModelData:58}}, transformation:{scale:[5.3f,5.3f,5.3f]}}
execute if score @s cart_vars matches 7000 run data merge entity @s {item:{id:'minecraft:turtle_scute',Count:1b,tag:{CustomModelData:59}}, transformation:{scale:[5.3f,5.3f,5.3f]}}
execute if score @s cart_vars matches 6950 run data merge entity @s {item:{id:'minecraft:turtle_scute',Count:1b,tag:{CustomModelData:60}}, transformation:{scale:[5.3f,5.3f,5.3f]}}
execute if score @s cart_vars matches 6900 run data merge entity @s {item:{id:'minecraft:turtle_scute',Count:1b,tag:{CustomModelData:61}}, transformation:{scale:[5.3f,5.3f,5.3f]}}
execute if score @s cart_vars matches 6850 run data merge entity @s {item:{id:'minecraft:turtle_scute',Count:1b,tag:{CustomModelData:62}}, transformation:{scale:[5.3f,5.3f,5.3f]}}
execute if score @s cart_vars matches 6750 run data merge entity @s {item:{id:'minecraft:turtle_scute',Count:1b,tag:{CustomModelData:63}}, transformation:{scale:[5.3f,5.3f,5.3f]}}
execute if score @s cart_vars matches 6700 run data merge entity @s {item:{id:'minecraft:turtle_scute',Count:1b,tag:{CustomModelData:64}}, transformation:{scale:[5.3f,5.3f,5.3f]}}
execute if score @s cart_vars matches 6650 run data merge entity @s {item:{id:'minecraft:turtle_scute',Count:1b,tag:{CustomModelData:65}}, transformation:{scale:[5.3f,5.3f,5.3f]}}
execute if score @s cart_vars matches 6600 run data merge entity @s {item:{id:'minecraft:turtle_scute',Count:1b,tag:{CustomModelData:66}}, transformation:{scale:[5.3f,5.3f,5.3f]}}
execute if score @s cart_vars matches 6550 run data merge entity @s {item:{id:'minecraft:turtle_scute',Count:1b,tag:{CustomModelData:67}}, transformation:{scale:[5.3f,5.3f,5.3f]}}
execute if score @s cart_vars matches 6450 run data merge entity @s {item:{id:'minecraft:turtle_scute',Count:1b,tag:{CustomModelData:68}}, transformation:{scale:[5.3f,5.3f,5.3f]}}
execute if score @s cart_vars matches 6400 run data merge entity @s {item:{id:'minecraft:turtle_scute',Count:1b,tag:{CustomModelData:69}}, transformation:{scale:[5.3f,5.3f,5.3f]}}
execute if score @s cart_vars matches 6350 run data merge entity @s {item:{id:'minecraft:turtle_scute',Count:1b,tag:{CustomModelData:70}}, transformation:{scale:[5.3f,5.3f,5.3f]}}
execute if score @s cart_vars matches 6300 run data merge entity @s {item:{id:'minecraft:turtle_scute',Count:1b,tag:{CustomModelData:71}}, transformation:{scale:[5.3f,5.3f,5.3f]}}
execute if score @s cart_vars matches 6250 run data merge entity @s {item:{id:'minecraft:turtle_scute',Count:1b,tag:{CustomModelData:72}}, transformation:{scale:[5.3f,5.3f,5.3f]}}
execute if score @s cart_vars matches 6200 run data merge entity @s {item:{id:'minecraft:turtle_scute',Count:1b,tag:{CustomModelData:73}}, transformation:{scale:[5.3f,5.3f,5.3f]}}

execute if score @s cart_vars matches 2 run function snc:shifters/mobs/kill_old