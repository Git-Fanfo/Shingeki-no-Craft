## ANIMATE
execute if score walk colossal_vars matches 0 run scoreboard players set walk colossal_vars 20
execute if score idle colossal_vars matches 0 run scoreboard players set idle colossal_vars 40

# Born
execute if score state colossal_vars matches 1 run function snc:shifters/mobs/colossal/animate/born
# Idle
# execute if score state colossal_vars matches 3 run function snc:shifters/mobs/colossal/animate/idle
# execute if score state colossal_vars matches 3 on vehicle run attribute @s minecraft:generic.scale base set 1.3
# Sneak
# execute if score state colossal_vars matches 2 run function snc:shifters/mobs/colossal/action/movement/sneak
# Walk and Run
# execute if score state colossal_vars matches 4..5 run function snc:shifters/mobs/colossal/animate/walk

# Slam of the Lefties
# execute if score state colossal_vars matches 11 run function snc:shifters/mobs/colossal/animate/slam

execute if score state colossal_vars matches 9 run function snc:shifters/mobs/colossal/action/death/fall

execute if score idle colossal_vars matches 1.. run scoreboard players remove idle colossal_vars 1
execute if score action colossal_vars matches 1.. run scoreboard players remove action colossal_vars 1
execute if score walk colossal_vars matches 1.. run scoreboard players remove walk colossal_vars 1