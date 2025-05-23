#> snc:titans/spawn/wave
# Spawns 1 wave of pure titans
#
# @input
#   Runs every second with a 20% of chance
#
# @output
#   k pure titans
execute if score $titn_spwn_rate config matches 1 store result score @s random run random value 1..2
execute if score $titn_spwn_rate config matches 2 store result score @s random run random value 1..3
# To modify spawn-rate replace with this line
#execute if score $titn_spwn_rate config matches 3 store result score @s random run random value 1..20
 execute if score $titn_spwn_rate config matches 3 store result score @s random run random value 1..4

execute if score @s random matches 1.. run function snc:titans/spawn/rate

tag @s add near