scoreboard players reset @s atk
execute unless data entity @s {Item:{tag:{infected:0b}}} if predicate snc:titan/infect_food if predicate snc:chance/50 run data merge entity @s {Item:{tag:{infected:1b}}}
execute unless data entity @s {Item:{tag:{infected:0b}}} if predicate snc:titan/infect_liquid run data merge entity @s {Item:{tag:{infected:1b}}}
execute unless data entity @s {Item:{tag:{infected:1b}}} run data merge entity @s {Item:{tag:{infected:0b}}}