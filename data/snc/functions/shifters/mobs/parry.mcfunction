## If is using parry
$execute if score state $(shifter)_vars matches 10 run playsound minecraft:item.shield.block player @a ~ ~ ~ 3 .5
$execute if score state $(shifter)_vars matches 10 anchored eyes positioned ^ ^ ^ run particle minecraft:totem_of_undying ~ ~ ~ .2 .2 .2 .4 100 force
$execute if score state $(shifter)_vars matches 10 run effect clear @s resistance
# Reduce Energy
$execute if score state $(shifter)_vars matches 10 run scoreboard players add $energy $(shifter)_vars 40
## If is not using parry
$execute unless score state $(shifter)_vars matches 10 run function snc:shifters/human/damage