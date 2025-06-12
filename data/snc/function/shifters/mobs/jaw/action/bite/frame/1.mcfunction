# Each function represents aprox 0.25 seg
execute on vehicle on passengers if entity @s[tag=transform] run function snc:shifters/mobs/head {"shifter":"jaw", "type":"meat", "frame":3}
execute on vehicle at @s rotated ~ -2 run function snc:logic/motion/generic {"score":"jaw_vars","strength":0.015, "unstoppable":"false"}