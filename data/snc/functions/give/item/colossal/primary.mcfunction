clear @s carrot_on_a_stick{atk_shifter:1b}
function snc:give/item/colossal/atk_1 with storage minecraft:colossal
execute if score $form colossal_vars matches 1 run function snc:give/item/colossal/atk_2 with storage minecraft:colossal
execute if score $form colossal_vars matches 0 run function snc:give/item/colossal/atk_4 with storage minecraft:colossal

execute if score state colossal_vars matches 12 run item replace entity @s armor.head with carved_pumpkin{CustomModelData:11,atk_shifter:1b}
execute unless score state colossal_vars matches 12 run item replace entity @s armor.head with carved_pumpkin{CustomModelData:16,atk_shifter:1b}
function snc:shifters/transfer/actions with storage minecraft:colossal