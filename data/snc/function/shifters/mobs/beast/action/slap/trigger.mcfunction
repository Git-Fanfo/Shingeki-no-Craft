advancement revoke @s only snc:shifters/beast/slap
execute if predicate snc:chance/20 run playsound minecraft:aot.shifters.attack.grunt player @a ~ ~ ~ 5 0.4
# Restart moves
give @s quartz[minecraft:custom_data={atk_shifter:1b,4_titan:1b},item_model="item/blank"]

execute if score state beast_vars matches 13..14 run return -1
execute on vehicle on passengers if entity @s[tag=aj.beast.root,tag=!aj.beast.animation.slap.playing] run function snc:shifters/mobs/beast/animate/slap