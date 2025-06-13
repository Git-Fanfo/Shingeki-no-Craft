# Each function represents aprox 0.25 seg
execute on vehicle on passengers if entity @s[tag=transform] run tag @s add consume
execute on vehicle on passengers if entity @s[tag=transform] run function snc:shifters/mobs/head {"shifter":"jaw", "type":"meat", "frame":2}
execute on vehicle run attribute @s scale base set 1.5
execute on vehicle run effect give @s slowness 1 127 true