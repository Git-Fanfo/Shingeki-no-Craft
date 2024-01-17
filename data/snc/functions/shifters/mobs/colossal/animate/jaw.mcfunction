execute if score action colossal_vars matches 50 run data merge entity @s {item:{id:'minecraft:scute',Count:1b,tag:{CustomModelData:480}}}
execute if score action colossal_vars matches 48 run data merge entity @s {item:{id:'minecraft:scute',Count:1b,tag:{CustomModelData:481}}}
execute if score action colossal_vars matches 46 run data merge entity @s {item:{id:'minecraft:scute',Count:1b,tag:{CustomModelData:482}}}
execute if score action colossal_vars matches 44 run data merge entity @s {item:{id:'minecraft:scute',Count:1b,tag:{CustomModelData:483}}}
execute if score action colossal_vars matches 42 run data merge entity @s {item:{id:'minecraft:scute',Count:1b,tag:{CustomModelData:484}}}
execute if score action colossal_vars matches 40 run data merge entity @s {item:{id:'minecraft:scute',Count:1b,tag:{CustomModelData:485}}}
execute if score action colossal_vars matches 38 run data merge entity @s {item:{id:'minecraft:scute',Count:1b,tag:{CustomModelData:486}}}
execute if score action colossal_vars matches 36 run data merge entity @s {item:{id:'minecraft:scute',Count:1b,tag:{CustomModelData:487}}}
execute if score action colossal_vars matches 34 run data merge entity @s {item:{id:'minecraft:scute',Count:1b,tag:{CustomModelData:488}}}
execute if score action colossal_vars matches 32 run data merge entity @s {item:{id:'minecraft:scute',Count:1b,tag:{CustomModelData:489}}}
execute if score action colossal_vars matches 30 run data merge entity @s {item:{id:'minecraft:scute',Count:1b,tag:{CustomModelData:490}}}
execute if score action colossal_vars matches 28 run data merge entity @s {item:{id:'minecraft:scute',Count:1b,tag:{CustomModelData:491}}}
execute if score action colossal_vars matches 26 run data merge entity @s {item:{id:'minecraft:scute',Count:1b,tag:{CustomModelData:492}}}
execute if score action colossal_vars matches 24 run data merge entity @s {item:{id:'minecraft:scute',Count:1b,tag:{CustomModelData:493}}}
execute if score action colossal_vars matches 22 run data merge entity @s {item:{id:'minecraft:scute',Count:1b,tag:{CustomModelData:494}}}
execute if score action colossal_vars matches 20 run data merge entity @s {item:{id:'minecraft:scute',Count:1b,tag:{CustomModelData:495}}}
execute if score action colossal_vars matches 18 run data merge entity @s {item:{id:'minecraft:scute',Count:1b,tag:{CustomModelData:496}}}
execute if score action colossal_vars matches 16 run data merge entity @s {item:{id:'minecraft:scute',Count:1b,tag:{CustomModelData:497}}}
execute if score action colossal_vars matches 14 run data merge entity @s {item:{id:'minecraft:scute',Count:1b,tag:{CustomModelData:498}}}
execute if score action colossal_vars matches 12 run data merge entity @s {item:{id:'minecraft:scute',Count:1b,tag:{CustomModelData:499}}}
execute if score action colossal_vars matches 10 run data merge entity @s {item:{id:'minecraft:scute',Count:1b,tag:{CustomModelData:500}}}
execute if score action colossal_vars matches 8 run data merge entity @s {item:{id:'minecraft:scute',Count:1b,tag:{CustomModelData:501}}}

# execute on vehicle at @s rotated ~ 0 positioned ^2 ^-1 ^5 run particle heart ~ ~ ~ 0 0 0 0 20 force

execute if score action colossal_vars matches 16 on vehicle at @s rotated ~ 0 positioned ^2 ^-15 ^15 as @e[tag=!colossal,type=!item,distance=..10] unless entity @s[type=player,scores={colossal_vars=1}] run function snc:shifters/mobs/colossal/action/jaw/tp
execute if score action colossal_vars matches 14 on vehicle at @s rotated ~ 0 positioned ^2.7 ^-12 ^15 as @e[tag=!colossal,type=!item,distance=..10] unless entity @s[type=player,scores={colossal_vars=1}] run function snc:shifters/mobs/colossal/action/jaw/tp
execute if score action colossal_vars matches 12 on vehicle at @s rotated ~ 0 positioned ^3 ^-7 ^11 as @e[tag=!colossal,type=!item,distance=..10] unless entity @s[type=player,scores={colossal_vars=1}] run function snc:shifters/mobs/colossal/action/jaw/tp
execute if score action colossal_vars matches 10 on vehicle at @s rotated ~ 0 positioned ^3 ^-3 ^7 as @e[tag=!colossal,type=!item,distance=..10] unless entity @s[type=player,scores={colossal_vars=1}] run function snc:shifters/mobs/colossal/action/jaw/tp
execute if score action colossal_vars matches 8 on vehicle at @s rotated ~ 0 positioned ^2 ^-1 ^5 as @e[tag=!colossal,type=!item,distance=..10] unless entity @s[type=player,scores={colossal_vars=1}] run function snc:shifters/mobs/colossal/action/jaw/tp

execute if score action colossal_vars matches 1 run function snc:shifters/mobs/colossal/action/jaw/remove

