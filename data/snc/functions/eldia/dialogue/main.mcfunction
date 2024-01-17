execute store result score @s random run random value 1..20
execute if score @s random matches 1 run function snc:eldia/dialogue/all/main

tag @s remove snc.dialogue
scoreboard players reset @s random