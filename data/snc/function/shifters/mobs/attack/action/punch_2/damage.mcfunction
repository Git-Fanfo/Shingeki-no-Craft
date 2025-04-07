$execute positioned ~ ~2 ~ on vehicle rotated as @s positioned ^1 ^ ^5 run function snc:shifters/combat/damage {"distance":4,"half_distance":2,"shifter":"attack","sound":"aot.punch","damage":$(damage_punch_2),"knockback":$(knockback_punch_2),"energy":$(energy_punch_2),"angle":$(angle_punch_2)}

execute on vehicle on controller run playsound minecraft:entity.illusioner.cast_spell player @s ~ ~ ~ 5 1
execute on vehicle on controller run function snc:shifters/mobs/attack/abilities/atk_2 with storage minecraft:attack