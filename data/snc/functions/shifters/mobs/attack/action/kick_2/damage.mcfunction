#particle heart ^ ^-7 ^6 1 1 1 0 200 force
$execute positioned ^ ^-3 ^6 as @e[distance=..5] run damage @s $(dmg3) player_attack by @p[scores={attack_vars=1}]
execute positioned ^ ^-3 ^6 as @e[tag=hurtbox,distance=..5] run effect give @s water_breathing 1 0 true
playsound aot.punch player @a ~ ~4 ~ 2 .8