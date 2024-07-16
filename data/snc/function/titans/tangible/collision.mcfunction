##effect give @s invisibility infinite 0 true
effect give @s resistance infinite 5 true
execute unless entity @s[team=titan] run team join titan

execute unless predicate snc:is_riding run function snc:logic/kill_mob

execute unless data entity @s Passengers run function snc:logic/kill_mob