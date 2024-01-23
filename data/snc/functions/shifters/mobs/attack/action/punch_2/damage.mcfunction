#particle heart ^ ^-2 ^6 0 0 0 0 200 force
$execute positioned ^ ^2 ^5 as @e[distance=..5.5,tag=!attack] unless score @s attack_vars matches 1 run damage @s $(dmg2) player_attack by @p[scores={attack_vars=1}]
execute positioned ^ ^2 ^5 as @e[tag=hurtbox,distance=..5.5] run effect give @s water_breathing 1 0 true
playsound aot.punch player @a ~ ~2 ~ 2 .8