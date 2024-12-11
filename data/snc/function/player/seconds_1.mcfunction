# Spread Titans
execute if entity @s[tag=!near] if predicate snc:chance/5 run function snc:titans/spawn/wave
execute if entity @s[tag=near] unless entity @e[distance=..64,tag=titan] run tag @s remove near

# Pure Titan
execute if entity @s[tag=snc.grabbed] unless entity @n[tag=titan,distance=..5] run tag @s remove snc.grabbed

# start function
execute unless score @s snc.time matches 0.. run scoreboard players set @s snc.time 1
execute if score $intro config matches 1 if score @s snc.time matches ..79 run function snc:logic/broadcast/welcome