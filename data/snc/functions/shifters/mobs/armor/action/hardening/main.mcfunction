$execute if score $op.hardening $(shifter)_vars matches ..-1 run scoreboard players set $op.hardening $(shifter)_vars 0
$execute if score $op.hardening $(shifter)_vars matches 13.. run scoreboard players set $op.hardening $(shifter)_vars 13

execute if score @s shifter_vars matches 5 run function snc:shifters/mobs/armor/action/head/main

$execute if score $op.hardening $(shifter)_vars matches 12.. run item modify entity @s armor.head snc:shifters/armor/20
$execute if score $op.hardening $(shifter)_vars matches 11 run item modify entity @s armor.head snc:shifters/armor/20

$execute if score $op.hardening $(shifter)_vars matches 10 run item modify entity @s armor.head snc:shifters/armor/18
$execute if score $op.hardening $(shifter)_vars matches 9 run item modify entity @s armor.head snc:shifters/armor/18
$execute if score $op.hardening $(shifter)_vars matches 8 run item modify entity @s armor.head snc:shifters/armor/18

$execute if score $op.hardening $(shifter)_vars matches 7 run item modify entity @s armor.head snc:shifters/armor/14
$execute if score $op.hardening $(shifter)_vars matches 6 run item modify entity @s armor.head snc:shifters/armor/14
$execute if score $op.hardening $(shifter)_vars matches 5 run item modify entity @s armor.head snc:shifters/armor/14
$execute if score $op.hardening $(shifter)_vars matches 4 run item modify entity @s armor.head snc:shifters/armor/14

$execute if score $op.hardening $(shifter)_vars matches 3 run item modify entity @s armor.head snc:shifters/armor/8
$execute if score $op.hardening $(shifter)_vars matches 2 run item modify entity @s armor.head snc:shifters/armor/8
$execute if score $op.hardening $(shifter)_vars matches 1 run item modify entity @s armor.head snc:shifters/armor/8

$execute if score $op.hardening $(shifter)_vars matches 0 run item modify entity @s armor.head snc:shifters/armor/0

$scoreboard players operation $hardening $(shifter)_vars = $op.hardening $(shifter)_vars