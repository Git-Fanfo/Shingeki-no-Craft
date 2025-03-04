tag @s add consume
execute unless score state armor_vars matches 2 on vehicle at @s rotated ~180 -2 run function snc:logic/motion/generic {"score":"attack_vars","strength":0.005, "unstoppable":"false"}
execute unless score state armor_vars matches 2 on vehicle run attribute @s minecraft:scale base set 6.7
execute on vehicle run effect give @s slowness 2 127 true

# 5
execute if score $op.hardening armor_vars matches 0 run function snc:shifters/mobs/armor/action/bite/frame/modify {"hardening":"5","frame":1}
# 4
execute if score $op.hardening armor_vars matches 1..2 run function snc:shifters/mobs/armor/action/bite/frame/modify {"hardening":"4","frame":1}
# 3
execute if score $op.hardening armor_vars matches 3..5 run function snc:shifters/mobs/armor/action/bite/frame/modify {"hardening":"3","frame":1}
# 1_2
execute if score $op.hardening armor_vars matches 6.. run function snc:shifters/mobs/armor/action/bite/frame/modify {"hardening":"1_2","frame":1}