execute unless entity @s[tag=wonder] anchored eyes run particle block{block_state:"redstone_block"} ^ ^-.5 ^ 0 0 0 1 20

execute if entity @s[tag=wonder] run particle minecraft:dust_color_transition{from_color:[0.66f, 0f, 0.098f],to_color:[0.33f, 1f, 1f], scale:4f} ~ ~ ~ 1 1 1 1 50 force

execute if entity @s[tag=wonder] run fill ~2 ~-2 ~2 ~-2 ~4 ~-2 air replace #snc:alex
execute if entity @s[tag=wonder] run playsound minecraft:block.lava.extinguish player @a ~ ~ ~ 2 2