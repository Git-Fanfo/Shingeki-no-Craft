function snc:shifters/mobs/attack/action/bite/damage with storage minecraft:attack
execute on vehicle on passengers if entity @s[tag=transform] run function snc:shifters/mobs/attack/head {"frame":1}