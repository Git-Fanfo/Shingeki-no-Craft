$execute if score $op.hardening $(shifter)_vars matches 11.. run scoreboard players set $op.hardening $(shifter)_vars 10
$execute if score $op.hardening $(shifter)_vars matches 10.. run item modify entity @s armor.head snc:armor/20
$execute if score $op.hardening $(shifter)_vars matches 9 run item modify entity @s armor.head snc:armor/20

$execute if score $op.hardening $(shifter)_vars matches 8 run item modify entity @s armor.head snc:armor/18
$execute if score $op.hardening $(shifter)_vars matches 7 run item modify entity @s armor.head snc:armor/18
$execute if score $op.hardening $(shifter)_vars matches 6 run item modify entity @s armor.head snc:armor/18

$execute if score $op.hardening $(shifter)_vars matches 5 run item modify entity @s armor.head snc:armor/14
$execute if score $op.hardening $(shifter)_vars matches 4 run item modify entity @s armor.head snc:armor/14
$execute if score $op.hardening $(shifter)_vars matches 3 run item modify entity @s armor.head snc:armor/14

$execute if score $op.hardening $(shifter)_vars matches 2 run item modify entity @s armor.head snc:armor/8
$execute if score $op.hardening $(shifter)_vars matches 1 run item modify entity @s armor.head snc:armor/8

$execute if score $op.hardening $(shifter)_vars matches 0 run item modify entity @s armor.head snc:armor/0

$scoreboard players operation $hardening $(shifter)_vars = $op.hardening $(shifter)_vars