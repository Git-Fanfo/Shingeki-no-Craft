advancement revoke @s only snc:shifters/beast/bite
# Restart moves
give @s quartz[minecraft:custom_data={atk_shifter:1b,4_titan:1b},item_model="item/blank"]
# Bite while Sneak
execute if score state beast_vars matches 2 on vehicle rotated ~ 0 positioned ^ ^-1.7 ^4 if entity @e[distance=..3,type=#snc:human,tag=!transform,predicate=!snc:shifters/beast/score] on passengers if entity @s[tag=aj.beast.root,tag=!aj.beast.animation.bite.playing] if function snc:shifters/mobs/beast/animate/consume run return -1

execute if score state beast_vars matches 13..14 run return -1
# Bite standing
execute unless score state beast_vars matches 2 on vehicle on passengers if entity @s[tag=aj.beast.root,tag=!aj.beast.animation.bite.playing] if function snc:shifters/mobs/beast/animate/bite run return -1
# Regular Bite
execute if score state beast_vars matches 2 run function snc:shifters/mobs/sight