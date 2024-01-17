## If = 0
execute if score titan spawn matches 0 run function snc:titans/ai/join_leader {"titan":"titan_4"}
execute if score titan spawn matches 1 run function snc:titans/ai/join_leader {"titan":"titan_3"}

execute if score titan spawn matches 2 if predicate snc:chance/20 unless predicate snc:villager/sunlight run tag @s add abnormal
execute if score titan spawn matches 2 if entity @s[tag=abnormal] run function snc:titans/ai/join_leader {"titan":"titan_8"}
execute if score titan spawn matches 2 if entity @s[tag=!abnormal] run function snc:titans/ai/join_leader {"titan":"titan_2"}

execute if score titan spawn matches 3 run function snc:titans/ai/join_leader {"titan":"titan_5"}
execute if score titan spawn matches 4 if predicate snc:chance/20 run tag @s add abnormal
execute if score titan spawn matches 4 if entity @s[tag=abnormal] run function snc:titans/ai/join_leader {"titan":"titan_1"}
execute if score titan spawn matches 4 if entity @s[tag=!abnormal] run function snc:titans/ai/join_leader {"titan":"titan_6"}
execute if score titan spawn matches 5 run function snc:titans/ai/join_leader {"titan":"titan_7"}

tag @s remove abnormal
execute unless entity @s[type=player] run function snc:titans/kill_spawn

# Incrementar scoreboard
scoreboard players add titan spawn 1
#Reset
execute if score titan spawn matches 6 run scoreboard players set titan spawn 0