execute if entity @s[tag=snc.hook.buried] if block ^ ^ ^-.5 air run tp ^ ^ ^.7

# Detect ODM landed
execute if entity @s[tag=hook] run data merge entity @n[type=minecraft:block_display] {transformation:{scale:[0.05f,0.05f,50f]}}
execute if entity @s[tag=hook] facing entity FanfoYT feet run tp @s ~ ~ ~ facing entity FanfoYT

execute if entity @s[tag=hook] unless predicate snc:is_riding run function snc:player/odm/ground/main

return 0