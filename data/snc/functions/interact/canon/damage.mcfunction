effect give @s[tag=hurtbox,distance=..8] water_breathing 1 0 true
damage @s 18 fireworks
execute if entity @s[tag=transform] run damage @s 22 out_of_world by @s

scoreboard players add @s[type=player,distance=..8] earthquake 6
scoreboard players add @s[type=player,distance=..6] earthquake 2