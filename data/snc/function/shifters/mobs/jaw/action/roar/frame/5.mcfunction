# Each function represents aprox 0.25 seg
execute on vehicle on passengers if entity @s[tag=transform] run function snc:shifters/mobs/head {"shifter":"jaw", "type":"meat", "frame":3}
execute on vehicle run attribute @s scale base set 1.6