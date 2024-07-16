## It was a pure titan!
# Is it a villager?
execute unless entity @p[distance=.1..20,tag=consume] run function snc:shifters/transfer/inherit/villager
# Maybe a player
execute if entity @p[distance=.1..20,tag=consume] run function snc:shifters/transfer/inherit/player
# Kill the pure titan!
execute as @e[tag=ai,distance=.1..20,limit=1,sort=nearest] at @s run function snc:titans/kill