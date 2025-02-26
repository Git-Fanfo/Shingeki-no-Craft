tag @s add consume
execute on vehicle on controller run item replace entity @s armor.head with carved_pumpkin[item_model="shifters/attack/bite/meat/2"]
execute unless score state attack_vars matches 2 on vehicle at @s rotated ~180 -2 run function snc:logic/motion/generic {"score":"attack_vars","strength":0.01}
#execute on vehicle run attribute @s scale base set 1.5
execute on vehicle run effect give @s slowness 1 127 true