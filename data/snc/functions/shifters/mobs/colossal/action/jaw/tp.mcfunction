effect give @s levitation 1 0 true
execute if score action colossal_vars matches 8 run particle crit ~ ~ ~ 0 0 0 1 50 force
execute if score action colossal_vars matches 8 run damage @s 20 player_attack by @p[scores={colossal_vars=1}]
tp @s ~ ~ ~