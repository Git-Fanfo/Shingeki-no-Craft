# Each function represents aprox 0.25 seg
execute on vehicle on passengers if entity @s[tag=transform] run function snc:shifters/mobs/head {"shifter":"jaw", "type":"meat", "frame":4}
function snc:shifters/mobs/jaw/action/slash/damage with storage minecraft:jaw
execute on vehicle run attribute @s scale base set 1.5