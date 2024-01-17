# IDLE
#say idle
execute if entity @s[scores={idle=40}] run data merge entity @s {item:{id:'minecraft:flint',Count:1b,tag:{CustomModelData:198}}}
execute if entity @s[scores={idle=30}] run data merge entity @s {item:{id:'minecraft:flint',Count:1b,tag:{CustomModelData:199}}}
execute if entity @s[scores={idle=20}] run data merge entity @s {item:{id:'minecraft:flint',Count:1b,tag:{CustomModelData:200}}}
execute if entity @s[scores={idle=10}] run data merge entity @s {item:{id:'minecraft:flint',Count:1b,tag:{CustomModelData:201}}}