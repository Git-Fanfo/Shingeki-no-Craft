playsound minecraft:aot.shifters.bite player @a ~ ~ ~ 5 1
# 5
execute if score $op.hardening armor_vars matches 0 run function snc:shifters/mobs/armor/action/bite/frame/modify {"hardening":"5","frame":4}
# 4
execute if score $op.hardening armor_vars matches 1..2 run function snc:shifters/mobs/armor/action/bite/frame/modify {"hardening":"4","frame":4}
# 3
execute if score $op.hardening armor_vars matches 3..5 run function snc:shifters/mobs/armor/action/bite/frame/modify {"hardening":"3","frame":4}
# 1_2
execute if score $op.hardening armor_vars matches 6.. run function snc:shifters/mobs/armor/action/bite/frame/modify {"hardening":"1_2","frame":4}