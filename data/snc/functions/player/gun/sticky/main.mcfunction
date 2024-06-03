execute unless data entity @s Passengers run ride @e[tag=!snc.sticky,tag=!transform,distance=..1,type=!#snc:pivot,sort=nearest,limit=1] mount @s
execute if entity @s[tag=snc.vomit] run function snc:titans/tangible/vomit/air
execute if entity @s[tag=snc.boulder] run function snc:shifters/mobs/beast/action/throw_big/rock
execute if entity @s[tag=snc.pebbles] run function snc:shifters/mobs/beast/action/throw_area/rock
execute if entity @s[tag=snc.knockback] unless predicate snc:is_riding run kill