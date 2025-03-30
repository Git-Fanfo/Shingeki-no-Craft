playsound minecraft:snc.shifters.attack.roar player @a ~ ~ ~ 24
execute on vehicle on controller run function snc:shifters/mobs/attack/head/type {"frame":2}
execute on vehicle at @s rotated ~ -2 run function snc:logic/motion/generic {"score":"attack_vars","strength":0.02, "unstoppable":"false"}