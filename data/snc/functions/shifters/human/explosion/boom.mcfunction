execute store result storage minecraft:attack fuse int 1 run scoreboard players add $explode attack_vars 5
#execute store result storage minecraft:attack rate int 1 run scoreboard players add $exp_rate attack_vars 1

#$execute unless score $explode attack_vars matches 0 run summon tnt ~ ~ ~ {fuse:$(fuse),block_state:{Name:"minecraft:air"},Passengers:[{id:"minecraft:armor_stand",NoGravity:0b,Invulnerable:1b,Invisible:1b,Tags:["colossal","shifter"]}]}
##$execute unless score $explode attack_vars matches 0 run particle heart ~ ~$(fuse) ~ 0 0 0 1 1 force
$execute unless score $explode attack_vars matches 0 run summon fireball ~ ~$(fuse) ~ {ExplosionPower:10b,Motion:[0.0d,-10.0d,0.0d],Item:{id:"minecraft:air",Count:1b},Passengers:[{id:"minecraft:armor_stand",NoGravity:0b,Invulnerable:1b,Invisible:1b,Tags:["colossal","shifter"]}]}
#tellraw @p ["",{"text":"$explode: "},{"score":{"name":"$explode","objective":"attack_vars"}}]

#execute unless score $explode attack_vars matches 47.. run function snc:shifters/human/explosion/rate with storage minecraft:attack
execute unless score $explode attack_vars matches 47.. rotated ~15 0 positioned ^ ^ ^8 run function snc:shifters/human/explosion/boom with storage minecraft:attack
#execute if score $explode attack_vars matches 47.. run scoreboard players set $exp_rate attack_vars 2
execute if score $explode attack_vars matches 47.. run scoreboard players set $explode attack_vars -5