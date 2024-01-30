## CHANGE THIS IN THE FUTURE
$execute unless score @s shifter_vars matches 2 run scoreboard players set state $(shifter)_vars 9


attribute @s minecraft:generic.scale base set 1
$function snc:shifters/human/inventory/spawn {"shifter":"$(shifter)"}
function snc:shifters/third_person