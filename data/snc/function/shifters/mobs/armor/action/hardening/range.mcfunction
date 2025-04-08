execute if entity @s[tag=snc.spear] positioned ~-3.5 ~-3.5 ~-3.5 as @e[dx=6,dy=6,dz=6,type=!#snc:pivot] run function snc:shifters/mobs/armor/action/hardening/break

execute if entity @s[tag=snc.canon] positioned ~-4.5 ~-4.5 ~-4.5 as @e[dx=8,dy=8,dz=8,type=!#snc:pivot] run function snc:interact/canon/damage
return 1