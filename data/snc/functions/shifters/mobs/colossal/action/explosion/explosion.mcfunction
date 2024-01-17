advancement grant @s only snc:nuke
#function snc:shifters/mobs/colossal/action/explosion/check_terrain

# Generate sctructure explosion
execute if score destroy config matches 1 run setblock ~ ~-2 ~ structure_block{posX:-22,posY:-6,posZ:-21,mode:"LOAD",powered:0b,name:"snc:crater"}
execute if score destroy config matches 1 run setblock ~ ~-3 ~ redstone_block

# If massive explosion is on
function snc:shifters/mobs/colossal/spawn/cloud

gamerule mobGriefing true
execute if score destroy config matches 1 if score col_exp config matches 1.. run function snc:shifters/mobs/colossal/action/explosion/big
execute if score destroy config matches 1 if score col_exp config matches 2.. run function snc:shifters/mobs/colossal/action/explosion/massive

## DAMAGE
# execute as @e[tag=!colossal,tag=!transform,distance=..500] run damage @s 500 explosion

# Down time
scoreboard players set minutes colossal_vars 3

## Push players
playsound minecraft:aot.huge_explosion player @a ~ ~ ~ 5 .9
playsound minecraft:aot.flash player @a ~ ~ ~ 5 .98
execute as @e[type=!item,tag=!colossal,distance=.5..100] run function snc:shifters/mobs/colossal/action/explosion/damage
#execute as @e[type=!item,distance=.5..100] if entity @s[type=!fireball] run function snc:shifters/mobs/colossal/action/explosion/select_push

function snc:shifters/mobs/colossal/action/explosion/rocks
#particle minecraft:campfire_signal_smoke ~ ~3 ~ 7 3 7 1 2000 force
#particle minecraft:lava ~ ~3 ~ 7 5 7 2 1000 force
#particle minecraft:flame ~ ~3 ~ 7 3 7 2 1000 force