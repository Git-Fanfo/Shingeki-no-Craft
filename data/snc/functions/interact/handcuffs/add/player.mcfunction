function snc:player/drop_inv

tag @s add handcuffs

attribute @s minecraft:player.entity_interaction_range base set -10

function snc:interact/handcuffs/add/inv

execute rotated ~ 0 positioned ^ ^-.1 ^1 run summon interaction ~ ~ ~ {width:1f,height:2.2f,Tags:["handcuffs","snc.hand.pla"]}
ride @s mount @e[tag=snc.hand.pla,sort=nearest,limit=1]