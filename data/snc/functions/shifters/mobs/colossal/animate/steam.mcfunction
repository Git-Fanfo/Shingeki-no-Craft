# Full
execute if score $form colossal_vars matches 1 unless score action colossal_vars matches 1 run data modify entity @s item.components.minecraft:custom_model_data set value 452
execute if score $form colossal_vars matches 0 unless score action colossal_vars matches 1 run data modify entity @s item.components.minecraft:custom_model_data set value 453

particle minecraft:campfire_cosy_smoke ^ ^ ^ 0 0 0 1 40 force

execute if score action colossal_vars matches 220 on vehicle on passengers if entity @s[type=player] run item replace entity @s armor.head with carved_pumpkin[custom_model_data=11]
execute if score action colossal_vars matches 220 run particle minecraft:flame ~ ~10 ~ 5 5 5 .8 500 force
execute if score action colossal_vars matches 239 as @e[type=!item,distance=.5..80] unless entity @s[tag=colossal] unless score @s colossal_vars matches 1 run function snc:shifters/mobs/colossal/action/steam/damage
# execute if score action colossal_vars matches 239 run damage @p[scores={colossal_vars=1}] 6 in_fire

execute if score action colossal_vars matches 170 run particle minecraft:flame ~ ~10 ~ 5 5 5 .8 500 force
execute if score action colossal_vars matches 160 as @e[type=!item,distance=.5..80] unless entity @s[tag=colossal] unless score @s colossal_vars matches 1 run function snc:shifters/mobs/colossal/action/steam/damage
# execute if score action colossal_vars matches 170 run damage @p[scores={colossal_vars=1}] 6 in_fire

execute if score action colossal_vars matches 120 run particle minecraft:flame ~ ~10 ~ 5 5 5 .8 500 force
execute if score action colossal_vars matches 110 as @e[type=!item,distance=.5..80] unless entity @s[tag=colossal] unless score @s colossal_vars matches 1 run function snc:shifters/mobs/colossal/action/steam/damage
# execute if score action colossal_vars matches 120 run damage @p[scores={colossal_vars=1}] 6 in_fire

execute if score action colossal_vars matches 70 run particle minecraft:flame ~ ~10 ~ 5 5 5 .8 500 force
execute if score action colossal_vars matches 60 as @e[type=!item,distance=.5..80] unless entity @s[tag=colossal] unless score @s colossal_vars matches 1 run function snc:shifters/mobs/colossal/action/steam/damage
# execute if score action colossal_vars matches 70 run damage @p[scores={colossal_vars=1}] 6 in_fire

execute if score action colossal_vars matches 20 run particle minecraft:flame ~ ~10 ~ 5 5 5 .8 500 force
execute if score action colossal_vars matches 10 as @e[type=!item,distance=.5..80] unless entity @s[tag=colossal] unless score @s colossal_vars matches 1 run function snc:shifters/mobs/colossal/action/steam/damage
# execute if score action colossal_vars matches 20 run damage @p[scores={colossal_vars=1}] 6 in_fire
execute if score action colossal_vars matches 4 run scoreboard players set consume colossal_vars 107
execute if score action colossal_vars matches ..1 run scoreboard players set state colossal_vars 3