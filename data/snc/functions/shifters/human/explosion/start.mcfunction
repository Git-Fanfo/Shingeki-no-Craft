$scoreboard players set $explode $(shifter)_vars -5

$data merge storage minecraft:$(shifter) {fuse:0}
#,rate:0
$execute rotated 0 0 run function snc:shifters/human/explosion/boom with storage minecraft:$(shifter)
$execute rotated 30 0 run function snc:shifters/human/explosion/boom with storage minecraft:$(shifter)
$execute rotated 60 0 run function snc:shifters/human/explosion/boom with storage minecraft:$(shifter)
$execute rotated 90 0 run function snc:shifters/human/explosion/boom with storage minecraft:$(shifter)
$execute rotated 120 0 run function snc:shifters/human/explosion/boom with storage minecraft:$(shifter)
$execute rotated 150 0 run function snc:shifters/human/explosion/boom with storage minecraft:$(shifter)
$execute rotated 180 0 run function snc:shifters/human/explosion/boom with storage minecraft:$(shifter)
$execute rotated 210 0 run function snc:shifters/human/explosion/boom with storage minecraft:$(shifter)
$execute rotated 240 0 run function snc:shifters/human/explosion/boom with storage minecraft:$(shifter)
$execute rotated 270 0 run function snc:shifters/human/explosion/boom with storage minecraft:$(shifter)
$execute rotated 300 0 run function snc:shifters/human/explosion/boom with storage minecraft:$(shifter)
$execute rotated 330 0 run function snc:shifters/human/explosion/boom with storage minecraft:$(shifter)

execute if score @s shifter_vars matches 2 run function snc:shifters/mobs/colossal/action/explosion/spawn
execute as @a[distance=..100] run function snc:shifters/human/explosion/flash