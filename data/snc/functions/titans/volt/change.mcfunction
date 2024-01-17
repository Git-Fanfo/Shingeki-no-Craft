# function fork:rng/range
scoreboard players remove @s volt_spread 1
execute store result score @s random run random value 1..5
execute if score @s random matches 1 rotated ~14 ~-8 run function snc:titans/volt/joint
execute if score @s random matches 2 rotated ~-17 ~-9 run function snc:titans/volt/joint
execute if score @s random matches 3 rotated ~ ~12 run function snc:titans/volt/joint
execute if score @s random matches 4 rotated ~-12 ~10 run function snc:titans/volt/joint
execute if score @s random matches 5 rotated ~-17 ~-9 run function snc:titans/volt/joint