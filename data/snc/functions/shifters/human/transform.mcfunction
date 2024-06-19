effect give @s levitation 3 1 true
ride @s dismount

## Save inv
#$function snc:shifters/human/inventory/save/all {"shifter":$(shifter)}
$data modify storage minecraft:$(shifter) Inventory set from entity @s Inventory
effect give @s invisibility 1 0 true

clear @s
tag @s add transform
tag @s remove first
$advancement grant @s only snc:shifters/$(shifter)/get
effect give @s absorption 20 5 true
$scoreboard players set health $(shifter)_vars 20

## Explosion
effect give @s resistance 1 127 true
$execute if score $shifter_destroy config matches 1 if score $energy $(shifter)_vars matches 2160.. if score $destroy_when_spawn $(shifter)_vars matches 1 run advancement grant @s only snc:shifters/nuke
$execute if score $shifter_destroy config matches 1 if score $energy $(shifter)_vars matches 2160.. if score $destroy_when_spawn $(shifter)_vars matches 1 run summon creeper ~ ~4 ~ {ExplosionRadius:10b,Fuse:0,CustomName:'{"text":"$(name)"}'}
$execute if score $shifter_destroy config matches 1 if score $energy $(shifter)_vars matches 2160.. if score $destroy_when_spawn $(shifter)_vars matches 1 if score @s colossal_vars matches 1 run function snc:shifters/human/explosion/start {"shifter":$(shifter)}
$execute if score $shifter_destroy config matches 1 if score $energy $(shifter)_vars matches 2160.. if score $destroy_when_spawn $(shifter)_vars matches 1 run scoreboard players remove $energy $(shifter)_vars 1800