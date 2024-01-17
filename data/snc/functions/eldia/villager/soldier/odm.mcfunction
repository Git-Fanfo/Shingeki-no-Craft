execute if score @s projectile matches 20 unless block ~ ~-1 ~ air run data modify entity @s Motion[1] set value .8d

# execute if entity @s[tag=spin] if score @s projectile matches 30 rotated ~90 ~0 run tp ~ ~ ~
execute if score @s projectile matches 30 if biome ~ ~ ~ snc:village run tp @s ~ ~.05 ~ facing entity @e[tag=soldier_dmg,sort=nearest,limit=1]
execute if score @s projectile matches 30 unless biome ~ ~ ~ snc:village run tp @s ~ ~.05 ~ facing entity @e[tag=village,sort=nearest,limit=1]
execute if score @s projectile matches 30 run tag @s add not_mov
execute if score @s projectile matches 30 run tag @s add motion_sol

execute if score @s projectile matches 30 run tag @s remove near

execute if score @s projectile matches 30 if predicate snc:chance/60 summon area_effect_cloud run function snc:eldia/villager/soldier/attack