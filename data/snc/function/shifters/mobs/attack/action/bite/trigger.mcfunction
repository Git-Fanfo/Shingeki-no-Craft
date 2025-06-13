advancement revoke @s only snc:shifters/attack/bite
# Restart moves
give @s quartz[minecraft:custom_data={atk_shifter:1b,3_titan:1b},item_model="item/blank"]
# Bite while Sneak
execute if score state attack_vars matches 2 on vehicle rotated ~ 0 positioned ^ ^-1.7 ^4 if entity @e[distance=..3,type=#snc:human,tag=!transform,predicate=!snc:shifters/attack/score] on passengers if entity @s[tag=aj.attack.root,tag=!aj.attack.animation.bite.playing] if function snc:shifters/mobs/attack/animate/consume run return -1
# Bite standing
execute unless score state attack_vars matches 2 on vehicle on passengers if entity @s[tag=aj.attack.root,tag=!aj.attack.animation.bite.playing] if function snc:shifters/mobs/attack/animate/bite run return -1
# Regular Bite
execute if score state attack_vars matches 2 on passengers if entity @s[tag=aj.attack.root,tag=!aj.attack.animation.consume.playing] run function snc:shifters/mobs/sight