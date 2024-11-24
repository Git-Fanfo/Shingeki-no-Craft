execute if score $spawn.shifter shifter_vars matches 1.. if predicate snc:chance/10 run function snc:shifters/select_eldian
function snc:eldia/gene/sex

attribute @s minecraft:block_interaction_range base set 4.5
attribute @s minecraft:entity_interaction_range base set 4

scoreboard players set @s odm_action 0
scoreboard players set @s odm_state 0