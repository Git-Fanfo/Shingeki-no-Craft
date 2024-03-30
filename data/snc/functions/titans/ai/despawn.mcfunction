execute unless score @s snc.despawn matches 0.. run scoreboard players set @s snc.despawn 600

# If is near 6 chunks keep alive
execute if score @s snc.despawn matches 1.. if entity @a[distance=..96] run scoreboard players set @s snc.despawn 600
execute if score @s snc.despawn matches 1.. run scoreboard players remove @s snc.despawn 1

# If exceded snc.despawn time
execute unless score @s snc.despawn matches 1.. run function snc:logic/kill_mob

# kill chest
execute unless data entity @s Passengers run function snc:logic/kill_mob
#execute unless predicate snc:is_riding run say chest: body not found

# Spread Titans
execute if score ticks clock matches 0 as @e[distance=..64,type=!item] run function snc:titans/ai/detect