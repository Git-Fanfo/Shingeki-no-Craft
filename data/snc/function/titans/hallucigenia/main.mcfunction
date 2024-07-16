## Dont uncomment this (joke)
#execute if entity @s[tag=snc.hall.p0] at @p rotated ~ 0 positioned over world_surface run tp @s ~ ~1 ~ ~ ~
## Dont uncomment this (joke)

#execute if score ticks clock matches 0..9 if entity @s[tag=snc.hall.p0] run tp @s ^ ^ ^.05 ~6 ~
#execute if score ticks clock matches 10.. if entity @s[tag=snc.hall.p0] run tp @s ^ ^ ^.05 ~-6 ~
execute if entity @s[tag=snc.hall.p0] run tp @s ^ ^-.1 ^.05 ~8 -70
# particle bubble ^-2.2 ^-1 ^-2 0 0 0 .1 1 force
particle bubble_pop ~ ~-.2 ~ .1 .1 .1 .1 1 force

function snc:titans/hallucigenia/rotate {"head":"p0", "tail": "p1"}
function snc:titans/hallucigenia/rotate {"head":"p1", "tail": "p2"}
function snc:titans/hallucigenia/rotate {"head":"p2", "tail": "p3"}
function snc:titans/hallucigenia/rotate {"head":"p3", "tail": "p4"}
function snc:titans/hallucigenia/rotate {"head":"p4", "tail": "p5"}
function snc:titans/hallucigenia/rotate {"head":"p5", "tail": "p6"}
function snc:titans/hallucigenia/rotate {"head":"p6", "tail": "p7"}
function snc:titans/hallucigenia/rotate {"head":"p7", "tail": "p8"}
function snc:titans/hallucigenia/rotate {"head":"p8", "tail": "p9"}
function snc:titans/hallucigenia/rotate {"head":"p9", "tail": "p10"}
function snc:titans/hallucigenia/rotate {"head":"p10", "tail": "p11"}
function snc:titans/hallucigenia/rotate {"head":"p11", "tail": "p12"}
function snc:titans/hallucigenia/rotate {"head":"p12", "tail": "p13"}
function snc:titans/hallucigenia/rotate {"head":"p13", "tail": "p14"}
function snc:titans/hallucigenia/rotate {"head":"p14", "tail": "p15"}
function snc:titans/hallucigenia/rotate {"head":"p15", "tail": "p16"}
function snc:titans/hallucigenia/rotate {"head":"p16", "tail": "p17"}
function snc:titans/hallucigenia/rotate {"head":"p17", "tail": "p18"}
function snc:titans/hallucigenia/rotate {"head":"p18", "tail": "p19"}
function snc:titans/hallucigenia/rotate {"head":"p19", "tail": "p20"}

scoreboard players add @s snc.despawn 1
execute if score @s snc.despawn matches 800 run kill

# execute if entity @s[tag=snc.hall.p1] run tellraw @a ["",{"text":"Titans: "},{"score":{"name":"$snc.hall.p1","objective":"snc.rotation_x"}}]

# execute if entity @s[tag=snc.hall.head] run data modify entity @s Rotation set from entity @p Rotation