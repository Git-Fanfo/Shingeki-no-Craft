clear @s
execute unless score state_sp colossal_vars matches 1 run function snc:give/item/colossal/atk_2 with storage minecraft:colossal
execute if score state_sp colossal_vars matches 1 run function snc:give/item/colossal/atk_4 with storage minecraft:colossal

item replace entity @s armor.head with carved_pumpkin{CustomModelData:16}
function snc:shifters/transfer/actions with storage minecraft:colossal