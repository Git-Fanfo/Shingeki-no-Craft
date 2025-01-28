$function snc:shifters/mobs/$(shifter)/abilities/give
$scoreboard players set state $(shifter)_vars 8
$execute if score @s koniglich matches 1 as @e[tag=snc.infct] run function snc:player/titan/infect/trigger {"team":$(shifter)}