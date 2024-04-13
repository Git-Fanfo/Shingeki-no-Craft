function snc:logic/return_gamemode

$execute if entity @s[tag=snc.shifter.vanish] run scoreboard players set $vanish $(shifter)_vars 1
$execute if entity @s[tag=snc.shifter.vanish] on vehicle run scoreboard players set @s $(shifter)_vars 1
$execute if entity @s[tag=snc.shifter.vanish] run scoreboard players remove $energy $(shifter)_vars 180

tag @s remove transform
tag @s remove consume
tag @s remove snc.shifter.vanish

clear @s *[custom_data~{atk_shifter:1b}]
clear @s carved_pumpkin

effect clear @s
effect give @s absorption 10 4 true
effect give @s resistance 7 127 true
execute if score @s shifter_vars matches 2 run effect give @s slow_falling 9 0 true
execute unless score @s shifter_vars matches 2 run effect give @s slow_falling 3 0 true
effect give @s levitation 1 0 true

$function snc:shifters/human/untransform {"shifter":"$(shifter)"}