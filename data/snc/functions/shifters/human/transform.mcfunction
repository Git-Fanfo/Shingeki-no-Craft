effect give @s levitation 3 1 true
execute if predicate snc:riding/sticky run function snc:logic/sticky/kill

## Save inv
$function snc:shifters/human/inventory/save {"shifter":$(shifter)}

clear @s
tag @s add transform
tag @s remove first
$advancement grant @s only snc:shifters/$(shifter)
effect give @s absorption 20 8 true
$scoreboard players set health $(shifter)_vars 20

## Third Person
$function snc:shifters/mobs/$(shifter)/third_person

## UNIQUE: COLOSSAL
# 2 is for explosion
execute if score @s shifter_vars matches 2 unless predicate snc:is_sneaking run scoreboard players set state_sp colossal_vars 0
execute if score @s shifter_vars matches 2 if score state_sp colossal_vars matches 2 run function snc:shifters/mobs/colossal/action/explosion/explosion