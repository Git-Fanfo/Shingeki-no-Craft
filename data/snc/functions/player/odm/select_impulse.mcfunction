# Can spinn?
tag @s add spin

function snc:player/odm/select_slow_falling

## Push strenght
execute if score @s odm_push matches 0..1 run function snc:player/odm/impulse/push {"power":2, "x":"^", "y":"^", "z":"^-2"}
execute if score @s odm_push matches 2..3 run function snc:player/odm/impulse/push {"power":3, "x":"^", "y":"^", "z":"^-2.1"}
execute if score @s odm_push matches 4.. run function snc:player/odm/impulse/push {"power":4, "x":"^", "y":"^", "z":"^-2.25"}
#execute if score @s odm_push matches 5.. run function snc:player/odm/impulse/push {"power":5, "x":"^", "y":"^", "z":"^-1.5"}
# tellraw @a {"score":{"name":"@s","objective":"odm_push"}}
effect give @s speed 1 4 true

execute if score odm_legacy config matches 0 run summon snowball ^ ^1 ^1 {Item:{id:"minecraft:arrow",Count:1b,components:{"custom_model_data":1}},Tags:["not_mov","motion_pla"]}
# execute if score odm_legacy config matches 0 run summon skeleton_horse ^ ^1 ^1 {Attributes:[{Name:"generic.scale",Base:.1}],Tags:["not_mov","motion_pla"]}

#PETITION 2.. -> 1..
playsound minecraft:aot.impulse player @s ~ ~ ~ 1 1