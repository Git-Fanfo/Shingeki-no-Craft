execute if predicate snc:odm/has_upg if predicate snc:player/is_sneaking if function snc:player/odm/toggle_upgrade run return -1

execute if score $odm_gas config matches 1 run function snc:player/odm/throw/check
execute unless score $odm_gas config matches 1 run function snc:player/odm/throw/main with entity @s