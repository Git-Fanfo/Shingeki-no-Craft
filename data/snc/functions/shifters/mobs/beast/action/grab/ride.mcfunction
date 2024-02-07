## Summon projectile
execute unless data entity @s Passengers run summon snowball ~ ~ ~ {Tags:["beast_proj"],Passengers:[{id:"minecraft:item_display",Tags:["bullet","big_rock"],Passengers:[{id:"minecraft:item_display",item:{id:"minecraft:air",Count:1b}}],CustomName:'{"text":"Pivot","color":"green"}',item:{id:"minecraft:air",Count:1b}}],Item:{id:"minecraft:arrow",Count:1b,tag:{CustomModelData:1}}}
execute unless data entity @s Passengers run ride @e[tag=beast_proj,sort=nearest,limit=1] mount @s
# Has a rock or a player?
scoreboard players set $rock beast_vars 1
execute if entity @e[tag=beast_wrap,type=!item_display,sort=nearest,limit=1] run scoreboard players set $rock beast_vars 0

# If not found then find
# armor_stand > snowball > item_display > item_display
execute on passengers on passengers on passengers if score $rock beast_vars matches 1 run data merge entity @s {Tags:["beast_wrap"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[2f,2f,2f]},item:{id:"minecraft:carved_pumpkin",Count:1b,tag:{CustomModelData:61}}}