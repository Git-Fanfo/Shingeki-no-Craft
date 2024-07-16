## If is using parry
$execute if score #parry $(shifter)_vars matches 1 run playsound minecraft:item.shield.block player @a ~ ~ ~ 3 .5
$execute if score #parry $(shifter)_vars matches 1 anchored eyes run particle minecraft:totem_of_undying ^ ^-1 ^ .2 .2 .2 .7 100 force
$execute if score #parry $(shifter)_vars matches 1 run effect clear @s resistance
# Reduce Energy
$execute if score #parry $(shifter)_vars matches 1 run scoreboard players add $energy $(shifter)_vars 40
## If is not using parry
$execute unless score #parry $(shifter)_vars matches 1 run function snc:shifters/combat/hurt {"shifter":$(shifter)}
$execute unless score #parry $(shifter)_vars matches 1 if score $op.hardening $(shifter)_vars matches 1.. run function snc:shifters/mobs/armor/action/hardening/hit {"shifter":$(shifter)}