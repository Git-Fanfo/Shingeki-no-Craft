$execute store result storage minecraft:$(shifter) fuse int 1 run scoreboard players add $explode $(shifter)_vars 5

## Summon Explosion
##$execute unless score $explode $(shifter)_vars matches 0 run particle heart ~ ~$(fuse) ~ 0 0 0 1 1 force
$execute unless score @s shifter_vars matches 2 unless score $explode $(shifter)_vars matches 0 run summon fireball ~ ~$(fuse) ~ {ExplosionPower:10b,Motion:[0.0d,-10.0d,0.0d],Item:{id:"minecraft:air",Count:1b},Passengers:[{id:"minecraft:armor_stand",NoGravity:0b,Invulnerable:1b,Invisible:1b,Tags:["shifter","snc.nuke"]}]}
$execute if score @s shifter_vars matches 2 unless score $explode $(shifter)_vars matches 0 run summon fireball ~ ~$(fuse) ~ {ExplosionPower:10b,Motion:[0.0d,-10.0d,0.0d],Item:{id:"minecraft:air",Count:1b},Passengers:[{id:"minecraft:armor_stand",NoGravity:0b,Invulnerable:1b,Invisible:1b,Tags:["shifter","snc.nuke","snc.rad"]}]}

$execute unless score $explode $(shifter)_vars matches $(explosion).. rotated ~15 0 positioned ^ ^ ^8 run function snc:shifters/human/explosion/boom with storage minecraft:$(shifter)
$execute if score $explode $(shifter)_vars matches $(explosion).. run scoreboard players set $explode $(shifter)_vars -5