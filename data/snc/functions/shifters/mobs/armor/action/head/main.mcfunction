# 5
execute if score $op.hardening armor_vars matches 0 run function snc:shifters/mobs/armor/action/head/5
# 4
execute if score $op.hardening armor_vars matches 1..2 run function snc:shifters/mobs/armor/action/head/4
# 3
execute if score $op.hardening armor_vars matches 3..5 run function snc:shifters/mobs/armor/action/head/3
# 1_2
execute if score $op.hardening armor_vars matches 6.. run function snc:shifters/mobs/armor/action/head/1_2