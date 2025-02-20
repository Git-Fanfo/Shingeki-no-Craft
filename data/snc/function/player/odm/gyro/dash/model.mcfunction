execute as @e[distance=.01..4] run function snc:player/odm/gyro/dash/damage

$item modify entity @s armor.head snc:odm/spin/hood/$(model)
item modify entity @s armor.chest snc:odm/spin/cape/blank
item modify entity @s armor.legs snc:odm/spin/harness/blank
item modify entity @s armor.feet snc:odm/spin/boots/blank

execute if predicate snc:odm/has_gas_trigger run item modify entity @s weapon.mainhand snc:odm/spin/trigger/blank
execute if predicate snc:odm/has_odm run item modify entity @s weapon.offhand snc:odm/spin/gear/blank