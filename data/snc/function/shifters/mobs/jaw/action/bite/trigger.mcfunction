advancement revoke @s only snc:shifters/jaw/bite
# Restart moves
give @s quartz[minecraft:custom_data={atk_shifter:1b,6_titan:1b},item_model="item/blank"]

execute as 0000007f-0000-007f-0000-007f00000006 on passengers if entity @s[tag=aj.jaw.root] run function snc:shifters/mobs/jaw/animate/bite