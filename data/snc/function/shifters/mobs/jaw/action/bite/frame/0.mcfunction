# Each function represents aprox 0.25 seg
tag @s add consume
execute on vehicle on controller run function snc:shifters/mobs/head {"shifter":"jaw", "type":"meat", "frame":2}
execute on vehicle run attribute @s scale base set 1.5
execute on vehicle run effect give @s slowness 1 127 true