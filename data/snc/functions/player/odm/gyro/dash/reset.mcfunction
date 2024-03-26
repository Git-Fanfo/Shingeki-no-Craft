function snc:api/item_replace/survey_corps/uniform/hood {"slot":"armor.head"}
function snc:api/item_replace/survey_corps/uniform/cape {"slot":"armor.chest"}
function snc:api/item_replace/survey_corps/uniform/harness {"slot":"armor.legs"}
function snc:api/item_replace/survey_corps/uniform/boots {"slot":"armor.feet"}

# If busy then give
execute if items entity @s weapon.mainhand * run function snc:api/give/survey_corps/odm/gas_trigger_blade
execute if items entity @s weapon.offhand * run function snc:api/give/survey_corps/odm/odm_gear_blade
# Else if free then replace
execute unless items entity @s weapon.mainhand * run function snc:api/item_replace/survey_corps/odm/gas_trigger_blade {"slot":"weapon.mainhand"}
execute unless items entity @s weapon.offhand * run function snc:api/item_replace/survey_corps/odm/odm_gear_blade {"slot":"weapon.offhand"}

execute if predicate snc:odm/has_gas_trigger run function snc:player/odm/replace_weapon/blades/durability {"side":"R", "hand":"main"}
execute if predicate snc:odm/has_odm run function snc:player/odm/replace_weapon/blades/durability {"side":"L", "hand":"off"}

tag @s remove spin

effect clear @s invisibility
scoreboard players set @s odm_action 0