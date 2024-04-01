$attribute @s player.block_interaction_range base set $(block_range)
attribute @s player.block_break_speed base set 2.5

# execute positioned over world_surface run 
# execute positioned ~ ~-5 ~ run fill ~-3 ~ ~-3 ~3 ~6 ~3 glass destroy
execute if predicate snc:shifters/has_destroy positioned ~ ~-5 ~ rotated ~ 0 run function snc:shifters/mobs/attack/action/movement/destroy