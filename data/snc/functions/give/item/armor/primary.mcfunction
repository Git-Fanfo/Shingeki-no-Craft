clear @s carrot_on_a_stick{atk_shifter:1b}
clear @s spyglass{atk_shifter:1b}
function snc:give/item/armor/atk_1 with storage minecraft:armor
function snc:give/item/armor/atk_2 with storage minecraft:armor
#function snc:give/item/attack/atk_4 with storage minecraft:attack

item replace entity @s armor.head with carved_pumpkin{CustomModelData:63}
function snc:shifters/transfer/actions with storage minecraft:armor