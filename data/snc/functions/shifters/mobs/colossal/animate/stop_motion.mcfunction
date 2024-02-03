## ANIMATE
execute if score walk colossal_vars matches ..0 run scoreboard players set walk colossal_vars 121
execute if score idle colossal_vars matches ..0 run scoreboard players set idle colossal_vars 90


# Born
execute if score state colossal_vars matches 1 run function snc:shifters/mobs/colossal/animate/born
# Idle
execute if score state colossal_vars matches 3 run function snc:shifters/mobs/colossal/animate/idle
# Sneak
# execute if score state colossal_vars matches 2 run function snc:shifters/mobs/colossal/action/movement/sneak
# Walk and Run
execute if score state colossal_vars matches 4..5 run function snc:shifters/mobs/colossal/animate/walk

# Slam of the Lefties
# execute if score state colossal_vars matches 11 run function snc:shifters/mobs/colossal/animate/slam

execute if score state colossal_vars matches 9 run function snc:shifters/mobs/colossal/action/death/fall

scoreboard players remove idle colossal_vars 1
scoreboard players remove walk colossal_vars 1
execute if score action colossal_vars matches 1.. run scoreboard players remove action colossal_vars 1