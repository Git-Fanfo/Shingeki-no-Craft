particle end_rod ~ ~ ~ .1 1 .1 .1 2 force
particle flame ~ ~ ~ .1 1 .1 .1 7 force
particle wax_on ~ ~ ~ .1 1 .1 .1 5 force
particle minecraft:electric_spark ~ ~3 ~ .1 1 .1 .1 3 force
#tellraw @a ["volt_range: ",{"score":{"name":"@s","objective":"volt_range"}}," - volt_spread: ",{"score":{"name":"@s","objective":"volt_spread"}}]
scoreboard players remove @s volt_range 1
execute if score @s volt_range matches 1 if score @s volt_spread matches 1.. positioned ^ ^ ^3 run function snc:titans/volt/change
execute if score @s volt_range matches 1.. positioned ^ ^ ^3 run function snc:titans/volt/raycast