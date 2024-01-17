# First time joining world
execute unless score @s man_cool matches 0.. run function snc:logic/manual/init

# Show kills
scoreboard players operation @s Visib_Kill_Count = @s Titan_Kill_Count

# Spread Titans
execute if entity @s[tag=near] unless entity @e[distance=..64,tag=titan] run tag @s remove near
execute if entity @s[tag=!near] run function snc:titans/spawn_wave

# Pure Titan
execute if entity @s[tag=wrap] unless entity @e[tag=titan,distance=0..5,limit=1,sort=nearest] run tag @s remove wrap

execute if predicate snc:has_manual run scoreboard players enable @s manual