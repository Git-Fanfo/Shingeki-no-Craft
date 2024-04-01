#item replace entity @s container.0 from entity @p container.1
#damage @s 0 minecraft:out_of_world
# data merge entity @s {Invulnerable:1b,Fixed:1b}
#kill @s

tag @s remove snc.item.drop
item replace entity @s container.0 from entity @p container.1
#damage @s 0 minecraft:out_of_world
# data merge entity @s {Invulnerable:1b,Fixed:1b}
#kill @s