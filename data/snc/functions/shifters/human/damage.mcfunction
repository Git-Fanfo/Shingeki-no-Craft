playsound minecraft:entity.warden.hurt master @a ~ ~ ~ 3 .7
playsound minecraft:entity.warden.hurt master @a ~ ~ ~ 3 .7
playsound minecraft:entity.magma_cube.hurt master @a ~ ~ ~ 3 .03
playsound minecraft:entity.magma_cube.hurt master @a ~ ~ ~ 3 .03
execute anchored eyes positioned ^ ^ ^ run particle minecraft:block{block_state:"redstone_block"} ~ ~-1 ~ .7 1 .7 1 300 force

execute on vehicle run scoreboard players add @s snc.knockback 1