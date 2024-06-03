execute if score $shifter_destroy config matches 1 if score $rock beast_vars matches 1 if score $hold beast_vars matches 0 run function snc:shifters/mobs/beast/action/throw_big/crash

execute unless predicate snc:is_riding run function snc:shifters/mobs/beast/action/throw_big/land

# If the player used the odm then release
execute on passengers if score @s odm_state matches 1.. on vehicle run function snc:shifters/mobs/beast/action/throw_big/kill