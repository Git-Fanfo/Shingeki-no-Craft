function snc:api/give/survey_corps/uniform/hood
function snc:api/give/survey_corps/uniform/cape
function snc:api/give/survey_corps/uniform/harness
function snc:api/give/survey_corps/uniform/boots

clear @s minecraft:warped_fungus_on_a_stick{odm_gear:1b} 1
clear @s minecraft:carrot_on_a_stick{trigger:1b} 1
## Removed for using item modifier
# function snc:player/odm/replace_weapon/get_blades/left/main
# function snc:player/odm/replace_weapon/get_blades/right/main

tag @s remove spin

effect clear @s invisibility
scoreboard players set @s odm_action 0