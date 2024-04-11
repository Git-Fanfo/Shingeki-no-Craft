# Scan when a mob spawns
execute unless entity @s[tag=eldian] run function snc:eldia/villager/spawn

execute unless entity @s[tag=sleep] if score time clock matches 12000..23999 if data entity @s Brain.memories."minecraft:last_slept".value run function snc:eldia/villager/sleep
execute if entity @s[tag=sleep] if score time clock matches 0..12000 if data entity @s Brain.memories."minecraft:last_woken".value run function snc:eldia/villager/awake

## Survey
execute as @s[tag=soldier] run function snc:eldia/villager/soldier/main

## Dialogue
execute as @s[tag=snc.dialogue] unless entity @s[tag=sleep] run function snc:eldia/dialogue/main

## Shifters
execute if score @s shifter_vars matches 1.. run function snc:eldia/villager/shifter/main

## Second functions
## Distribute this functions among a second in different times for better performance
# Reputation
execute if score ticks clock matches 19 run function snc:eldia/villager/reputation/main
# Set body
execute if score ticks clock matches 9 run function snc:eldia/villager/model/select