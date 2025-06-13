# Each function represents aprox 0.25 seg
execute on vehicle on passengers if entity @s[tag=transform] run function snc:shifters/mobs/head {"shifter":"jaw", "type":"meat", "frame":3}
execute on vehicle run attribute @s scale base set 1.1
execute on vehicle at @s rotated as @n[tag=transform] rotated ~ -10 run function snc:logic/motion/generic {"score":"jaw_vars","strength":0.025, "unstoppable":"false"}