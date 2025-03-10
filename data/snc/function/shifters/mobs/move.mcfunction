# Set state to idle unless is sneaking
$execute unless score state $(shifter)_vars matches 2 run scoreboard players set state $(shifter)_vars 3
# Set state to walk
$execute on controller if predicate snc:player/keybinds/move run scoreboard players set state $(shifter)_vars 4
# Set state to Sprint
$execute on controller if predicate snc:player/keybinds/sprint run scoreboard players set #sprint $(shifter)_vars 1 
$execute on controller unless predicate snc:player/keybinds/forward run scoreboard players reset #sprint $(shifter)_vars
$execute if score #sprint $(shifter)_vars matches 1 run scoreboard players set state $(shifter)_vars 5
# Jump
$execute if score $air $(shifter)_vars matches 0 on controller if predicate snc:player/keybinds/jump on vehicle on passengers as @s[tag=aj.$(shifter).root] if entity @s[tag=!aj.$(shifter).animation.jump.playing] run function snc:shifters/mobs/$(shifter)/animate/jump

## Change speed
#$tellraw @p ["",{"text":"state: "},{"score":{"name":"state","objective":"$(shifter)_vars"}}]
$execute if score state $(shifter)_vars matches 4 run data merge entity @s {Fire:0,attributes:[{id:"minecraft:movement_speed",base:$(walk_speed)}]}
$execute if score state $(shifter)_vars matches 5 run data merge entity @s {Fire:0,attributes:[{id:"minecraft:movement_speed",base:$(run_speed)}]}