function snc:logic/return_gamemode

tag @s remove transform
tag @s remove consume

clear @s carrot_on_a_stick[custom_data~{atk_shifter:1b}]
clear @s spyglass[custom_data~{atk_shifter:1b}]
clear @s carved_pumpkin

effect clear @s
#effect give @s absorption 10 4 true
effect give @s resistance 7 127 true
execute if score @s shifter_vars matches 2 run effect give @s slow_falling 9 0 true
execute unless score @s shifter_vars matches 2 run effect give @s slow_falling 3 0 true
effect give @s levitation 1 0 true

$scoreboard players remove $energy $(shifter)_vars 360

$function snc:shifters/human/untransform {"shifter":"$(shifter)"}