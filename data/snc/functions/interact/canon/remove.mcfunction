summon item ~ ~1 ~.1 {Motion:[0.0,.2,0.0],Item:{id:"minecraft:spruce_planks",Count:9b}}
summon item ~-.2 ~1 ~ {Motion:[0.0,.2,0.0],Item:{id:"minecraft:lever",Count:1b}}
summon item ~ ~1 ~ {Motion:[0.0,.2,0.0],Item:{id:"minecraft:iron_block",Count:4b}}
summon item ~.2 ~1 ~ {Motion:[0.0,.2,0.0],Item:{id:"minecraft:andesite_wall",Count:1b}}

execute on passengers run function snc:logic/kill_mob
execute on vehicle run function snc:logic/kill_mob
function snc:logic/kill_mob