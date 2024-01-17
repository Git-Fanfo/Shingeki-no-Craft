execute unless entity @s[tag=wonder] run particle minecraft:block minecraft:redstone_block ^ ^ ^ 0 0 0 1 20
execute if entity @s[tag=wonder] run particle dust_color_transition 0.66 0 0.66 5 0.33 1 1 ~ ~ ~ 1 1 1 1 50 force
execute if entity @s[tag=wonder] run fill ~2 ~-2 ~2 ~-2 ~4 ~-2 air replace #snc:alex
execute if entity @s[tag=wonder] run playsound minecraft:block.lava.extinguish player @a ~ ~ ~ 2 2