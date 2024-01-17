execute if score @s clock = snc.curr.day clock run tag @s add gift
execute if entity @s[tag=gift] run tellraw @s [{"translate":"aot.inv.desc7","color":"red"}]
execute if entity @s[tag=!gift] if predicate snc:villager/alma/likes run tellraw @s ["<Alma> ","Oh wow, is it...? Where did you find this!? It's exactly what I wanted!"]
execute if entity @s[tag=!gift] if predicate snc:villager/alma/likes if score @s alma matches ..36 run scoreboard players add @s alma 7
execute if entity @s[tag=!gift] if predicate snc:villager/alma/dislikes run tellraw @s ["<Alma> ","Hmmm... Ok lets see what I can do with this..."]
execute if entity @s[tag=!gift] if predicate snc:villager/alma/dislikes run scoreboard players remove @s alma 5
execute if entity @s[tag=!gift] unless predicate snc:villager/alma/likes unless predicate snc:villager/alma/dislikes unless predicate snc:villager/alma/air run tellraw @s ["<Alma> ","A gift!? For me? Thanks!"]
execute if entity @s[tag=!gift] unless predicate snc:villager/alma/likes unless predicate snc:villager/alma/dislikes unless predicate snc:villager/alma/air if score @s alma matches ..36 run scoreboard players add @s alma 5

item replace entity @s[tag=!gift] weapon.mainhand with air
scoreboard players operation @s clock = snc.curr.day clock
tag @s remove gift

scoreboard players reset @s messages