## Rotate model
execute on passengers run rotate @s ~ 0
# Is moving?
execute if predicate snc:general/moving_no_slow_falling on passengers run tag @s add walk
## Despawn
function snc:titans/ai/despawn

# Running in water (This is concerning)
execute if block ^ ^1 ^.5 water run function snc:titans/water

## Koniglich
execute if entity @s[tag=koniglich] run function snc:titans/ai/koniglich

# Kill if has no passengers
execute unless data entity @s Passengers run function snc:logic/kill_mob

scoreboard players add titan_count spawn 1

## Second functions
execute if score ticks clock matches 19 run function snc:titans/ai/seconds