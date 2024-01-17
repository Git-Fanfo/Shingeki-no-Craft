execute unless score @s life matches 0.. run scoreboard players set @s life 8
scoreboard players remove @s life 1
## Baby!
execute unless score @s[tag=woman] children matches 0.. run scoreboard players set @s children 0
execute if predicate snc:villager/is_adult run function snc:eldia/gene/bee

execute unless biome ~ ~ ~ #minecraft:is_nether unless biome ~ ~ ~ #minecraft:is_end if entity @e[type=villager,distance=.1..5] unless biome ~ ~ ~ snc:village unless entity @e[distance=..100, tag=village] align xyz positioned ~.5 ~ ~.5 run function snc:player/build/bell/found