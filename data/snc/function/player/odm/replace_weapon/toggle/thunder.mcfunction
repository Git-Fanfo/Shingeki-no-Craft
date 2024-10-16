# Save blades
execute store result score @s snc.bullets run \
    data get entity @s Inventory[{Slot:-106b}].components."minecraft:custom_data".snc_odm_blades

## Store Damage
execute if score @s odm_dmg_L matches 100 run item modify entity @s weapon.offhand snc:odm/blades/damage/gear/100
execute unless score @s odm_dmg_L matches 100 run function snc:player/odm/replace_weapon/blades/save_gear
execute if score @s odm_dmg_R matches 100 run item modify entity @s weapon.mainhand snc:odm/blades/damage/gas/100
execute unless score @s odm_dmg_R matches 100 run function snc:player/odm/replace_weapon/blades/save_gas

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