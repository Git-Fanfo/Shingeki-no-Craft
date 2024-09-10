playsound minecraft:item.armor.equip_netherite player @s ~ ~ ~ 1 1
execute if predicate snc:odm/mode/1 if function snc:player/odm/replace_weapon/toggle/thunder run return 1
execute if predicate snc:odm/mode/2 if function snc:player/odm/replace_weapon/toggle/blades run return 1