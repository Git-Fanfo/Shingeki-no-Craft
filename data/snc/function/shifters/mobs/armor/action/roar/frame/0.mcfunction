execute on vehicle at @s rotated ~180 -2 run function snc:logic/motion/generic {"score":"armor_vars","strength":0.005, "unstoppable":"false"}
execute on vehicle run effect give @s slowness 7 127 true
execute unless score state armor_vars matches 2 on vehicle run attribute @s minecraft:scale base set 6.7

execute on vehicle on controller run function snc:shifters/mobs/armor/head {"frame":1}