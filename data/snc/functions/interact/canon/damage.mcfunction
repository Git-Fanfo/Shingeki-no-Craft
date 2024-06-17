effect give @s[tag=hurtbox,distance=..8] water_breathing 1 0 true
execute if entity @s[distance=..6] run damage @s 18 fireworks
execute if entity @s[tag=transform] run damage @s 75 fireworks

scoreboard players add @s[type=player,distance=..8] earthquake 6
scoreboard players add @s[type=player,distance=..6] earthquake 2