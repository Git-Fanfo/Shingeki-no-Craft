function snc:player/drop_inv
tag @s add snc.handcuffs
function snc:interact/handcuffs/player/inv

execute positioned ~ ~1 ~ run function snc:interact/handcuffs/player/floor
execute at @s run function snc:interact/handcuffs/player/summon