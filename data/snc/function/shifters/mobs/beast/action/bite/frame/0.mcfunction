tag @s add consume
execute on vehicle on controller run item replace entity @s armor.head with carved_pumpkin[item_model="shifters/beast/bite/meat/2"]
execute unless score state beast_vars matches 2 on vehicle at @s rotated ~180 -2 run function snc:logic/motion/generic {"score":"beast_vars","strength":0.008, "unstoppable":"false"}
execute on vehicle run effect give @s slowness 1 127 true