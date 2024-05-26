execute if entity @s[tag=snc.spear] as @e[type=!#snc:pivot,tag=!transform,distance=..6] at @s run function snc:shifters/mobs/armor/action/hardening/break
execute if entity @s[tag=snc.spear] as @e[type=!#snc:pivot,tag=transform,distance=..8] at @s run function snc:shifters/mobs/armor/action/hardening/break
execute if entity @s[tag=snc.canon] as @e[type=!#snc:pivot,distance=..6] run effect give @s[tag=hurtbox] water_breathing 1 0 true
execute if entity @s[tag=snc.canon] as @e[type=!#snc:pivot,distance=..6] run damage @s[tag=!hurtbox] 16 fireworks
return 0