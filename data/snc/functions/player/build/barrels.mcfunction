fill ^1 ^-1 ^1 ^-1 ^1 ^3 air
playsound minecraft:block.anvil.use player @a ~ ~ ~ 1 .8
particle cloud ^ ^ ^2 1 1 1 .05 100 force
execute positioned ^ ^ ^2 run function snc:give/item/cart/barrels