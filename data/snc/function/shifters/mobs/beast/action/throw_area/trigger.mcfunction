advancement revoke @s only snc:shifters/beast/area
# Restart moves
give @s quartz[minecraft:custom_data={atk_shifter:1b,4_titan:1b},item_model="item/blank"]
execute if score state beast_vars matches 3..5 on vehicle on passengers if entity @s[tag=aj.beast.root] run function snc:shifters/mobs/beast/animate/throw_area