execute unless score @s idle matches 0.. run function snc:titans/model/add_scores

## Glowing
execute on vehicle if predicate snc:titan/has_glowing on passengers run data merge entity @s {Glowing:1b}
execute on vehicle unless predicate snc:titan/has_glowing on passengers run data merge entity @s {Glowing:0b}

execute unless predicate snc:is_riding run function snc:logic/kill_mob

execute unless data entity @s Passengers run function snc:logic/kill_mob

execute unless entity @s[tag=killed] run function snc:titans/model/animate