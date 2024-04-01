clear @s carrot_on_a_stick[custom_data~{atk_shifter:1b}]
clear @s spyglass[custom_data~{atk_shifter:1b}]

function snc:shifters/mobs/cart/abilities/atk_3 with storage minecraft:cart
function snc:shifters/mobs/cart/abilities/atk_5 with storage minecraft:cart

execute if score $mask cart_vars matches 1 run item replace entity @s[tag=transform] armor.head with carved_pumpkin[custom_model_data=4]
execute if score $mask cart_vars matches 0 run item replace entity @s[tag=transform] armor.head with carved_pumpkin[custom_model_data=7]
function snc:shifters/transfer/actions with storage minecraft:cart