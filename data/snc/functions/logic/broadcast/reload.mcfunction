execute as @a at @s run playsound minecraft:block.iron_door.close player @s ~ ~ ~ 1 1.3
tellraw @a ["",{"text":"\n---------------------------------\nYou can close the chat by now.\n---------------------------------","color":"yellow"}]

tellraw @a ["",{"text":"\nPlease ","color":"white"},{"text":"wait","color":"yellow"},{"text":" a few seconds while we set everything ready for you. ","color":"white"},{"text":"Don't leave the world","color":"yellow"},{"text":".\n","color":"white"}]
reload