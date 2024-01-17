tag @s add handcuffs

execute rotated ~ 0 positioned ^ ^-.1 ^1 run summon interaction ~ ~ ~ {width:1f,height:2.2f,Tags:["handcuffs","snc.hand.vill"]}
ride @s mount @e[tag=snc.hand.vill,sort=nearest,limit=1]