scoreboard players set terrain colossal_vars 0

execute unless block ^ ^-30 ^13 air run scoreboard players add terrain colossal_vars 1
#particle heart ^ ^-40 ^13 0 0 0 1 100 force
execute unless block ^ ^-30 ^-13 air run scoreboard players add terrain colossal_vars 4
#particle heart ^ ^-40 ^-13 0 0 0 1 100 force
execute unless block ^13 ^-30 ^ air run scoreboard players add terrain colossal_vars 2
#particle heart ^13 ^-40 ^ 0 0 0 1 100 force
execute unless block ^-13 ^-30 ^ air run scoreboard players add terrain colossal_vars 3
#particle heart ^-13 ^-40 ^ 0 0 0 1 100 force

execute unless block ^10 ^-30 ^10 air run scoreboard players add terrain colossal_vars 7
#particle heart ^10 ^-40 ^10 0 0 0 1 100 force
execute unless block ^10 ^-30 ^-10 air run scoreboard players add terrain colossal_vars 5
#particle heart ^10 ^-40 ^-10 0 0 0 1 100 force
execute unless block ^-10 ^-30 ^10 air run scoreboard players add terrain colossal_vars 8
#particle heart ^-10 ^-40 ^10 0 0 0 1 100 force
execute unless block ^-10 ^-30 ^-10 air run scoreboard players add terrain colossal_vars 6
#particle heart ^-10 ^-40 ^-10 0 0 0 1 100 force

# [7] [1] [8]
# [2]     [3]
# [5] [4] [6]

# U
#execute if score terrain colossal_vars matches 1 run scoreboard players set height colossal_vars 1
# UR
#execute if score terrain colossal_vars matches 8 run scoreboard players set height colossal_vars 2
# R
#execute if score terrain colossal_vars matches 3 run scoreboard players set height colossal_vars 3
# DR
#execute if score terrain colossal_vars matches 6 run scoreboard players set height colossal_vars 4
# D
#execute if score terrain colossal_vars matches 4 run scoreboard players set height colossal_vars 5
# DL
#execute if score terrain colossal_vars matches 5 run scoreboard players set height colossal_vars 6
# L
#execute if score terrain colossal_vars matches 2 run scoreboard players set height colossal_vars 7
# UL
#execute if score terrain colossal_vars matches 7 run scoreboard players set height colossal_vars 8


# I'm using height because I dont want to make another variable

#execute if score height colossal_vars matches 1 run tp @s ^ ^ ^-1
#execute if score height colossal_vars matches 2 run tp @s ^.5 ^ ^-.5
#execute if score height colossal_vars matches 3 run tp @s ^1 ^ ^
#execute if score height colossal_vars matches 4 run tp @s ^.5 ^ ^.5

#execute if score height colossal_vars matches 5 run tp @s ^ ^ ^1
#execute if score height colossal_vars matches 6 run tp @s ^-.5 ^ ^.5
#execute if score height colossal_vars matches 7 run tp @s ^-1 ^ ^
#execute if score height colossal_vars matches 8 run tp @s ^-.5 ^ ^-.5