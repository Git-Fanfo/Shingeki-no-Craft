execute unless block ~ ~-1 ~ air if predicate snc:odm/lvl/2 if predicate snc:player/keybinds/sneak if function snc:player/odm/replace_weapon/toggle/lvl_1 run return -1

execute if score $odm_gas config matches 1 run function snc:player/odm/throw/check
execute unless score $odm_gas config matches 1 run function snc:player/odm/throw/main with entity @s