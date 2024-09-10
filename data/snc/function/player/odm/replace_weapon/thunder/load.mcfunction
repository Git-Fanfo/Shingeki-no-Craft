advancement revoke @s only snc:survey/odm/load/spear
execute if predicate snc:odm/mode/2 unless block ~ ~-1 ~ air if function snc:player/odm/replace_weapon/thunder/reload run return -1

playsound minecraft:entity.villager.no player @s ~ ~ ~ 1 1