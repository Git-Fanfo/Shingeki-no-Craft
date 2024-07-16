scoreboard players add #id snc.key 1

execute store result score @s random run random value 1..4
execute if score @s random matches 1 run data merge entity @s {Items:[{Slot:0b,id:"minecraft:quartz",count:1,components:{"minecraft:item_name":'{"text":"blank"}',"minecraft:rarity":"uncommon","minecraft:custom_model_data":10,"minecraft:custom_data":{snc_key:1b,snc_key_id:0},food:{nutrition:0,saturation:0,can_always_eat:true,eat_seconds:1}}}]}
execute if score @s random matches 2 run data merge entity @s {Items:[{Slot:0b,id:"minecraft:quartz",count:1,components:{"minecraft:item_name":'{"text":"blank"}',"minecraft:rarity":"uncommon","minecraft:custom_model_data":11,"minecraft:custom_data":{snc_key:1b,snc_key_id:0},food:{nutrition:0,saturation:0,can_always_eat:true,eat_seconds:1}}}]}
execute if score @s random matches 3 run data merge entity @s {Items:[{Slot:0b,id:"minecraft:quartz",count:1,components:{"minecraft:item_name":'{"text":"blank"}',"minecraft:rarity":"uncommon","minecraft:custom_model_data":12,"minecraft:custom_data":{snc_key:1b,snc_key_id:0},food:{nutrition:0,saturation:0,can_always_eat:true,eat_seconds:1}}}]}
execute if score @s random matches 4 run data merge entity @s {Items:[{Slot:0b,id:"minecraft:quartz",count:1,components:{"minecraft:item_name":'{"text":"blank"}',"minecraft:rarity":"uncommon","minecraft:custom_model_data":13,"minecraft:custom_data":{snc_key:1b,snc_key_id:0},food:{nutrition:0,saturation:0,can_always_eat:true,eat_seconds:1}}}]}
execute if score @s random matches 5 run data merge entity @s {Items:[{Slot:0b,id:"minecraft:quartz",count:1,components:{"minecraft:item_name":'{"text":"blank"}',"minecraft:rarity":"uncommon","minecraft:custom_model_data":14,"minecraft:custom_data":{snc_key:1b,snc_key_id:0},food:{nutrition:0,saturation:0,can_always_eat:true,eat_seconds:1}}}]}

execute store result entity @s Items[0].components."minecraft:custom_data".snc_key_id int 1 run scoreboard players get #id snc.key

setblock ~ ~1 ~ oak_sign
data modify block ~ ~1 ~ front_text.messages[0] set value '[{"translate":"aot.key"}," #",{"score":{"name":"#id","objective":"snc.key"}}]'
data modify entity @s Items[0].components."minecraft:item_name" set from block ~ ~1 ~ front_text.messages[0]
setblock ~ ~1 ~ air replace

kill