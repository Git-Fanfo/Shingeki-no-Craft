# If is near 6 chunks keep alive
execute if score ticks clock matches 11 if entity @a[distance=..96] run scoreboard players set @s snc.despawn 20
execute if score ticks clock matches 11 run scoreboard players remove @s snc.despawn 1

# If exceded snc.despawn time
execute unless score @s snc.despawn matches 1.. if function snc:logic/kill_mob run return -1
# kill chest
execute unless data entity @s Passengers if function snc:logic/kill_mob run return -1

# Spread Titans
execute if score ticks clock matches 0 as @e[distance=..64,type=!item] run function snc:titans/ai/detect