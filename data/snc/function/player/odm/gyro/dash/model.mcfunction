execute as @e[distance=.01..4] run function snc:player/odm/gyro/dash/damage

$item modify entity @s armor.head snc:odm/spin/hood/$(model)
item modify entity @s armor.chest snc:odm/spin/blank
item modify entity @s armor.legs snc:odm/spin/blank
item modify entity @s armor.feet snc:odm/spin/blank

execute if predicate snc:odm/has_gas_trigger run item modify entity @s weapon.mainhand snc:odm/spin/blank_trigger
execute if predicate snc:odm/has_odm run item modify entity @s weapon.offhand snc:odm/spin/blank_gear