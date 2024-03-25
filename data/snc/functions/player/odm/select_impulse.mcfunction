# Can spin
tag @s add spin

# Old haha
## execute unless block ~ ~-1 ~ air run summon area_effect_cloud ^ ^.5 ^ {Particle:"explosion",NoGravity:1b,ReapplicationDelay:0,Radius:2f,Duration:15,Effects:[{Id:25b,Amplifier:32b,Duration:5,ShowParticles:0b}]}
function snc:player/odm/select_slow_falling

# push strenght
#execute if score odm_legacy config matches 1 as @s[scores={odm_push=..1,odm_action=0}] run scoreboard players set $strength delta.api.launch 10000
#execute if score odm_legacy config matches 1 as @s[scores={odm_push=2,odm_action=0}] run scoreboard players set $strength delta.api.launch 20000
#execute if score odm_legacy config matches 1 as @s[scores={odm_push=3,odm_action=0}] run scoreboard players set $strength delta.api.launch 30000
#execute if score odm_legacy config matches 1 as @s[scores={odm_push=4..,odm_action=0}] run scoreboard players set $strength delta.api.launch 40000
scoreboard players set $strength player_motion.api.launch 20000
effect give @s speed 1 4 true
function player_motion:api/launch_looking

execute if score odm_legacy config matches 0 run summon snowball ^ ^1 ^1 {Item:{id:"minecraft:arrow",Count:1b,components:{"custom_model_data":1}},Tags:["not_mov","motion_pla"]}
# execute if score odm_legacy config matches 0 run summon skeleton_horse ^ ^1 ^1 {Attributes:[{Name:"generic.scale",Base:.1}],Tags:["not_mov","motion_pla"]}

#PETITION 2.. -> 1..
playsound minecraft:aot.impulse player @s ~ ~ ~ 1 1