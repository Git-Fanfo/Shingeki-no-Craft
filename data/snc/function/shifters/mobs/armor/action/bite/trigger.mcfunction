advancement revoke @s only snc:shifters/armor/bite
# Restart moves
give @s quartz[minecraft:custom_data={atk_shifter:1b,5_titan:1b},item_model="item/blank"]
# Bite while Sneak
execute if score state armor_vars matches 2 on vehicle rotated ~ 0 positioned ^ ^-1.7 ^4 if entity @e[distance=..3,type=#snc:human,tag=!transform,predicate=!snc:shifters/armor/score] on passengers if entity @s[tag=aj.armor.root,tag=!aj.armor.animation.consume.playing] if function snc:shifters/mobs/armor/animate/consume run return -1
# Bite standing
execute unless score state armor_vars matches 2 on vehicle on passengers if entity @s[tag=aj.armor.root,tag=!aj.armor.animation.bite.playing] if function snc:shifters/mobs/armor/animate/bite run return -1
# Regular Bite
execute on passengers if entity @s[tag=aj.armor.root,tag=!aj.armor.animation.consume.playing] if score state armor_vars matches 2 run function snc:shifters/mobs/sight