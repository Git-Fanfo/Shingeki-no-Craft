effect give @s resistance 30 3
execute if score @s shifter_vars matches 1 run item replace entity @s armor.head with minecraft:carved_pumpkin{CustomModelData:4}
execute unless score @s shifter_vars matches 1 run function snc:shifters/mobs/cart/action/metal/select_action