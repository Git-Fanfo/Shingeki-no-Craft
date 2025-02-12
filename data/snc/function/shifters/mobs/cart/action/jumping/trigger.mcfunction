advancement revoke @s only snc:shifters/cart/jumping
# Restart moves
give @s quartz[minecraft:custom_data={atk_shifter:1b,1_titan:1b},item_model="item/blank"]
execute on vehicle unless predicate snc:is_riding run function snc:shifters/mobs/cart/action/jumping/init with storage minecraft:cart