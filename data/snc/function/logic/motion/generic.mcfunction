execute on vehicle on vehicle run kill
$execute store result score #snc.mot_x0 $(score) run data get entity @s Pos[0] 1000
$execute store result score #snc.mot_y0 $(score) run data get entity @s Pos[1] 1000
$execute store result score #snc.mot_z0 $(score) run data get entity @s Pos[2] 1000

$execute positioned ^ ^ ^.1 summon snowball run function snc:logic/motion/macro {"score":$(score)}

$scoreboard players operation #motion_x $(score) -= #snc.mot_x0 $(score)
$scoreboard players operation #motion_y $(score) -= #snc.mot_y0 $(score)
$scoreboard players operation #motion_z $(score) -= #snc.mot_z0 $(score)

$execute store result storage snc:tnt MotionX double $(strength) run scoreboard players get #motion_x $(score)
$execute store result storage snc:tnt MotionY double $(strength) run scoreboard players get #motion_y $(score)
$execute store result storage snc:tnt MotionZ double $(strength) run scoreboard players get #motion_z $(score)
function snc:logic/motion/tnt with storage snc:tnt

$scoreboard players reset #motion_x $(score)
$scoreboard players reset #motion_y $(score)
$scoreboard players reset #motion_z $(score)
$scoreboard players reset #snc.mot_x0 $(score)
$scoreboard players reset #snc.mot_y0 $(score)
$scoreboard players reset #snc.mot_z0 $(score)