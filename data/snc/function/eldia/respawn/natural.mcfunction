execute if score $death_msg config matches 1 run function snc:eldia/respawn/effects_nat

## Get Shifter / Royal ?
# Remove tag first since it's a human now
tag @s remove first
# Get shifter
execute if score $can_p_spwn_as_shift config matches 1 if score $spawn.shifter shifter_vars matches 1.. if predicate snc:chance/10 run function snc:shifters/select_eldian
# Get royal
scoreboard players reset @s koniglich
execute if predicate snc:chance/5 run scoreboard players set @s koniglich 1