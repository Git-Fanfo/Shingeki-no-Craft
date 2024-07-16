data merge entity @s {Items:[{Slot:0b,id:"minecraft:quartz",count:1,components:{"minecraft:item_name":'{"text":"blank"}',"minecraft:rarity":"uncommon","minecraft:custom_model_data":10,"minecraft:custom_data":{Owner:1b,snc_key_id:0},food:{nutrition:0,saturation:0,can_always_eat:true,eat_seconds:1}}}]}

setblock ~ ~1 ~ oak_sign
data modify block ~ ~1 ~ front_text.messages[0] set value '{"selector":"@p"}'
data modify entity @s Items[0].components."minecraft:custom_data".Owner set from block ~ ~1 ~ front_text.messages[0]
setblock ~ ~1 ~ air replace

kill