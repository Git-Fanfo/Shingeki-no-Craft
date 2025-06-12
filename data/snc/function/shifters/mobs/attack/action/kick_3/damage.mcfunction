$execute positioned ~ ~-5 ~ on vehicle rotated as @s positioned ^ ^ ^3 run function snc:shifters/combat/damage {"distance":8,"half_distance":4,"shifter":"attack","sound":"aot.punch","damage":$(damage_kick_3),"knockback":$(knockback_kick_3),"energy":$(energy_kick_3),"angle":$(angle_kick_3)}
execute on vehicle run attribute @s minecraft:scale base set 2.8
execute on vehicle on passengers run playsound minecraft:entity.illusioner.cast_spell player @s ~ ~ ~ 5 1

playsound minecraft:snc.shifters.jaw.smash player @a ~ ~ ~ 4 1
execute on vehicle at @s rotated ~ 0 run particle minecraft:block{block_state:"minecraft:dirt"} ^ ^ ^1 1.5 .5 1.5 1 100 force
execute on vehicle at @s rotated ~ 0 run particle minecraft:block{block_state:"minecraft:dirt"} ^ ^ ^3 .5 .5 .5 1 50 force
execute on vehicle at @s rotated ~ 0 run particle campfire_cosy_smoke ^ ^ ^-1 1 .5 1 .5 30 force