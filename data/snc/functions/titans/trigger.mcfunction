scoreboard players add @s kill_cool 1
execute if score @s kill_cool matches 22.. run function snc:titans/kill_spawn

execute unless score $titn_spwn_rate config matches 0 if score titan_count spawn matches ..19 as @s[tag=!not_titan] if score @s kill_cool matches 21.. if block ~ ~-1 ~ #snc:can_spawn unless entity @p[distance=..23] run function snc:titans/select_titan

execute if score titan_count spawn matches 20.. as @s[tag=!not_titan] run function snc:titans/kill_spawn

return 0