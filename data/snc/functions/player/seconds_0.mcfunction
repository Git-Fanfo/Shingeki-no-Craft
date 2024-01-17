# Villagers
execute unless score @s bee matches 0.. run scoreboard players set @s bee 0
execute if score @s bee matches 1.. run scoreboard players remove @s bee 1

# Entered a village
execute if biome ~ ~ ~ snc:village as @s[tag=!in_village] run function snc:player/build/bell/enter
execute as @s[tag=in_village] run function snc:player/build/bell/in

# Detect villager
execute if score $talk_vill config matches 1 run tag @e[type=villager,distance=..5] add snc.dialogue