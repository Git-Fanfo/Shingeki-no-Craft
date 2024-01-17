## Must be far from a villager
execute if entity @e[distance=..8,type=villager] run tellraw @s ["",{"text":"You are too close to a "},{"text":"Villager.","bold":true,"color":"white"}]
execute unless entity @e[distance=..8,type=villager] run function snc:player/titan/injection/itself