scoreboard players reset @s atk

execute unless data entity @s {Item:{components:{"minecraft:custom_data":{infected:0}}}} if items entity @s container.* #snc:food if predicate snc:chance/50 run data merge entity @s {Item:{components:{"minecraft:custom_data":{infected:1}}}}

execute unless data entity @s {Item:{components:{"minecraft:custom_data":{infected:0}}}} if items entity @s container.* potion[minecraft:custom_data~{liquid:1}] run data merge entity @s {Item:{components:{"minecraft:custom_data":{infected:1}}}}

execute unless data entity @s {Item:{components:{"minecraft:custom_data":{infected:1}}}} run data merge entity @s {Item:{components:{"minecraft:custom_data":{infected:0}}}}