tag @s add snc.handcuffs

execute rotated ~ 0 positioned ^ ^-.1 ^1 run summon item_display ~ ~ ~ {Tags:["snc.handcuffs.vehicle"],Passengers:[{id:"minecraft:interaction",width:1f,height:1.1f,Tags:["snc.handcuffs","snc.hand.vill"]}]}
ride @s mount @n[tag=snc.handcuffs.vehicle]