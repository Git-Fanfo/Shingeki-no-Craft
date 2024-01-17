# Can spin
tag @s add spin

execute unless block ~ ~-1 ~ air run summon area_effect_cloud ^ ^.5 ^ {Particle:"explosion",NoGravity:1b,ReapplicationDelay:0,Radius:2f,Duration:15,Effects:[{Id:25b,Amplifier:32b,Duration:5,ShowParticles:0b}]}

function snc:player/odm/select_slow_falling

# push strenght
execute if score odm_legacy config matches 1 as @s[scores={odm_push=..1,odm_action=0}] run function snc:player/odm/creeper/1
execute if score odm_legacy config matches 1 as @s[scores={odm_push=2,odm_action=0}] run function snc:player/odm/creeper/2
execute if score odm_legacy config matches 1 as @s[scores={odm_push=3..8,odm_action=0}] run function snc:player/odm/creeper/3
execute if score odm_legacy config matches 1 as @s[scores={odm_push=9..,odm_action=0}] run function snc:player/odm/creeper/4

execute if score odm_legacy config matches 0 run summon snowball ^ ^1 ^1 {Item:{id:"minecraft:arrow",Count:1b,tag:{CustomModelData:1}},Tags:["not_mov","motion_pla"]}

#PETITION 2.. -> 1..
playsound minecraft:aot.impulse player @s ~ ~ ~ 1 1