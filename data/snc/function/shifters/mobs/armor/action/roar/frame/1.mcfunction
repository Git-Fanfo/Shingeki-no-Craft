playsound minecraft:snc.shifters.armor.roar player @a ~ ~ ~ 24
execute on vehicle at @s rotated ~ -2 run function snc:logic/motion/generic {"score":"armor_vars","strength":0.015, "unstoppable":"false"}

execute on vehicle on passengers if entity @s[tag=transform] run function snc:shifters/mobs/armor/head {"frame":2}