execute if predicate snc:odm/lvl/2 if predicate snc:player/is_sneaking if function snc:player/odm/replace_weapon/toggle/lvl_1 run return -1

execute if score $odm_gas config matches 1 run function snc:player/odm/throw/check
execute unless score $odm_gas config matches 1 run function snc:player/odm/throw/main with entity @s