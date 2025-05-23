## Shifters
execute if score @s shifter_vars matches 1.. run function snc:eldia/villager/shifter/main

# Scan when a mob spawns
execute unless entity @s[tag=eldian] if function snc:eldia/villager/spawn run return -1

execute unless entity @s[tag=snc.sleep] if score time clock matches 12000..23999 anchored eyes if block ^ ^-.07 ^ #minecraft:beds run function snc:eldia/villager/sleep
execute if entity @s[tag=snc.sleep] anchored eyes if block ^ ^-.07 ^ air run function snc:eldia/villager/awake

## Survey
execute as @s[tag=soldier] run function snc:eldia/villager/soldier/main
## Dialogue
execute as @s[tag=snc.dialogue] unless entity @s[tag=snc.sleep] run function snc:eldia/dialogue/main

## Second functions
## Distribute this functions among a second in different times for better performance
# Reputation
execute if score ticks clock matches 19 run function snc:eldia/villager/reputation/main
# Set body
execute if score ticks clock matches 9 unless entity @s[tag=snc.sleep] run function snc:eldia/villager/model/select