$scoreboard players set state $(shifter)_vars 9

attribute @s minecraft:generic.scale base set 1
attribute @s player.block_interaction_range base set 4.5
attribute @s player.entity_interaction_range base set 3
attribute @s player.block_break_speed base set 1
$function snc:shifters/human/inventory/spawn/all {"shifter":"$(shifter)"}