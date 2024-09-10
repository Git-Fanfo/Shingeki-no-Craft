# Save blades
execute store result score @s snc.bullets run \
    data get entity @s Inventory[{Slot:-106b}].components."minecraft:custom_data".snc_odm_blades

execute if predicate snc:odm/has_odm_blade run scoreboard players add @s snc.bullets 1
execute if predicate snc:odm/has_gas_trigger_blade run scoreboard players add @s snc.bullets 1

execute if score @s snc.bullets matches 6 run item modify entity @s weapon.offhand snc:odm/blades/gear/full/6
execute if score @s snc.bullets matches 5 run item modify entity @s weapon.offhand snc:odm/blades/gear/full/5
execute if score @s snc.bullets matches 4 run item modify entity @s weapon.offhand snc:odm/blades/gear/full/4
execute if score @s snc.bullets matches 3 run item modify entity @s weapon.offhand snc:odm/blades/gear/full/3
execute if score @s snc.bullets matches 2 run item modify entity @s weapon.offhand snc:odm/blades/gear/full/2
execute if score @s snc.bullets matches 1 run item modify entity @s weapon.offhand snc:odm/blades/gear/full/1
execute if score @s snc.bullets matches 0 run item modify entity @s weapon.offhand snc:odm/blades/gear/full/0

# Give Thunder
execute store result score @s snc.bullets run \
    data get entity @s Inventory[{Slot:-106b}].components."minecraft:custom_data".snc_odm_spears

execute if score @s snc.bullets matches 6 run item modify entity @s weapon.offhand snc:odm/thunder/gear_6
execute if score @s snc.bullets matches 5 run item modify entity @s weapon.offhand snc:odm/thunder/gear_5
execute if score @s snc.bullets matches 4 run item modify entity @s weapon.offhand snc:odm/thunder/gear_4
execute if score @s snc.bullets matches 3 run item modify entity @s weapon.offhand snc:odm/thunder/gear_3
execute if score @s snc.bullets matches 2 run item modify entity @s weapon.offhand snc:odm/thunder/gear_2
execute if score @s snc.bullets matches 1 run item modify entity @s weapon.offhand snc:odm/thunder/gear_1
execute if score @s snc.bullets matches 0 run item modify entity @s weapon.offhand snc:odm/thunder/gear_0

return 1