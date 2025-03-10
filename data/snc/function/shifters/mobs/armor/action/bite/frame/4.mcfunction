execute unless score state armor_vars matches 2 on vehicle at @s rotated ~ -2 run function snc:logic/motion/generic {"score":"armor_vars","strength":0.01, "unstoppable":"false"}
# 5
execute if score $op.hardening armor_vars matches 0 run function snc:shifters/mobs/armor/action/head/modify {"hardening":"5","frame":5}
# 4
execute if score $op.hardening armor_vars matches 1..2 run function snc:shifters/mobs/armor/action/head/modify {"hardening":"4","frame":5}
# 3
execute if score $op.hardening armor_vars matches 3..5 run function snc:shifters/mobs/armor/action/head/modify {"hardening":"3","frame":5}
# 1_2
execute if score $op.hardening armor_vars matches 6.. run function snc:shifters/mobs/armor/action/head/modify {"hardening":"1_2","frame":5}