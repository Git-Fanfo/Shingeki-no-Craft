$execute store result score $(UUID) snc.mot_x0 run data get entity @s Pos[0] 1000
$execute store result score $(UUID) snc.mot_y0 run data get entity @s Pos[1] 1000
$execute store result score $(UUID) snc.mot_z0 run data get entity @s Pos[2] 1000

$execute positioned ^ ^ ^.1 summon snowball run function snc:logic/motion/self/macro {"UUID":$(UUID)}

$scoreboard players operation $(UUID) snc.mot_x1 -= $(UUID) snc.mot_x0
$scoreboard players operation $(UUID) snc.mot_y1 -= $(UUID) snc.mot_y0
$scoreboard players operation $(UUID) snc.mot_z1 -= $(UUID) snc.mot_z0

$execute store result entity @s Motion[0] double 0.02 run scoreboard players get $(UUID) snc.mot_x1
$execute store result entity @s Motion[1] double 0.02 run scoreboard players get $(UUID) snc.mot_y1
$execute store result entity @s Motion[2] double 0.02 run scoreboard players get $(UUID) snc.mot_z1

$scoreboard players reset $(UUID) snc.mot_x0
$scoreboard players reset $(UUID) snc.mot_y0
$scoreboard players reset $(UUID) snc.mot_z0
$scoreboard players reset $(UUID) snc.mot_x1
$scoreboard players reset $(UUID) snc.mot_y1
$scoreboard players reset $(UUID) snc.mot_z1