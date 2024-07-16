
tag @s add snc.handcuffs


execute rotated ~ 0 positioned ^ ^-.1 ^1 run summon interaction ~ ~ ~ {width:.8f,height:1.1f,Tags:["snc.handcuffs","snc.hand.vill"]}
ride @s mount @e[tag=snc.hand.vill,sort=nearest,limit=1]