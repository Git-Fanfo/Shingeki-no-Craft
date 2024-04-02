function snc:shifters/abilities/clear

function snc:shifters/mobs/beast/abilities/atk_5 with storage minecraft:beast
execute unless score $hold beast_vars matches 1 run function snc:shifters/mobs/beast/abilities/atk_1 with storage minecraft:beast
execute if score $hold beast_vars matches 1 run function snc:shifters/mobs/beast/abilities/atk_2 with storage minecraft:beast
execute if score $hold beast_vars matches 1 run function snc:shifters/mobs/beast/abilities/atk_3 with storage minecraft:beast
execute if score $hold beast_vars matches 1 run function snc:shifters/mobs/beast/abilities/atk_4 with storage minecraft:beast

item replace entity @s[tag=transform] armor.head with carved_pumpkin[custom_model_data=60]
function snc:shifters/transfer/actions with storage minecraft:beast