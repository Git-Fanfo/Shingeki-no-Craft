function snc:player/drop_inv

tag @s add handcuffs
execute store result score @s gamemode run data get entity @s playerGameType
gamemode adventure
function snc:give/item/shifters/handcuffs_inv

execute rotated ~ 0 positioned ^ ^-.1 ^1 run summon interaction ~ ~ ~ {width:1f,height:2.2f,Tags:["handcuffs","snc.hand.pla"]}
ride @s mount @e[tag=snc.hand.pla,sort=nearest,limit=1]