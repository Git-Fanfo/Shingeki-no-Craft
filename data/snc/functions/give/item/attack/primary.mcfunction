clear @s carrot_on_a_stick{atk_shifter:1b}
function snc:give/item/attack/atk_1 with storage minecraft:attack
function snc:give/item/attack/atk_2 with storage minecraft:attack
function snc:give/item/attack/atk_3 with storage minecraft:attack
function snc:give/item/attack/atk_4 with storage minecraft:attack

item replace entity @s armor.head with carved_pumpkin{CustomModelData:28,atk_shifter:1b}
function snc:shifters/transfer/actions with storage minecraft:attack