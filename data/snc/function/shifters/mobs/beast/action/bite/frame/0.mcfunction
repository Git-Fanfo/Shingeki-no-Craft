execute on vehicle on passengers if entity @s[tag=transform] run tag @s add consume
execute on vehicle on passengers if entity @s[tag=transform] run function snc:shifters/mobs/beast/head {"frame":2}
execute unless score state beast_vars matches 2 on vehicle at @s rotated ~180 -2 run function snc:logic/motion/generic {"score":"beast_vars","strength":0.01, "unstoppable":"false"}
execute on vehicle run effect give @s slowness 1 127 true