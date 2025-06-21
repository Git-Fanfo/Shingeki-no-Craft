# Each function represents aprox 0.25 seg
execute on vehicle on passengers if entity @s[tag=transform] run function snc:shifters/mobs/head {"shifter":"jaw", "type":"meat", "frame":3}

execute if score $air jaw_vars matches 0 on vehicle at @s rotated as @n[tag=transform] rotated ~ -2 run function snc:logic/motion/generic {"score":"jaw_vars","strength":0.02, "unstoppable":"false"}