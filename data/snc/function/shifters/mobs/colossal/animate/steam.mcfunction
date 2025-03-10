# Full
execute if score $form colossal_vars matches 1 unless score action colossal_vars matches 1 run data modify entity @s item.components.minecraft:item_model set value "shifters/colossal/steam/1"
execute if score $form colossal_vars matches 0 unless score action colossal_vars matches 1 run data modify entity @s item.components.minecraft:item_model set value "shifters/colossal/steam_wall/1"

particle minecraft:campfire_cosy_smoke ^ ^ ^ 0 0 0 1 40 force

execute if score action colossal_vars matches 20.. on vehicle run effect give @s slowness 1 6 true
execute if score action colossal_vars matches 220 run scoreboard players set $roar colossal_vars 5
execute if score action colossal_vars matches 220 run function snc:shifters/mobs/colossal/action/steam/energy
execute if score action colossal_vars matches 239 as @e[type=!item,distance=.5..80] unless score @s colossal_vars matches 1 run function snc:shifters/mobs/colossal/action/steam/damage
# execute if score action colossal_vars matches 239 run damage @p[scores={colossal_vars=1}] 6 in_fire

execute if score action colossal_vars matches 170 run function snc:shifters/mobs/colossal/action/steam/energy
execute if score action colossal_vars matches 160 as @e[type=!item,distance=.5..80] unless score @s colossal_vars matches 1 run function snc:shifters/mobs/colossal/action/steam/damage
# execute if score action colossal_vars matches 170 run damage @p[scores={colossal_vars=1}] 6 in_fire

execute if score action colossal_vars matches 120 run function snc:shifters/mobs/colossal/action/steam/energy
execute if score action colossal_vars matches 110 as @e[type=!item,distance=.5..80] unless score @s colossal_vars matches 1 run function snc:shifters/mobs/colossal/action/steam/damage
# execute if score action colossal_vars matches 120 run damage @p[scores={colossal_vars=1}] 6 in_fire

execute if score action colossal_vars matches 70 run function snc:shifters/mobs/colossal/action/steam/energy
execute if score action colossal_vars matches 60 as @e[type=!item,distance=.5..80] unless score @s colossal_vars matches 1 run function snc:shifters/mobs/colossal/action/steam/damage
# execute if score action colossal_vars matches 70 run damage @p[scores={colossal_vars=1}] 6 in_fire

execute if score action colossal_vars matches 20 run function snc:shifters/mobs/colossal/action/steam/energy
execute if score action colossal_vars matches 10 as @e[type=!item,distance=.5..80] unless score @s colossal_vars matches 1 run function snc:shifters/mobs/colossal/action/steam/damage
# execute if score action colossal_vars matches 20 run damage @p[scores={colossal_vars=1}] 6 in_fire
execute if score action colossal_vars matches -1..1 run scoreboard players set state colossal_vars 3
execute if score action colossal_vars matches -1..1 run scoreboard players set $roar colossal_vars 5

return 1