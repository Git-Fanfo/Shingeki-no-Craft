## Init villager
execute if entity @s[tag=!snc.init,tag=!snc.npc] run function snc:eldia/villager/init

execute if entity @s[tag=snc.vill.hannah] on passengers run data merge entity @s {HandItems:[{id:'minecraft:feather',Count:1b,components:{"item_model":"people/eldia/hannah/body"}},{}]}
execute if entity @s[tag=snc.vill.marie] on passengers run data merge entity @s {HandItems:[{id:'minecraft:feather',Count:1b,components:{"item_model":"people/eldia/marie/body"}},{}]}
execute if entity @s[tag=snc.vill.dave] on passengers run data merge entity @s {HandItems:[{id:'minecraft:feather',Count:1b,components:{"item_model":"people/eldia/dave/body"}},{}]}
execute if entity @s[tag=snc.vill.emma] on passengers run data merge entity @s {HandItems:[{id:'minecraft:feather',Count:1b,components:{"item_model":"people/eldia/emma/body"}},{}]}
execute if entity @s[tag=snc.vill.alma] on passengers run data merge entity @s {HandItems:[{id:'minecraft:feather',Count:1b,components:{"item_model":"people/eldia/alma/body"}},{}]}
execute if entity @s[tag=snc.vill.julian] on passengers run data merge entity @s {HandItems:[{id:'minecraft:feather',Count:1b,components:{"item_model":"people/eldia/julian/body"}},{}]}
execute if entity @s[tag=snc.vill.ann] on passengers run data merge entity @s {HandItems:[{id:'minecraft:feather',Count:1b,components:{"item_model":"people/eldia/ann/body"}},{}]}
execute if entity @s[tag=snc.vill.bob] on passengers run data merge entity @s {HandItems:[{id:'minecraft:feather',Count:1b,components:{"item_model":"people/eldia/bob/body"}},{}]}
execute if entity @s[tag=snc.vill.levin] on passengers run data merge entity @s {HandItems:[{id:'minecraft:feather',Count:1b,components:{"item_model":"people/eldia/levin/body"}},{}]}