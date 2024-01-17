effect give @s speed infinite 0 true
execute unless block ~ ~-2 ~ air run effect give @s slow_falling 1 0 true
effect give @s resistance infinite 1 true
effect give @s regeneration infinite 0 true
data merge entity @s {VillagerData:{profession:"minecraft:nitwit"}}

execute if score @s projectile matches 70 run scoreboard players set @s projectile 0
scoreboard players add @s projectile 1

execute on passengers run data merge entity @s[type=armor_stand] {ArmorItems:[{},{},{},{id:'minecraft:arrow',Count:1b,tag:{CustomModelData:3}}]}

execute if entity @s[tag=near] run function snc:eldia/villager/soldier/odm