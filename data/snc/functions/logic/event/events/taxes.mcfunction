tag @s add event
tellraw @s [{"text":"The villagers have decided to give you a gift!","color":"green"}]
particle totem_of_undying ~ ~5 ~ 0 0 0 1 500 force
give @s flint{display:{Name:'{"translate":"aot.villager.currency","color":"gold","italic":false}'},CustomModelData:216,coin:1b,Enchantments:[{}]} 
execute if predicate snc:chance/50 run function snc:api/give/villagers/golden_mark
execute if predicate snc:chance/50 run function snc:api/give/villagers/golden_mark