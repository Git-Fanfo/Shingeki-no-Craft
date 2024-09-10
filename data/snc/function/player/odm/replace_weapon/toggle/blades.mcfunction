# Not required to save the Spears since the number of spears loaded corresponds to the storaged
# Give blades
execute store result score @s snc.bullets run \
    data get entity @s Inventory[{Slot:-106b}].components."minecraft:custom_data".snc_odm_blades

execute if score @s snc.bullets matches 6 run item modify entity @s weapon.offhand snc:odm/blades/gear/full/4
execute if score @s snc.bullets matches 6 run item modify entity @s weapon.mainhand snc:odm/blades/gas_trigger_reload
execute if score @s snc.bullets matches 5 run item modify entity @s weapon.offhand snc:odm/blades/gear/full/3
execute if score @s snc.bullets matches 5 run item modify entity @s weapon.mainhand snc:odm/blades/gas_trigger_reload

execute if score @s snc.bullets matches 4 run item modify entity @s weapon.offhand snc:odm/blades/gear/full/2
execute if score @s snc.bullets matches 4 run item modify entity @s weapon.mainhand snc:odm/blades/gas_trigger_reload
execute if score @s snc.bullets matches 3 run item modify entity @s weapon.offhand snc:odm/blades/gear/full/1
execute if score @s snc.bullets matches 3 run item modify entity @s weapon.mainhand snc:odm/blades/gas_trigger_reload
execute if score @s snc.bullets matches 2 run item modify entity @s weapon.offhand snc:odm/blades/gear/full/0
execute if score @s snc.bullets matches 2 run item modify entity @s weapon.mainhand snc:odm/blades/gas_trigger_reload
execute if score @s snc.bullets matches 1 run item modify entity @s weapon.offhand snc:odm/blades/gear_empty
execute if score @s snc.bullets matches 1 run item modify entity @s weapon.mainhand snc:odm/blades/gas_trigger_reload
execute if score @s snc.bullets matches 0 run item modify entity @s weapon.offhand snc:odm/blades/gear_empty
execute if score @s snc.bullets matches 0 run item modify entity @s weapon.mainhand snc:odm/blades/gas_trigger_empty

return 1