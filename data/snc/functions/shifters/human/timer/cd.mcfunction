function snc:logic/return_gamemode

tag @s remove transform
tag @s remove consume

clear @s

effect clear @s
effect give @s absorption 10 4 true
effect give @s resistance 7 127 true
execute if score @s shifter_vars matches 2 run effect give @s slow_falling 9 0 true
execute unless score @s shifter_vars matches 2 run effect give @s slow_falling 3 0 true
effect give @s levitation 1 0 true

## UNIQUE: CART
$execute unless score @s cart_vars matches 1.. run scoreboard players remove $energy $(shifter)_vars 360

$function snc:shifters/human/untransform {"shifter":"$(shifter)"}