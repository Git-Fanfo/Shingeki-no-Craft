effect give @s levitation 3 1 true
effect give @s invisibility 1 0 true

ride @s dismount

## Save inv
#$function snc:shifters/human/inventory/save/all {"shifter":$(shifter)}
execute if score @s shifter_vars matches 1 run function snc:shifters/mobs/cart/action/shipload/trigger
$data modify storage minecraft:$(shifter) Inventory set from entity @s Inventory
$execute if items entity @s armor.head minecraft:mushroom_stew[custom_data~{snc_blank:true}] run data modify storage minecraft:$(shifter) Inventory[{Slot:103b}] set value {"id":"minecraft:air"}
$execute if items entity @s armor.chest minecraft:mushroom_stew[custom_data~{snc_blank:true}] run data modify storage minecraft:$(shifter) Inventory[{Slot:102b}] set value {"id":"minecraft:air"}
$execute if items entity @s armor.legs minecraft:mushroom_stew[custom_data~{snc_blank:true}] run data modify storage minecraft:$(shifter) Inventory[{Slot:101b}] set value {"id":"minecraft:air"}
$execute if items entity @s armor.feet minecraft:mushroom_stew[custom_data~{snc_blank:true}] run data modify storage minecraft:$(shifter) Inventory[{Slot:100b}] set value {"id":"minecraft:air"}

clear @s
tag @s add transform
tag @s remove first
$advancement grant @s only snc:shifters/$(shifter)/get
effect give @s absorption 20 5 true
$scoreboard players set $health $(shifter)_vars 20

## Explosion
effect give @s resistance 1 127 true
$execute if score $shifter_destroy config matches 1 if score $energy $(shifter)_vars matches 2160.. if score $destroy_when_spawn $(shifter)_vars matches 1 run advancement grant @s only snc:shifters/nuke
$execute if score $shifter_destroy config matches 1 if score $energy $(shifter)_vars matches 2160.. if score $destroy_when_spawn $(shifter)_vars matches 1 run summon creeper ~ ~4 ~ {ExplosionRadius:10b,Fuse:0,CustomName:'{"text":"$(name)"}'}
$execute if score $shifter_destroy config matches 1 if score $energy $(shifter)_vars matches 2160.. if score $destroy_when_spawn $(shifter)_vars matches 1 if score @s colossal_vars matches 1 run function snc:shifters/human/explosion/start {"shifter":$(shifter)}
$execute if score $shifter_destroy config matches 1 if score $energy $(shifter)_vars matches 2160.. if score $destroy_when_spawn $(shifter)_vars matches 1 run scoreboard players remove $energy $(shifter)_vars 1800