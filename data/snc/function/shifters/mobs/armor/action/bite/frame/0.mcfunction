tag @s add consume
execute unless score state armor_vars matches 2 on vehicle at @s rotated ~180 -2 run function snc:logic/motion/generic {"score":"armor_vars","strength":0.01, "unstoppable":"false"}
execute unless score state armor_vars matches 2 on vehicle run attribute @s minecraft:scale base set 6.7
execute on vehicle run effect give @s slowness 2 127 true

execute on vehicle on passengers if entity @s[tag=transform] run function snc:shifters/mobs/armor/head {"frame":1}