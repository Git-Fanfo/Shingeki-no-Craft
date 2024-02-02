damage @s 6 player_attack by @s
playsound minecraft:entity.player.hurt_sweet_berry_bush player @s ~ ~ ~ 1 .9

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

$execute if score $energy $(shifter)_vars matches 720.. unless score terrain $(shifter)_vars matches 2.. run function snc:shifters/human/transform {"shifter":$(shifter)}