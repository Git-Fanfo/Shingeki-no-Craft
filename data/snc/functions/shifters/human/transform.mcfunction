effect give @s levitation 3 1 true
execute if predicate snc:riding/sticky run function snc:logic/sticky/kill

## Save inv
$function snc:shifters/human/inventory/save {"shifter":$(shifter)}

clear @s
tag @s add transform
tag @s remove first
$advancement grant @s only snc:shifters/$(shifter)
effect give @s absorption 20 8 true
$scoreboard players set health $(shifter)_vars 20

## Explosion
$execute if score $destroy_when_spawn $(shifter)_vars matches 1 run scoreboard players remove $energy $(shifter)_vars 700
$execute if score $destroy_when_spawn $(shifter)_vars matches 1 run summon fireball ~ ~ ~ {ExplosionPower:10b,Motion:[0.0d,-10.0d,0.0d],Item:{id:"minecraft:air",Count:1b},Passengers:[{id:"minecraft:armor_stand",NoGravity:0b,Invulnerable:1b,Invisible:1b,Tags:["colossal","shifter"]}]}
$execute if score $destroy_when_spawn $(shifter)_vars matches 1 run summon fireball ~ ~5 ~ {ExplosionPower:10b,Motion:[0.0d,-10.0d,0.0d],Item:{id:"minecraft:air",Count:1b},Passengers:[{id:"minecraft:armor_stand",NoGravity:0b,Invulnerable:1b,Invisible:1b,Tags:["colossal","shifter"]}]}