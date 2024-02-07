execute on passengers if entity @s[type=item_display,tag=!beast_wrap] on passengers if entity @s[type=player] on vehicle run tag @s add sticky
execute on passengers if entity @s[type=item_display,tag=!beast_wrap] run ride @e[type=#snc:baseball,tag=beast_wrap,sort=nearest,limit=1] mount @s

execute if score destroy config matches 1 on vehicle \
    if score $rock beast_vars matches 1 \
    unless predicate snc:is_riding on passengers run \
        function snc:shifters/mobs/beast/action/throw_big/crash

## Crater
execute if score destroy config matches 1 on passengers if entity @s[type=item_display,tag=beast_wrap] on vehicle unless predicate snc:is_riding align xyz positioned ~.5 ~1 ~.5 run function snc:shifters/mobs/beast/action/throw_big/summon

execute unless predicate snc:is_riding as @e[distance=..8,tag=!beast] run function snc:shifters/mobs/beast/action/throw_big/damage with storage minecraft:beast
execute unless predicate snc:is_riding run particle large_smoke ~ ~ ~ 0 0 0 1 100 force
execute unless predicate snc:is_riding run playsound minecraft:entity.wither.break_block player @a ~ ~ ~ 6 .5
execute unless predicate snc:is_riding run playsound aot.rock_smash player @a ~ ~ ~ 6

# Kill if is not riding
execute unless predicate snc:is_riding on passengers if entity @s[type=item_display] run kill
execute unless predicate snc:is_riding run kill

# If the player used the odm then release
execute on passengers on passengers if entity @s[type=player] if score @s odm_state matches 1.. on vehicle run function snc:shifters/mobs/beast/action/throw_big/kill