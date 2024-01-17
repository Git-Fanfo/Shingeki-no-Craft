## Dies from old
execute if score @s life matches 0 run function snc:logic/kill_mob
## Set model
execute if predicate snc:villager/is_adult run function snc:eldia/villager/model/adult
execute unless predicate snc:villager/is_adult run function snc:eldia/villager/model/baby