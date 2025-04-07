$execute positioned ~ ~-3 ~ on vehicle rotated as @s positioned ^ ^ ^4 run function snc:shifters/combat/damage {"distance":6,"half_distance":3,"shifter":"attack","sound":"aot.punch","damage":$(damage_kick_2),"knockback":$(knockback_kick_2),"energy":$(energy_kick_2),"angle":$(angle_kick_2)}

execute on vehicle on controller run playsound minecraft:entity.illusioner.cast_spell player @s ~ ~ ~ 5 1
execute on vehicle on controller run function snc:shifters/mobs/attack/abilities/atk_3 with storage minecraft:attack