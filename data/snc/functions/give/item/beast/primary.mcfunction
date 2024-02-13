clear @s carrot_on_a_stick{atk_shifter:1b}
clear @s spyglass{atk_shifter:1b}
function snc:give/item/beast/atk_5 with storage minecraft:beast
execute unless score $hold beast_vars matches 1 run function snc:give/item/beast/atk_1 with storage minecraft:beast
execute if score $hold beast_vars matches 1 run function snc:give/item/beast/atk_2 with storage minecraft:beast
execute if score $hold beast_vars matches 1 run function snc:give/item/beast/atk_3 with storage minecraft:beast
execute if score $hold beast_vars matches 1 run function snc:give/item/beast/atk_4 with storage minecraft:beast

item replace entity @s armor.head with carved_pumpkin{CustomModelData:60,atk_shifter:1b}
function snc:shifters/transfer/actions with storage minecraft:beast