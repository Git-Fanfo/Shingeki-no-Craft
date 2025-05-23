## Summon projectile
execute unless data entity @s Passengers run summon snowball ~ ~ ~ {Tags:["beast_proj"],Passengers:[{id:"minecraft:item_display",Tags:["snc.projectile","snc.sticky","snc.boulder"],CustomName:'{"text":"Pivot","color":"green"}',item:{id:"minecraft:air",Count:1b}}],Item:{id:"minecraft:arrow",Count:1b,components:{"custom_model_data":1}}}
execute unless data entity @s Passengers run ride @n[tag=beast_proj] mount @s
# Has a rock or a player?
scoreboard players set $rock beast_vars 1
execute if entity @n[tag=beast_wrap,type=!item_display] run scoreboard players set $rock beast_vars 0

# If not found then find
# armor_stand > snowball > item_display
execute on passengers on passengers if score $rock beast_vars matches 1 run data merge entity @s {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[2f,2f,2f]},item:{id:"minecraft:carved_pumpkin",Count:1b,components:{"custom_model_data":61}}}

scoreboard players set #grab beast_vars 0