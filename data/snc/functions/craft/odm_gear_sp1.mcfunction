recipe take @s snc:odm_gear_sp1
advancement revoke @s only snc:craft/odm_gear_sp1
advancement grant @s only snc:utility/odm_gear_sp
execute if entity @s[advancements={snc:utility/gas_trigger_sp=true}] run advancement grant @s only snc:odm/odm_weapon_2
clear @s minecraft:knowledge_book
function snc:give/item/survey_corps/thunder/odm_sp1