$function snc:shifters/mobs/$(shifter)/abilities/give

$execute as 0000007f-0000-007f-0000-007f0000000$(id) on passengers if entity @s[tag=aj.$(shifter).root,tag=!aj.$(shifter).animation.roar.playing] run function snc:shifters/mobs/$(shifter)/animate/roar

$execute if score @s koniglich matches 1 as @e[tag=snc.infct, distance=..384] at @s run function snc:player/titan/infect/trigger {"team":$(shifter)}