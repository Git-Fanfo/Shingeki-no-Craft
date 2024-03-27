execute if score ticks clock matches 4 unless entity @s[tag=eldian] run function snc:eldia/wandering_trader/spawn

execute unless block ~ ~-1 ~ smithing_table run data merge entity @s {Offers:{Recipes:[]}}

execute if score time clock matches 1000 if block ~ ~-1 ~ smithing_table run function snc:eldia/wandering_trader/trades
execute if score time clock matches 13000 if block ~ ~-1 ~ smithing_table run function snc:eldia/wandering_trader/trades