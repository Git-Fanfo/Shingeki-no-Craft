##execute positioned ^2 ^-4 ^6 run function snc:logic/distance {"distance":5,"half_minus_zero_point_five":2}
$execute positioned ^2 ^-4 ^6 as @e[distance=..5] run damage @s $(dmg3) player_attack by @p[scores={attack_vars=1}]
execute positioned ^2 ^-4 ^6 as @e[tag=hurtbox,distance=..5] run effect give @s water_breathing 1 0 true
playsound aot.punch player @a ^2 ^-4 ^6 .8