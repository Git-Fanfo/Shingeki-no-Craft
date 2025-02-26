#$scoreboard players set state $(shifter)_vars 9
$execute as 0000007f-0000-007f-0000-007f0000000$(id) on passengers if entity @s[tag=aj.$(shifter).root] run function snc:shifters/mobs/$(shifter)/animate/death
$bossbar remove $(shifter)_health
attribute @s minecraft:scale base set 1
attribute @s block_interaction_range base set 4.5
attribute @s entity_interaction_range base set 3
attribute @s block_break_speed base set 1

$function snc:shifters/human/inventory/spawn/all {"shifter":"$(shifter)"}