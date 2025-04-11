# 5
$execute unless score @s jaw_vars matches 1 if score $op.hardening armor_vars matches 0 run function snc:shifters/mobs/head {"shifter":"armor", "type":"5", "frame":$(frame)}
# 4
$execute unless score @s jaw_vars matches 1 if score $op.hardening armor_vars matches 1..2 run function snc:shifters/mobs/head {"shifter":"armor", "type":"4", "frame":$(frame)}
# 3
$execute unless score @s jaw_vars matches 1 if score $op.hardening armor_vars matches 3..5 run function snc:shifters/mobs/head {"shifter":"armor", "type":"3", "frame":$(frame)}
# 1_2
$execute unless score @s jaw_vars matches 1 if score $op.hardening armor_vars matches 6.. run function snc:shifters/mobs/head {"shifter":"armor", "type":"1_2", "frame":$(frame)}

# Jaw
$execute if score @s jaw_vars matches 1 run function snc:shifters/mobs/head {"shifter":"armor", "type":"jaw", "frame":$(frame)}

function snc:shifters/mobs/armor/action/hardening/main {"shifter":"armor"}