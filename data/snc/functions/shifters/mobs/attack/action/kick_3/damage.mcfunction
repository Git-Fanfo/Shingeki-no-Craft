##execute positioned ^2 ^-9 ^3 run function snc:logic/distance {"distance":5,"half_minus_zero_point_five":2}
particle block dirt ^2 ^-9 ^3 1.5 0 1.5 .3 200 force

$execute positioned ^2 ^-9 ^3 as @e[distance=..6] run damage @s $(dmg3) player_attack by @p[scores={attack_vars=1}]
execute positioned ^2 ^-9 ^3 as @e[tag=hurtbox,distance=..6] run effect give @s water_breathing 1 0 true
playsound aot.punch player @a ^2 ^-9 ^3 2 .8

# Start combo
scoreboard players set combo_kick attack_vars 3