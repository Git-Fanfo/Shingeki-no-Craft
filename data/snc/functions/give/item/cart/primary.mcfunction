clear @s carrot_on_a_stick{atk_shifter:1b}
clear @s spyglass{atk_shifter:1b}

function snc:give/item/cart/atk_3 with storage minecraft:cart
function snc:give/item/cart/atk_5 with storage minecraft:cart

execute if score $mask cart_vars matches 1 run item replace entity @s armor.head with carved_pumpkin{CustomModelData:4,atk_shifter:1b}
execute if score $mask cart_vars matches 0 run item replace entity @s armor.head with carved_pumpkin{CustomModelData:7,atk_shifter:1b}
function snc:shifters/transfer/actions with storage minecraft:cart