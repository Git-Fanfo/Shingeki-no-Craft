$execute positioned ~ ~4 ~ on vehicle rotated as @s positioned ^ ^-1 ^3 run function snc:shifters/combat/damage {"distance":6,"half_distance":3,"shifter":"attack","sound":"aot.punch","damage":$(damage_punch_3),"knockback":$(knockback_punch_3),"energy":$(energy_punch_3),"angle":$(angle_punch_3)}

execute on vehicle on passengers if entity @s[tag=transform] run playsound minecraft:entity.illusioner.cast_spell player @s ~ ~ ~ 5 1
execute on vehicle on passengers if entity @s[tag=transform] run playsound minecraft:block.bell.use player @s ~ ~ ~ 1 1.3