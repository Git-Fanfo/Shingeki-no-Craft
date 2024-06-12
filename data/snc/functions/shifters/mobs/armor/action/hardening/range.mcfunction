execute if entity @s[tag=snc.spear] as @e[type=!#snc:pivot,tag=!transform,distance=..6] at @s run function snc:shifters/mobs/armor/action/hardening/break
execute if entity @s[tag=snc.spear] as @e[type=!#snc:pivot,tag=transform,distance=..8] at @s run function snc:shifters/mobs/armor/action/hardening/break
execute if entity @s[tag=snc.canon] as @e[type=!#snc:pivot,distance=..9] run function snc:interact/canon/damage
return 1