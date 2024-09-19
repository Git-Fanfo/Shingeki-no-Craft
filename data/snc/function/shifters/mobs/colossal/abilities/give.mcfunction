## Drop current items before replace
function snc:shifters/human/inventory/save/shifter with storage minecraft:colossal
function snc:shifters/abilities/clear
function snc:shifters/human/inventory/spawn/shifter with storage minecraft:colossal
function snc:shifters/transfer/spaces

function snc:shifters/mobs/colossal/abilities/atk_1 with storage minecraft:colossal
execute if score $form colossal_vars matches 1 run function snc:shifters/mobs/colossal/abilities/atk_2 with storage minecraft:colossal
execute if score $form colossal_vars matches 0 run function snc:shifters/mobs/colossal/abilities/atk_4 with storage minecraft:colossal

execute if score state colossal_vars matches 12 run item replace entity @s[tag=transform] armor.head with carved_pumpkin[custom_model_data=11]
execute unless score state colossal_vars matches 12 run item replace entity @s[tag=transform] armor.head with carved_pumpkin[custom_model_data=16]

function snc:shifters/transfer/actions with storage minecraft:colossal