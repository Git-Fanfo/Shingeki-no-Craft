## CHANGE THIS IN THE FUTURE
$execute if score @s shifter_vars matches 1..2 run scoreboard players set state $(shifter)_vars 0
$execute unless score @s shifter_vars matches 1..2 run scoreboard players set state $(shifter)_vars 9


$function snc:shifters/human/inventory/spawn {"shifter":"$(shifter)"}
function snc:shifters/third_person