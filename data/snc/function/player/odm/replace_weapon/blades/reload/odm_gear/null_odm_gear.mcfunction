execute if score @s snc.bullets matches 4 run item modify entity @s weapon.offhand snc:odm/blades/odm_gear/null/3
execute if score @s snc.bullets matches 3 run item modify entity @s weapon.offhand snc:odm/blades/odm_gear/null/2
execute if score @s snc.bullets matches 2 run item modify entity @s weapon.offhand snc:odm/blades/odm_gear/null/1
execute if score @s snc.bullets matches 1 run item modify entity @s weapon.offhand snc:odm/blades/odm_gear/null/0

playsound minecraft:item.armor.equip_chain player @s ~ ~ ~ 1 .7