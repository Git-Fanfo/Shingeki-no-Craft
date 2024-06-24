tag @s add snc.injured
$execute if score $trigger_transform config matches 1 if entity @s[tag=!transform,tag=!snc.handcuffs] run scoreboard players remove $energy $(shifter)_vars 2500
$execute if score $trigger_transform config matches 1 if entity @s[tag=!transform,tag=!snc.handcuffs] if score $energy $(shifter)_vars matches 720.. run effect give @s absorption 10 5 true
$execute if score $trigger_transform config matches 1 if entity @s[tag=!transform,tag=!snc.handcuffs] if score $energy $(shifter)_vars matches 720.. run scoreboard players set $destroy_when_spawn $(shifter)_vars 0
$execute if score $trigger_transform config matches 1 if entity @s[tag=!transform,tag=!snc.handcuffs] if score $energy $(shifter)_vars matches 720.. run tag @s remove snc.injured
$execute if score $trigger_transform config matches 1 if entity @s[tag=!transform,tag=!snc.handcuffs] if score $energy $(shifter)_vars matches 720.. run scoreboard players set @s atk 266
$execute if score $trigger_transform config matches 1 if entity @s[tag=!transform,tag=!snc.handcuffs] run scoreboard players add $energy $(shifter)_vars 2500