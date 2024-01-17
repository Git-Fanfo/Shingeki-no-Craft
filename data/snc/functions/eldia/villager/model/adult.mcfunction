## Init villager
execute if entity @s[tag=!snc.init,tag=!snc.npc] run function snc:eldia/villager/init

execute if entity @s[tag=snc.vill.9] on passengers run data merge entity @s {HandItems:[{id:'minecraft:feather',Count:1b,tag:{CustomModelData:10}},{}]}
execute if entity @s[tag=snc.vill.11] on passengers run data merge entity @s {HandItems:[{id:'minecraft:feather',Count:1b,tag:{CustomModelData:12}},{}]}
execute if entity @s[tag=snc.vill.13] on passengers run data merge entity @s {HandItems:[{id:'minecraft:feather',Count:1b,tag:{CustomModelData:14}},{}]}
execute if entity @s[tag=snc.vill.7] on passengers run data merge entity @s {HandItems:[{id:'minecraft:feather',Count:1b,tag:{CustomModelData:8}},{}]}
execute if entity @s[tag=alma] on passengers run data merge entity @s {HandItems:[{id:'minecraft:feather',Count:1b,tag:{CustomModelData:24}},{}]}
execute if entity @s[tag=julian] on passengers run data merge entity @s {HandItems:[{id:'minecraft:feather',Count:1b,tag:{CustomModelData:30}},{}]}
execute if entity @s[tag=snc.vill.15] on passengers run data merge entity @s {HandItems:[{id:'minecraft:feather',Count:1b,tag:{CustomModelData:16}},{}]}
execute as @s[tag=bob] on passengers run data merge entity @s {HandItems:[{id:'minecraft:feather',Count:1b,tag:{CustomModelData:18}},{}]}
execute if entity @s[tag=snc.vill.19] on passengers run data merge entity @s {HandItems:[{id:'minecraft:feather',Count:1b,tag:{CustomModelData:20}},{}]}