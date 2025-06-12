# Each function represents aprox 0.25 seg
function snc:shifters/mobs/beast/action/bite/damage with storage minecraft:beast
execute on vehicle on passengers if entity @s[tag=transform] run function snc:shifters/mobs/beast/head {"frame":1}