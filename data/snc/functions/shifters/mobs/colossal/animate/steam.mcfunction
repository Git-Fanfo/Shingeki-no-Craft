# Full
execute unless score state_sp colossal_vars matches 1 unless score action colossal_vars matches 1 run data merge entity @s {item:{id:'minecraft:scute',Count:1b,tag:{CustomModelData:452}}}
# Half
execute if score state_sp colossal_vars matches 1 unless score action colossal_vars matches 1 run data merge entity @s {item:{id:'minecraft:scute',Count:1b,tag:{CustomModelData:453}}}
execute if score action colossal_vars matches 220 run playsound minecraft:aot.colossal_roar player @a ~ ~ ~ 4 .9

particle minecraft:campfire_cosy_smoke ^ ^ ^ 0 0 0 1 40 force

execute if score action colossal_vars matches 220 run particle minecraft:flame ~ ~10 ~ 5 5 5 .8 500 force
execute if score action colossal_vars matches 239 as @e[type=!item,tag=!colossal,distance=.5..80] run function snc:shifters/mobs/colossal/action/steam/damage
execute if score action colossal_vars matches 239 run damage @p[scores={colossal_vars=1}] 6 in_fire

execute if score action colossal_vars matches 170 run particle minecraft:flame ~ ~10 ~ 5 5 5 .8 500 force
execute if score action colossal_vars matches 160 as @e[type=!item,tag=!colossal,distance=.5..80] run function snc:shifters/mobs/colossal/action/steam/damage
execute if score action colossal_vars matches 170 run damage @p[scores={colossal_vars=1}] 6 in_fire

execute if score action colossal_vars matches 120 run particle minecraft:flame ~ ~10 ~ 5 5 5 .8 500 force
execute if score action colossal_vars matches 110 as @e[type=!item,tag=!colossal,distance=.5..80] run function snc:shifters/mobs/colossal/action/steam/damage
execute if score action colossal_vars matches 120 run damage @p[scores={colossal_vars=1}] 6 in_fire

execute if score action colossal_vars matches 70 run particle minecraft:flame ~ ~10 ~ 5 5 5 .8 500 force
execute if score action colossal_vars matches 60 as @e[type=!item,tag=!colossal,distance=.5..80] run function snc:shifters/mobs/colossal/action/steam/damage
execute if score action colossal_vars matches 70 run damage @p[scores={colossal_vars=1}] 6 in_fire

execute if score action colossal_vars matches 20 run particle minecraft:flame ~ ~10 ~ 5 5 5 .8 500 force
execute if score action colossal_vars matches 10 as @e[type=!item,tag=!colossal,distance=.5..80] run function snc:shifters/mobs/colossal/action/steam/damage
execute if score action colossal_vars matches 20 run damage @p[scores={colossal_vars=1}] 6 in_fire

execute if score action colossal_vars matches 1 run function snc:shifters/mobs/colossal/action/steam/remove