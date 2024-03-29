execute if score init config matches 4 run execute as @a at @s run playsound minecraft:block.iron_door.close player @s ~ ~ ~ 1 1.3
execute if score init config matches 4 run tellraw @a ["\n\n\n\n\n\n\n\n\n\n",{"translate":"aot.init.1","color":"white"},{"translate":"aot","color":"dark_red","bold": true},"! ",{"translate":"aot.init.2","color":"white"},"\n"]

execute if score init config matches 4 run scoreboard players enable @a manual

execute if score init config matches 7 run execute as @a at @s run playsound minecraft:block.iron_door.close player @s ~ ~ ~ 1 1.3
execute if score init config matches 7 run tellraw @a ["\n\n",{"translate":"aot.init.3","color":"white"}," ",{"text":"/function snc:api/config","color":"yellow"},{"text":")\n","color":"white"}]

execute if score init config matches 7 run tellraw @a [" * ",{"translate":"aot.init.4","color":"light_purple","clickEvent":{"action":"run_command","value":"/trigger manual set 8"},"hoverEvent":{"action":"show_text","contents":[{"translate":"aot.config.select","color":"yellow"}]}}]

execute if score init config matches 7 run tellraw @a ["\n * ",{"translate":"aot.init.5","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger manual set 9"},"hoverEvent":{"action":"show_text","contents":[{"translate":"aot.config.select","color":"yellow"}]}},"\n"]

execute if score init config matches 10 run kill @e[type=item]