function snc:shifters/mobs/armor/action/bite/damage with storage minecraft:armor
# 5
execute if score $op.hardening armor_vars matches 0 run function snc:shifters/mobs/armor/action/head/modify {"hardening":"5","frame":1}
# 4
execute if score $op.hardening armor_vars matches 1..2 run function snc:shifters/mobs/armor/action/head/modify {"hardening":"4","frame":1}
# 3
execute if score $op.hardening armor_vars matches 3..5 run function snc:shifters/mobs/armor/action/head/modify {"hardening":"3","frame":1}
# 1_2
execute if score $op.hardening armor_vars matches 6.. run function snc:shifters/mobs/armor/action/head/modify {"hardening":"1_2","frame":1}