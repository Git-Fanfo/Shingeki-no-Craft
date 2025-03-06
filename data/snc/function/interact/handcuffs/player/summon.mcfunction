execute as @n[tag=snc.handcuffs.vehicle,distance=..1] run function snc:logic/kill_mob
summon item_display ~ ~ ~ {Tags:["snc.handcuffs.vehicle"],Passengers:[{id:"minecraft:interaction",width:1f,height:1.1f,Tags:["snc.handcuffs","snc.hand.pla"]}]}
ride @s mount @n[tag=snc.handcuffs.vehicle]