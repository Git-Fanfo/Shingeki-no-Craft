advancement revoke @s only snc:shifters/jaw/slash
# Restart moves
give @s quartz[minecraft:custom_data={atk_shifter:1b,6_titan:1b},item_model="item/blank"]

execute on vehicle on passengers if entity @s[tag=aj.jaw.root,tag=!aj.jaw.animation.slash.playing] run function snc:shifters/mobs/jaw/animate/slash