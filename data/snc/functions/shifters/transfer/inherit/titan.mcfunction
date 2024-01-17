## It was a pure titan!
tag @s add inherit
# Is it a villager?
execute unless entity @p[distance=.1..20,tag=consume] run function snc:shifters/transfer/inherit/eldian
# Maybe a player
execute if entity @p[distance=.1..20,tag=consume] run function snc:shifters/transfer/inherit/main_shifter
# Kill the pure titan!
execute as @e[tag=ai,distance=.1..20,limit=1,sort=nearest] at @s run function snc:titans/kill