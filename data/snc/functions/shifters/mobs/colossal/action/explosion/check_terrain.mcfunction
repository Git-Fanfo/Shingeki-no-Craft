scoreboard players set terrain colossal_vars 0

execute unless block ~ ~-5 ~ air run scoreboard players add terrain colossal_vars 1
execute unless block ~ ~-5 ~15 air run scoreboard players add terrain colossal_vars 1
execute unless block ~ ~-5 ~-15 air run scoreboard players add terrain colossal_vars 1
execute unless block ~15 ~-5 ~ air run scoreboard players add terrain colossal_vars 1
execute unless block ~-15 ~-5 ~ air run scoreboard players add terrain colossal_vars 1

execute unless block ~10 ~-5 ~10 air run scoreboard players add terrain colossal_vars 1
execute unless block ~10 ~-5 ~-10 air run scoreboard players add terrain colossal_vars 1
execute unless block ~-10 ~-5 ~10 air run scoreboard players add terrain colossal_vars 1
execute unless block ~-10 ~-5 ~-10 air run scoreboard players add terrain colossal_vars 1