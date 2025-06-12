# Each function represents aprox 0.25 seg
playsound minecraft:snc.shifters.jaw.roar player @a ~ ~ ~ 24
execute on vehicle on passengers if entity @s[tag=transform] run function snc:shifters/mobs/head {"shifter":"jaw", "type":"meat", "frame":2}
execute on vehicle run attribute @s scale base set 1.6
execute on vehicle run effect give @s slowness 2 127 true