advancement revoke @s only snc:titan/kill

execute as @s[tag=!titan,tag=!wrap] if predicate snc:odm/has_odm_blade run function snc:player/titan/blade

## Shifter
# execute if score @s[tag=tranform] shifter_vars matches 1.. run function snc:player/titan/spear

execute unless predicate snc:odm/had_spear_r if predicate snc:odm/had_spear_l run function snc:player/titan/spear
execute if predicate snc:odm/had_spear_r run function snc:player/titan/spear