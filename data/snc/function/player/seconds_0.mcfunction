# Villagers
execute unless score @s snc.bee matches 0.. run scoreboard players set @s snc.bee 0
execute if score @s snc.bee matches 1.. run scoreboard players remove @s snc.bee 1

# Entered a village
execute if biome ~ ~ ~ snc:village as @s[tag=!in_village] run function snc:player/build/bell/enter
execute as @s[tag=in_village] run function snc:player/build/bell/in

# Detect villager
execute if score $talk_vill config matches 1 run tag @e[type=villager,distance=..5] add snc.dialogue

execute unless score time clock matches 12900..23500 if predicate snc:player/can_see_sky if items entity @s container.* minecraft:quartz[custom_data~{snc.iceburst:1b}] run function snc:player/odm/throw/remove