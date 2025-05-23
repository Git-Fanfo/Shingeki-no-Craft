### WHEN A VILLAGER IS SPAWNED
# SPAWN ELDIAN
execute if score $wonder spawn matches 0 run function snc:eldia/wandering_trader/summon/alex
execute if score $wonder spawn matches 1 run function snc:eldia/wandering_trader/summon/bomb
execute if score $wonder spawn matches 2 run function snc:eldia/wandering_trader/summon/ellie
execute if score $wonder spawn matches 3 run function snc:eldia/wandering_trader/summon/ragnaar
execute if score $wonder spawn matches 4 run function snc:eldia/wandering_trader/summon/niflum

# Add tag
scoreboard players add $wonder spawn 1
# Reset
execute if score $wonder spawn matches 4 run scoreboard players set $wonder spawn 0

# Kill villager
function snc:logic/kill_mob
return 0