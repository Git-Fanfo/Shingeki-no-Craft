function snc:logic/return_gamemode

## Drop current items before replace
$function snc:shifters/human/inventory/save/shifter with storage minecraft:$(shifter)
function snc:shifters/abilities/clear
$function snc:shifters/human/inventory/spawn/shifter with storage minecraft:$(shifter)

$execute if entity @s[tag=snc.shifter.vanish] run scoreboard players set $vanish $(shifter)_vars 1
$execute if entity @s[tag=snc.shifter.vanish] run scoreboard players remove $energy $(shifter)_vars 360
execute if entity @s[tag=snc.shifter.vanish] run ride @s dismount

tag @s remove transform
tag @s remove consume
tag @s remove snc.shifter.vanish

effect clear @s
effect give @s absorption 10 4 true
effect give @s resistance 7 127 true
execute if score @s shifter_vars matches 2 run effect give @s slow_falling 9 0 true
execute unless score @s shifter_vars matches 2 run effect give @s slow_falling 3 0 true
effect give @s levitation 1 0 true

$function snc:shifters/human/untransform {"shifter":"$(shifter)"}

#execute as @e[tag=cart,tag=shifter,type=!villager,tag=!dead] at @s run function snc:shifters/mobs/main with storage minecraft:cart