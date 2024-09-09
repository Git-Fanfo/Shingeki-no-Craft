execute as @s[team=officer] if predicate snc:player/is_sneaking \
    if predicate snc:odm/has_full_blade if score @s odm_action matches 0.. \
        run scoreboard players set @s odm_action -25

execute as @s[team=squad] if predicate snc:player/is_sneaking \
    if predicate snc:odm/has_full_blade if score @s odm_action matches 0.. \
        run scoreboard players set @s odm_action -25

execute as @s[team=v_captain] if predicate snc:player/is_sneaking \
    if predicate snc:odm/can_spin if block ~ ~-1 ~ air if score @s odm_action matches 0.. run \
        scoreboard players set @s odm_action -20
        
execute as @s[team=captain] if predicate snc:player/is_sneaking \
    if predicate snc:odm/can_spin if block ~ ~-1 ~ air if score @s odm_action matches 0.. run \
        scoreboard players set @s odm_action -20

execute unless block ~ ~-1 ~ air run tag @s remove spin