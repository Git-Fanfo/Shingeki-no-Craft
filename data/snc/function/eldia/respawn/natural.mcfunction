playsound minecraft:entity.elder_guardian.curse master @s ~ ~ ~ 1 0
effect give @s darkness 5 0 true
effect give @s blindness 5 0 true
effect give @s slowness 5 6 true
effect give @s invisibility 5 0 true
title @s times 0 80 20
title @s subtitle ""
title @s title {"translate":"aot.died","bold":true,"color":"dark_red"}

## Get Shifter / Royal ?
# Remove tag first since it's a human now
tag @s remove first
# Get shifter
execute if score $can_p_spwn_as_shift config matches 1 if score $spawn.shifter shifter_vars matches 1.. if predicate snc:chance/10 run function snc:shifters/select_eldian
# Get royal
scoreboard players reset @s koniglich
execute if predicate snc:chance/5 run scoreboard players set @s koniglich 1