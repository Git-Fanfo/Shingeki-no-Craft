execute store result score @s snc.bullets run \
    data get entity @s Inventory[{Slot:-106b}].components."minecraft:custom_data".snc_odm_spears

execute if score @s snc.bullets matches 0 run item modify entity @s weapon.offhand snc:odm/thunder/gear_1
execute if score @s snc.bullets matches 1 run item modify entity @s weapon.offhand snc:odm/thunder/gear_2
execute if score @s snc.bullets matches 2 run item modify entity @s weapon.offhand snc:odm/thunder/gear_3
execute if score @s snc.bullets matches 3 run item modify entity @s weapon.offhand snc:odm/thunder/gear_4
execute if score @s snc.bullets matches 4 run item modify entity @s weapon.offhand snc:odm/thunder/gear_5
execute if score @s snc.bullets matches 5 run item modify entity @s weapon.offhand snc:odm/thunder/gear_6

execute unless score @s snc.bullets matches 6 run item modify entity @s weapon.offhand snc:odm/thunder/lore_gear
execute unless score @s snc.bullets matches 6 run playsound minecraft:block.decorated_pot.insert player @a ~ ~ ~ 1 .7
execute unless score @s snc.bullets matches 6 run clear @s *[custom_data~{snc_spear:1b}] 1

return 1