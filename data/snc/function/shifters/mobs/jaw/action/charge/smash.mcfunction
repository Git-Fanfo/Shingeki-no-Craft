function snc:shifters/mobs/jaw/action/charge/damage with storage minecraft:jaw
playsound minecraft:snc.shifters.jaw.smash player @a ~ ~ ~ 4 1

execute rotated ~ 0 run particle minecraft:block{block_state:"minecraft:dirt"} ^ ^ ^1 1.5 .5 1.5 1 100 force
execute rotated ~ 0 run particle minecraft:block{block_state:"minecraft:dirt"} ^ ^ ^-3 .5 .5 .5 1 50 force
execute rotated ~ 0 run particle campfire_cosy_smoke ^ ^ ^-1 1 .5 1 .5 30 force