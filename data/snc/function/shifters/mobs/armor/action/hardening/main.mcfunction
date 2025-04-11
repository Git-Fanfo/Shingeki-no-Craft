#execute if score @s shifter_vars matches 5 run function snc:shifters/mobs/armor/head {"frame":1}
#execute if score @s shifter_vars matches 5 if score state armor_vars matches 11.. run function snc:shifters/mobs/armor/head {"frame":3}

$execute if score $op.hardening $(shifter)_vars matches ..-1 run scoreboard players set $op.hardening $(shifter)_vars 0
$execute if score $op.hardening $(shifter)_vars matches 13.. run scoreboard players set $op.hardening $(shifter)_vars 13

$execute if score $op.hardening $(shifter)_vars matches 12.. run item modify entity @s armor.head snc:shifters/armor/harden/20
$execute if score $op.hardening $(shifter)_vars matches 11 run item modify entity @s armor.head snc:shifters/armor/harden/19

$execute if score $op.hardening $(shifter)_vars matches 10 run item modify entity @s armor.head snc:shifters/armor/harden/18
$execute if score $op.hardening $(shifter)_vars matches 9 run item modify entity @s armor.head snc:shifters/armor/harden/17
$execute if score $op.hardening $(shifter)_vars matches 8 run item modify entity @s armor.head snc:shifters/armor/harden/16

$execute if score $op.hardening $(shifter)_vars matches 7 run item modify entity @s armor.head snc:shifters/armor/harden/14
$execute if score $op.hardening $(shifter)_vars matches 6 run item modify entity @s armor.head snc:shifters/armor/harden/13
$execute if score $op.hardening $(shifter)_vars matches 5 run item modify entity @s armor.head snc:shifters/armor/harden/12
$execute if score $op.hardening $(shifter)_vars matches 4 run item modify entity @s armor.head snc:shifters/armor/harden/11

$execute if score $op.hardening $(shifter)_vars matches 3 run item modify entity @s armor.head snc:shifters/armor/harden/8
$execute if score $op.hardening $(shifter)_vars matches 2 run item modify entity @s armor.head snc:shifters/armor/harden/7
$execute if score $op.hardening $(shifter)_vars matches 1 run item modify entity @s armor.head snc:shifters/armor/harden/6

$execute if score $op.hardening $(shifter)_vars matches 0 run item modify entity @s armor.head snc:shifters/armor/harden/0

$scoreboard players operation $hardening $(shifter)_vars = $op.hardening $(shifter)_vars