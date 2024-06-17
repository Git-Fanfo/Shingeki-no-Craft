execute as @e[distance=.1..4] run function snc:player/odm/gyro/dash/damage

$item replace entity @s armor.head with carved_pumpkin[custom_model_data=$(custom_model_data),attribute_modifiers=[{"type": "generic.armor","slot":"head","uuid":[1131135009,-388873229,-1628344244,-755712755],"name":"generic.armor","amount": 15,"operation": "add_value"}],hide_tooltip={}] 1
item replace entity @s armor.chest with air
item replace entity @s armor.legs with air
item replace entity @s armor.feet with air

execute if predicate snc:odm/has_gas_trigger run item replace entity @s weapon.mainhand with air
execute if predicate snc:odm/has_odm run item replace entity @s weapon.offhand with air