#particle soul_fire_flame ~ ~ ~ 0 0 0 0 1 force
particle end_rod ~ ~ ~ 0 0 0 0 1 force
particle flame ~ ~ ~ 0 0 0 0 1 force
particle wax_on ~ ~ ~ .1 .1 .1 0 5 force
scoreboard players remove @s volt_range 1
execute if score @s volt_range matches 1 if score @s volt_spread matches 1.. positioned ^ ^ ^0.25 run function snc:titans/volt/change
execute if score @s volt_range matches 1.. positioned ^ ^ ^0.25 run function snc:titans/volt/raycast