# Show kills
scoreboard players operation @s Visib_Kill_Count = @s Titan_Kill_Count

# Spread Titans
execute if entity @s[tag=near] unless entity @e[distance=..64,tag=titan] run tag @s remove near
execute if entity @s[tag=!near] run function snc:titans/spawn_wave

# Pure Titan
execute if entity @s[tag=wrap] unless entity @e[tag=titan,distance=0..5,limit=1,sort=nearest] run tag @s remove wrap