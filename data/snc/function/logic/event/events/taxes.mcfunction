tag @s add event
tellraw @s [{"text":"The villagers have decided to give you a gift!","color":"green"}]
particle totem_of_undying ~ ~5 ~ 0 0 0 1 500 force
function snc:api/give/villagers/golden_mark
execute if predicate snc:chance/40 run function snc:api/give/villagers/golden_mark
execute if predicate snc:chance/40 run function snc:api/give/villagers/golden_mark