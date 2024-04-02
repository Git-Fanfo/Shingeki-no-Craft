#setblock ~ ~2 ~ chest
#item replace block ~ ~2 ~ container.0 from entity @p weapon.mainhand
#setblock ~ ~2 ~ air destroy
#kill @e[type=item,limit=1,sort=nearest,nbt={Item:{id:"minecraft:chest"}}]


## /execute summon minecraft:chest_minecart run function snc:test

item replace entity @s container.0 from entity @p weapon.mainhand
clear @p diamond
kill