## Summon projectile
execute unless data entity @s Passengers run summon snowball ~ ~ ~ {Tags:["beast_proj"],Passengers:[{id:"minecraft:item_display",Tags:["snc.projectile","snc.sticky","snc.boulder"],CustomName:'{"text":"Pivot","color":"green"}'}],Item:{id:"minecraft:arrow",count:1b,components:{"item_model":"item/blank"}}}
execute unless data entity @s Passengers run ride @n[tag=beast_proj] mount @s
# Has a rock or a player?
scoreboard players set $rock beast_vars 1
execute if entity @n[tag=beast_wrap,type=!item_display] run scoreboard players set $rock beast_vars 0

# If not found then find
# armor_stand > snowball > item_display
execute on passengers on passengers if score $rock beast_vars matches 1 run data merge entity @s {Tags:["snc.projectile","snc.sticky","snc.boulder","snc.boulder.rock"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[2f,2f,2f]},item:{id:"minecraft:carved_pumpkin",count:1b,components:{"item_model":"shifters/beast_misc/rock"}}}

scoreboard players set #grab beast_vars 0