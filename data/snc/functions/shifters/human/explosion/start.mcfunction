scoreboard players set $explode attack_vars -5
#scoreboard players set $exp_rate attack_vars 2

data merge storage minecraft:attack {fuse:0}
#,rate:0
execute rotated 0 0 run function snc:shifters/human/explosion/boom with storage minecraft:attack
execute rotated 30 0 run function snc:shifters/human/explosion/boom with storage minecraft:attack
execute rotated 60 0 run function snc:shifters/human/explosion/boom with storage minecraft:attack
execute rotated 90 0 run function snc:shifters/human/explosion/boom with storage minecraft:attack
execute rotated 120 0 run function snc:shifters/human/explosion/boom with storage minecraft:attack
execute rotated 150 0 run function snc:shifters/human/explosion/boom with storage minecraft:attack
execute rotated 180 0 run function snc:shifters/human/explosion/boom with storage minecraft:attack
execute rotated 210 0 run function snc:shifters/human/explosion/boom with storage minecraft:attack
execute rotated 240 0 run function snc:shifters/human/explosion/boom with storage minecraft:attack
execute rotated 270 0 run function snc:shifters/human/explosion/boom with storage minecraft:attack
execute rotated 300 0 run function snc:shifters/human/explosion/boom with storage minecraft:attack
execute rotated 330 0 run function snc:shifters/human/explosion/boom with storage minecraft:attack