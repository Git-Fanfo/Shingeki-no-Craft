scoreboard players set @s projectile 120
scoreboard players set @a[distance=..5] earthquake 6
effect give @a[distance=..5] speed 1 3 true


playsound minecraft:item.totem.use player @a ~ ~ ~ 2 0

summon snowball ^ ^.7 ^2.7 {Tags:["not_mov","motion_can","snc.projectile"],Passengers:[{id:"minecraft:item_display",Tags:["snc.projectile","canon"],item_display:"thirdperson_righthand",item:{id:"minecraft:player_head", Count:1b, components:{"custom_model_data":2, SkullOwner:{Id: [I;1,1,1,1]}}}}],Item:{id:"minecraft:arrow", Count:1b, components:{"custom_model_data":1}}}

## Spawn armor stand with a player's head initialized with id and custom_model_data=1
## Copy ID from @s
## Transfer the ID from @s

# Saving UUID from the player into a minecraft player's head that is being holding by the snowball
execute on vehicle on target run data modify entity @e[tag=snc.projectile,tag=canon,sort=nearest,limit=1] item.tag.SkullOwner.Id set from entity @s UUID