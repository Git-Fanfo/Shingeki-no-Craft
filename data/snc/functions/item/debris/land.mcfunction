tag @s remove debris
playsound minecraft:aot.rock_smash player @a ~ ~ ~ 5
particle minecraft:block{block_state:"stone"} ~ ~1 ~ .8 1 .8 1 200 force
setblock ~ ~ ~ minecraft:andesite_stairs[facing=south]
setblock ~ ~-1 ~1 minecraft:andesite_stairs[facing=north,half=top]
setblock ~ ~-1 ~ minecraft:stone