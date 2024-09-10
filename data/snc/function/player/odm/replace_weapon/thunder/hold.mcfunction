execute store result score @s snc.bullets run \
    data get entity @s Inventory[{Slot:-106b}].components."minecraft:custom_data".snc_odm_spears

execute if score @s snc.bullets matches 1.. unless score @s snc.recoil matches 6.. \
    run scoreboard players add @s snc.recoil 1
execute if score @s snc.bullets matches 1.. if score @s snc.recoil matches 6.. \
    if block ~ ~-.5 ~ air if predicate snc:player/is_sneaking run \
        function snc:player/odm/replace_weapon/thunder/trigger

execute if score @s snc.bullets matches 6 run item modify entity @s weapon.mainhand snc:odm/thunder/gas_trigger_3
execute if score @s snc.bullets matches 4..5 run item modify entity @s weapon.mainhand snc:odm/thunder/gas_trigger_2
execute if score @s snc.bullets matches 2..3 run item modify entity @s weapon.mainhand snc:odm/thunder/gas_trigger_1
execute if score @s snc.bullets matches 0..1 run item modify entity @s weapon.mainhand snc:odm/thunder/gas_trigger_0

item modify entity @s weapon.mainhand snc:odm/thunder/lore_gas

execute if score @s snc.bullets matches 3.. run function snc:player/odm/replace_weapon/thunder/strenght/2
execute if score @s snc.bullets matches 5.. run function snc:player/odm/replace_weapon/thunder/strenght/3