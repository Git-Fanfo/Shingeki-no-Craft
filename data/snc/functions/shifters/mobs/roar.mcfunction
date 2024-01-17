$function snc:give/item/$(shifter)/primary
$execute unless score consume $(shifter)_vars matches 0.. run scoreboard players set consume $(shifter)_vars 220
$execute if score @s koniglich matches 1 as @e[tag=snc.infct] run function snc:player/titan/infect/trigger {"team":$(shifter)}