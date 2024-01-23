#particle heart ^ ^-6 ^3 1 1 1 0 200 force
particle block dirt ^ ^-6.5 ^3 1.5 0 1.5 .3 200 force

$execute positioned ^ ^-6.5 ^3 as @e[distance=..5] run damage @s $(dmg3) player_attack by @p[scores={attack_vars=1}]
execute positioned ^ ^-6.5 ^3 as @e[tag=hurtbox,distance=..5] run effect give @s water_breathing 1 0 true
playsound aot.punch player @a ~ ~4 ~ 2 .8

# Start combo
scoreboard players set combo_kick attack_vars 3