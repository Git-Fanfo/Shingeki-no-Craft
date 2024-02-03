execute as @s[type=player] unless score @s shifter_vars matches 1.. run scoreboard players add @s earthquake 14
execute as @s[tag=hurtbox] run effect give @s water_breathing 1 0 true