execute if score @s earthquake matches 0 run scoreboard players reset @s earthquake
execute if entity @s unless predicate snc:is_riding run function snc:logic/earthquake/move

scoreboard players remove @s earthquake 1 