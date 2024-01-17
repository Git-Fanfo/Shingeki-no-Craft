execute as @s[type=player] unless score @s attack_vars matches 1 unless score @s earthquake matches 16.. run scoreboard players add @s earthquake 6
damage @s[distance=..3] 6 player_attack by @p[scores={attack_vars=1}]
effect give @s[distance=..3,tag=hurtbox] water_breathing 1 0 true