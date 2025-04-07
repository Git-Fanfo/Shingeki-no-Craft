$execute positioned ~ ~-5 ~ on vehicle rotated as @s positioned ^ ^ ^3 run function snc:shifters/combat/damage {"distance":8,"half_distance":4,"shifter":"attack","sound":"aot.punch","damage":$(damage_kick_3),"knockback":$(knockback_kick_3),"energy":$(energy_kick_3),"angle":$(angle_kick_3)}

execute on vehicle on controller run playsound minecraft:entity.illusioner.cast_spell player @s ~ ~ ~ 5 1
execute on vehicle on controller run playsound minecraft:entity.ravager.stunned player @s ~ ~ ~ 5 1