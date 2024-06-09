data merge storage minecraft:cart {\
    id:1, \
    shifter:cart, \
    name:"Cart Titan", \
    color:light_purple, \
    bossbar_display:uFFF3, \
    bossbar_color:pink, \
    bossbar_style: notched_6, \
    hp:32, \
    walk_speed:0.34d, \
    run_speed:0.34d, \
    type:skeleton_horse, \
    jump:1d, \
    step_height:3.6d, \
    explosion:15, \
    resistance:2, \
    regen_ticks:100, \
    scale_vehicle:1.5, \
    scale_player:2, \
    block_range:7, \
    entity_range:7, \
    energy_decrease: 1,\
    damage_jaw: 30, knockback_jaw: 3, energy_jaw: 8, angle_jaw: -5, \
    energy_jump: 5, \
    energy_hold: 20, \
    damage_step: 1 \
}
## Note: Fanfo from the future says: Argument skeleton_horse "jump:1d" works pretty good for Jaw!

data merge storage minecraft:colossal {\
    id:2, \
    shifter:colossal, \
    name:"Colossal Titan", \
    color:aqua, \
    bossbar_display:uFFF0, \
    bossbar_color:blue, \
    bossbar_style: notched_12, \
    hp:72, \
    walk_speed:0.12d, \
    run_speed:0.12d, \
    type:skeleton_horse, \
    jump:0d, \
    step_height:7d, \
    explosion:47, \
    resistance:2, \
    regen_ticks:140, \
    scale_vehicle:6, \
    scale_player:12, \
    block_range:0, \
    entity_range:0, \
    energy_decrease: 5,\
    damage_kick_1:220, knockback_kick_1:10, energy_kick_1:110, angle_kick_1: -45,\
    damage_jaw: 30, knockback_jaw: 0, energy_jaw: 40, angle_jaw: -5, \
    damage_step: 15 \
}

## id : identifier of the shifter, never change.
## shifter : name of the shifter, never change.
## color : color of the shifter.
## bossbar_display : texture of the bossbar.
## bossbar_color : color of the bossbar.
## hp : how many hp the shifter has when transformed.
## walk_speed : speed of the titan when walking.
## run_speed : speed of the titan when running.
## jump : jump strength.
## resistance : resistance of the shifter to scale HP.
## regen_ticks : How much time in ticks takes the shifter to regen HP, the less value the stronger.

data merge storage minecraft:attack {\
    id:3, \
    shifter:attack, \
    name:"Attack Titan", \
    color:dark_red, \
    bossbar_display:uFFF1, \
    bossbar_color:red, \
    bossbar_style: notched_10, \
    type:skeleton_horse, \
    hp:40, \
    walk_speed:0.13d, \
    run_speed:0.36d, \
    jump:1.65d, \
    step_height:3.6d, \
    explosion:15, \
    resistance:2, \
    regen_ticks:100, \
    scale_vehicle:6.3, \
    scale_player:4.5, \
    block_range:10, \
    entity_range:0, \
    energy_decrease: 2,\
    damage_punch_1:26, knockback_punch_1:2, energy_punch_1:25, angle_punch_1: -5, \
    damage_punch_2:30, knockback_punch_2:3, energy_punch_2:20, angle_punch_2: -5, \
    damage_punch_3:36, knockback_punch_3:3, energy_punch_3:15, angle_punch_3: -90, \
    damage_kick_1:30, knockback_kick_1:1, energy_kick_1:20, angle_kick_1: -5, \
    damage_kick_2:32, knockback_kick_2:2, energy_kick_2:15, angle_kick_2: -5, \
    damage_kick_3:34, knockback_kick_3:2, energy_kick_3:10, angle_kick_3: -80, \
    damage_jaw: 14, knockback_jaw: 1, energy_jaw: 5, angle_jaw: -5, \
    damage_step: 3 \
}

data merge storage minecraft:beast {\
    id:4, \
    shifter:beast, \
    name:"Beast Titan", \
    color:green, \
    bossbar_display:uFFF2, \
    bossbar_color:green, \
    bossbar_style: notched_10, \
    hp:52, \
    walk_speed:0.14d, \
    run_speed:0.20d, \
    type:skeleton_horse, \
    jump:1.3d, \
    step_height:3.6d, \
    explosion:15, \
    resistance:2, \
    regen_ticks:130, \
    scale_vehicle:9.2, \
    scale_player:6.4, \
    block_range:11, \
    entity_range:0, \
    energy_decrease: 2,\
    damage_focus: 60, knockback_focus: 5, energy_focus: 80, \
    damage_area: 20, knockback_area: 1, energy_area: 27, \
    damage_jaw: 8, knockback_jaw: 1, energy_jaw: 10, angle_jaw: -5, \
    damage_step: 1 \
}

# run_speed:0.6d,
data merge storage minecraft:armor {\
    id:5, \
    shifter:armor, \
    name:"Armored Titan", \
    color:gold, \
    bossbar_display:uFFF4, \
    bossbar_color:yellow, \
    bossbar_style: notched_10, \
    hp:48, \
    walk_speed:0.13d, \
    run_speed:0.31d, \
    jump:1.6d, \
    type:skeleton_horse, \
    step_height:3.6d, \
    explosion:15, \
    resistance:2, \
    regen_ticks:150, \
    scale_vehicle:6.8, \
    scale_player:5.2, \
    block_range:10, \
    entity_range:0, \
    energy_decrease: 2,\
    damage_punch_1:22, knockback_punch_1:3, energy_punch_1:20, angle_punch_1: -5,\
    damage_punch_2:26, knockback_punch_2:4, energy_punch_2:15, angle_punch_2: -5,\
    damage_punch_3:40, knockback_punch_3:6, energy_punch_3:25, angle_punch_3: -10,\
    damage_fortified: 25, knockback_fortified: 6, energy_fortified: 50, angle_fortified: 0,\
    damage_onslaught: 50, knockback_onslaught: 0, energy_onslaught: 0, angle_onslaught: 0,\
    damage_impale: 120, knockback_impale: 0, energy_impale: 0, angle_impale: 0,\
    damage_jaw: 10, knockback_jaw: 1, energy_jaw: 10, angle_jaw: -5, \
    damage_step: 3.7 \
}