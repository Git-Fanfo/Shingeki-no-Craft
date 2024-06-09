tag @s add snc.injured
$execute if score $trigger_transform config matches 1 if entity @s[tag=!transform] if score $energy $(shifter)_vars matches 720.. run scoreboard players remove $energy $(shifter)_vars 1440
$execute if score $trigger_transform config matches 1 if entity @s[tag=!transform] if score $energy $(shifter)_vars matches 720.. run effect give @s absorption 10 5 true
$execute if score $trigger_transform config matches 1 if entity @s[tag=!transform] if score $energy $(shifter)_vars matches 720.. run scoreboard players set $destroy_when_spawn $(shifter)_vars 0
$execute if score $trigger_transform config matches 1 if entity @s[tag=!transform] if score $energy $(shifter)_vars matches 720.. run tag @s remove snc.injured
$execute if score $trigger_transform config matches 1 if entity @s[tag=!transform] if score $energy $(shifter)_vars matches 720.. run function snc:shifters/human/transform {"shifter":$(shifter),"name":"$(name)"}
$execute if score $trigger_transform config matches 1 if entity @s[tag=!transform] run scoreboard players add $energy $(shifter)_vars 1440