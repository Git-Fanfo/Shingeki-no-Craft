recipe take @s snc:gas_trigger_sp2
advancement revoke @s only snc:craft/gas_trigger_sp2
advancement grant @s only snc:utility/gas_trigger_sp
execute if entity @s[advancements={snc:utility/odm_gear_sp=true}] run advancement grant @s only snc:odm/odm_weapon_2
clear @s minecraft:knowledge_book
function snc:give/item/survey_corps/thunder/trigger_sp2