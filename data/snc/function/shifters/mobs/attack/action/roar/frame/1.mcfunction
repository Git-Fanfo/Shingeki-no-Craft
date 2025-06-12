playsound minecraft:snc.shifters.attack.roar player @a ~ ~ ~ 24
execute on vehicle on passengers if entity @s[tag=transform] run function snc:shifters/mobs/attack/head {"frame":2}
execute on vehicle at @s rotated ~ -2 run function snc:logic/motion/generic {"score":"attack_vars","strength":0.025, "unstoppable":"false"}