execute positioned ~2 ~2 ~2 run damage @s[dx=4,dy=4,dz=4] 18 fireworks
# Titans
execute positioned ~1 ~1 ~1 run effect give @s[dx=6,dy=6,dz=6,tag=hurtbox] water_breathing 1 0 true
# Shifters
execute if entity @s[tag=shifter] on passengers run function snc:interact/canon/damage
execute if entity @s[tag=transform] run damage @s 80 fireworks
# Players
scoreboard players add @s[type=player] earthquake 8
execute positioned ~2 ~2 ~2 run scoreboard players add @s[type=player,dx=4,dy=4,dz=4] earthquake 4
