function snc:give/model/survey_corps/hood
function snc:give/model/survey_corps/cape
function snc:give/model/survey_corps/harness
function snc:give/model/survey_corps/boots

clear @s minecraft:warped_fungus_on_a_stick{odm_gear:1b} 1
clear @s minecraft:carrot_on_a_stick{trigger:1b} 1
function snc:player/odm/replace_weapon/get_blades/left/main
function snc:player/odm/replace_weapon/get_blades/right/main

tag @s remove spin

effect clear @s invisibility
scoreboard players set @s odm_action 0