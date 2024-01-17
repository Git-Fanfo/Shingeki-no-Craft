# Count entities
execute if score $villager config matches 1 as @e[type=#snc:snc] run scoreboard players add entities config 1
execute if score $villager config matches 0 as @e[type=#snc:snc_no_vill] run scoreboard players add entities config 1

tellraw @s ["",{"text":"\n\n\n\n\n\n\n\n\n\n---------------------------------\n","color":"green"},{"translate":"aot.status.datapack","color":"gold"},{"text":" V.2.0.4","color":"aqua"},{"text":"\n---------------------------------","color":"green"}]
tellraw @s ["",{"translate":"aot.status.performance","underlined":true,"color":"yellow"},{"translate":"aot.status.performance.desc","color":"white"}]

execute if score entities config matches ..399 run tellraw @s ["",{"translate":"aot.status.entity","color":"white"},{"score":{"name":"entities","objective":"config"}},{"translate":"aot.status.entity.desc","color":"green"}]

execute if score entities config matches 400..549 run tellraw @s ["",{"translate":"aot.status.entity","color":"white"},{"score":{"name":"entities","objective":"config"}},{"translate":"aot.status.entity.desc2","color":"yellow"}]

execute if score entities config matches 550.. run tellraw @s ["",{"translate":"aot.status.entity","color":"white"},{"score":{"name":"entities","objective":"config"}},{"translate":"aot.status.entity.desc3","color":"dark_red"}]

tellraw @s [""]
# Count entities
scoreboard players set entities config 0
