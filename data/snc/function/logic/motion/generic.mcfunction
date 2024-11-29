$execute store result score #motion_x0 $(score) run data get entity @s Pos[0] 1000
$execute store result score #motion_y0 $(score) run data get entity @s Pos[1] 1000
$execute store result score #motion_z0 $(score) run data get entity @s Pos[2] 1000

$execute positioned ^ ^ ^.1 summon snowball run function snc:logic/motion/macro {"score":$(score)}

$scoreboard players operation #motion_x $(score) -= #motion_x0 $(score)
$scoreboard players operation #motion_y $(score) -= #motion_y0 $(score)
$scoreboard players operation #motion_z $(score) -= #motion_z0 $(score)

data merge entity @s {NoGravity:1b}
$execute store result entity @s Motion[0] double $(strength) run scoreboard players get #motion_x $(score)
$execute store result entity @s Motion[1] double $(strength) run scoreboard players get #motion_y $(score)
$execute store result entity @s Motion[2] double $(strength) run scoreboard players get #motion_z $(score)
data merge entity @s {NoGravity:0b}

$scoreboard players reset #motion_x $(score)
$scoreboard players reset #motion_y $(score)
$scoreboard players reset #motion_z $(score)
$scoreboard players reset #motion_x0 $(score)
$scoreboard players reset #motion_y0 $(score)
$scoreboard players reset #motion_z0 $(score)

