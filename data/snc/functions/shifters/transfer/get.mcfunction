$scoreboard players set $$(shifter).doesnt.exists shifter_vars 0
#$tellraw @a [{"selector":"@s"},{"text":" got "},{"translate":"aot.titan.$(shifter)","color": "$(color)"}]
effect clear @s[tag=!transform]
clear @s[tag=!transform]
effect give @s[tag=!transform] absorption 10 4 true
effect give @s[tag=!transform] slow_falling 3 0 true
effect give @s[tag=!transform] instant_health 1 10 true

## Get ID from "inherit"
execute if score @s shifter_vars matches ..-1 run scoreboard players operation @s shifter_vars *= #-1 constant
# ID from first shifter it gets
$execute unless score @s shifter_vars matches 1.. run scoreboard players set @s shifter_vars $(id)
$scoreboard players set @s $(shifter)_vars 1


## Set previous curse
$function snc:shifters/mobs/curse {"shifter" : $(shifter)}

# If its the first shifter
$execute unless score curse $(shifter)_vars matches 1.. if score curse config matches 0 run scoreboard players set curse $(shifter)_vars 48
$execute unless score curse $(shifter)_vars matches 1.. if score curse config matches 1 run scoreboard players set curse $(shifter)_vars 312
$execute unless score curse $(shifter)_vars matches 1.. if score curse config matches 2 run scoreboard players set curse $(shifter)_vars 1560

# Advancement
$advancement grant @s[tag=!first] only snc:shifters/$(shifter)