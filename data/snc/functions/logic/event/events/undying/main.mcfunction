tag @s add event
tellraw @s [{"text":"A mystery item has appeared in your inventory...","color":"green"}]
particle totem_of_undying ~ ~5 ~ 0 0 0 1 500 force

execute if predicate snc:chance/50 as @s[tag=!totem] run function snc:logic/event/events/undying/1
execute if predicate snc:chance/60 as @s[tag=!totem] run function snc:logic/event/events/undying/2
give @s[tag=!totem] totem_of_undying{display:{Name:'{"translate":"aot.undying","italic":false}',Lore:['{"translate":"aot.undying.desc1","color":"gray","italic":false}','{"translate":"aot.undying.desc2","color":"gray","italic":false}','{"text":" ","color":"gray","italic":false}','{"translate":"aot.undying.desc3","italic":false}','{"translate":"aot.undying.desc4","italic":false}']},CustomModelData:2,Enchantments:[{}]} 1

tag @s remove totem