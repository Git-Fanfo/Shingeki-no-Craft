function snc:shifters/abilities/clear

function snc:shifters/mobs/armor/abilities/atk_1 with storage minecraft:armor
function snc:shifters/mobs/armor/abilities/atk_2 with storage minecraft:armor

item replace entity @s[tag=transform] armor.head with carved_pumpkin[custom_model_data=63]
function snc:shifters/transfer/actions with storage minecraft:armor