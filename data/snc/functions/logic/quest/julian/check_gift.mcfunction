execute if score @s clock = snc.curr.day clock run tag @s add gift
execute if entity @s[tag=gift] run tellraw @s [{"translate":"aot.inv.desc7","color":"red"}]
execute if entity @s[tag=!gift] if predicate snc:villager/julian/likes run tellraw @s ["<Julian> ","Oh wow, is it...? Where did you find this!? It's exactly what I wanted!"]
execute if entity @s[tag=!gift] if predicate snc:villager/julian/likes if score @s julian matches ..36 run scoreboard players add @s julian 7
execute if entity @s[tag=!gift] if predicate snc:villager/julian/dislikes run tellraw @s ["<Julian> ","Hmmm... Ok lets see what I can do with this..."]
execute if entity @s[tag=!gift] if predicate snc:villager/julian/dislikes run scoreboard players remove @s julian 5
execute if entity @s[tag=!gift] unless predicate snc:villager/julian/likes unless predicate snc:villager/julian/dislikes unless predicate snc:villager/julian/air run tellraw @s ["<Julian> ","A gift!? For me? Thanks!"]
execute if entity @s[tag=!gift] unless predicate snc:villager/julian/likes unless predicate snc:villager/julian/dislikes unless predicate snc:villager/julian/air if score @s julian matches ..36 run scoreboard players add @s julian 5

item replace entity @s[tag=!gift] weapon.mainhand with air
scoreboard players operation @s clock = snc.curr.day clock
tag @s remove gift

scoreboard players reset @s messages