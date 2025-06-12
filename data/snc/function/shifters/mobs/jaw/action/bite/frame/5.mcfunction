# Each function represents aprox 0.25 seg
function snc:shifters/mobs/jaw/action/bite/damage with storage minecraft:jaw
execute on vehicle on passengers if entity @s[tag=transform] run function snc:shifters/mobs/head {"shifter":"jaw", "type":"meat", "frame":1}