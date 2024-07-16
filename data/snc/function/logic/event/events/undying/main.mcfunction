tag @s add event
tellraw @s [{"text":"A mystery item has appeared in your inventory...","color":"green"}]
particle totem_of_undying ~ ~5 ~ 0 0 0 1 500 force

execute if predicate snc:chance/50 as @s[tag=!totem] run function snc:logic/event/events/undying/1
execute if predicate snc:chance/60 as @s[tag=!totem] run function snc:logic/event/events/undying/2
execute if entity @s[tag=!totem] run function snc:api/give/villagers/totem/2
tag @s remove totem