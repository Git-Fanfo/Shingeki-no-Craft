$scoreboard players set terrain $(shifter)_vars 0

$execute unless block ~ ~1 ~2 #snc:filter_pure run scoreboard players add terrain $(shifter)_vars 1
$execute unless block ~ ~1 ~-2 #snc:filter_pure run scoreboard players add terrain $(shifter)_vars 1
$execute unless block ~2 ~1 ~ #snc:filter_pure run scoreboard players add terrain $(shifter)_vars 1
$execute unless block ~-2 ~1 ~ #snc:filter_pure run scoreboard players add terrain $(shifter)_vars 1
$execute unless block ~3 ~1 ~3 #snc:filter_pure run scoreboard players add terrain $(shifter)_vars 1
$execute unless block ~-3 ~1 ~3 #snc:filter_pure run scoreboard players add terrain $(shifter)_vars 1
$execute unless block ~3 ~1 ~-3 #snc:filter_pure run scoreboard players add terrain $(shifter)_vars 1
$execute unless block ~-3 ~1 ~-3 #snc:filter_pure run scoreboard players add terrain $(shifter)_vars 1
$execute unless block ~ ~1 ~-4 #snc:filter_pure run scoreboard players add terrain $(shifter)_vars 1
$execute unless block ~ ~1 ~4 #snc:filter_pure run scoreboard players add terrain $(shifter)_vars 1
$execute unless block ~4 ~1 ~ #snc:filter_pure run scoreboard players add terrain $(shifter)_vars 1
$execute unless block ~-4 ~1 ~ #snc:filter_pure run scoreboard players add terrain $(shifter)_vars 1
$execute unless block ~5 ~1 ~5 #snc:filter_pure run scoreboard players add terrain $(shifter)_vars 1
$execute unless block ~5 ~1 ~-5 #snc:filter_pure run scoreboard players add terrain $(shifter)_vars 1
$execute unless block ~-5 ~1 ~5 #snc:filter_pure run scoreboard players add terrain $(shifter)_vars 1
$execute unless block ~-5 ~1 ~-5 #snc:filter_pure run scoreboard players add terrain $(shifter)_vars 1
## Narrow
$execute if score terrain $(shifter)_vars matches 2.. run \
    tellraw @s {"translate":"aot.narrow","color":"yellow"}

$execute \
    if score minutes $(shifter)_vars matches 0.. if score seconds $(shifter)_vars matches 0.. \
    unless score terrain $(shifter)_vars matches 2.. unless predicate snc:has_needle run \
        function snc:shifters/human/transform {"shifter":$(shifter)}
        

$execute \
    if score seconds $(shifter)_vars matches ..-1 \
    unless score minutes $(shifter)_vars matches 0 run \
    tellraw @s ["",{"text":"Titan ","bold":true,"color":"$(color)"},{"text":"not ready yet! ","bold":true,"color":"dark_red"},"Time remaining: ",{"text":"[","bold":true,"color":"light_purple"},{"score":{"name":"minutes","objective":"$(shifter)_vars"},"bold":true,"color":"yellow"},{"text":"-:","bold":true,"color":"yellow"},{"score":{"name":"seconds","objective":"$(shifter)_vars"},"bold":true,"color":"yellow"},{"text":"-","color":"yellow"},{"text":"]","color":"light_purple"}]

$execute \
    if score seconds $(shifter)_vars matches ..-1 \
    if score minutes $(shifter)_vars matches 0 run \
        tellraw @s ["",{"text":"Titan ","bold":true,"color":"$(color)"},{"text":"not ready yet! ","bold":true,"color":"dark_red"},"Time remaining: ",{"text":"[","bold":true,"color":"light_purple"},{"text":"-","bold":true,"color":"yellow"},{"score":{"name":"minutes","objective":"$(shifter)_vars"},"bold":true,"color":"yellow"},{"text":"-:","bold":true,"color":"yellow"},{"score":{"name":"seconds","objective":"$(shifter)_vars"},"bold":true,"color":"yellow"},{"text":"-","color":"yellow"},{"text":"]","color":"light_purple"}]