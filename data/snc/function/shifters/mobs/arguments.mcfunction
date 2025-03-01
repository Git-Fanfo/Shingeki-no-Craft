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
    damage_jaw: 30, knockback_jaw: 0.01, energy_jaw: 8, angle_jaw: 10, \
    energy_jump: 5, cooldown_jump:2, \
    energy_hold: 24, \
    damage_step: 1 \
}

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
    damage_wall:220, knockback_wall:0.1, energy_wall:110, angle_wall: 45, cooldown_wall:10, \
    cooldown_steam:15, \
    damage_jaw: 34, knockback_jaw: 0.0, energy_jaw: 40, angle_jaw: 5, \
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
    run_speed:0.40d, \
    jump:1.65d, \
    step_height:3.6d, \
    explosion:15, \
    resistance:2, \
    regen_ticks:90, \
    scale_vehicle:6.3, \
    scale_player:4.5, \
    block_range:10, \
    entity_range:0, \
    energy_decrease: 2,\
    energy_block:20, cooldown_block:3, \
    damage_punch_1:26, knockback_punch_1:0.01, energy_punch_1:25, angle_punch_1: 5, \
    damage_punch_2:30, knockback_punch_2:0.01, energy_punch_2:20, angle_punch_2: 5, \
    damage_punch_3:36, knockback_punch_3:0.01, energy_punch_3:15, angle_punch_3: 90, cooldown_punch:5, \
    damage_kick_1:30, knockback_kick_1:0.01, energy_kick_1:20, angle_kick_1: 5, \
    damage_kick_2:32, knockback_kick_2:0.01, energy_kick_2:15, angle_kick_2: 5, \
    damage_kick_3:34, knockback_kick_3:0.007, energy_kick_3:10, angle_kick_3: 45, cooldown_kick:6, \
    damage_bite: 18, knockback_bite: 0.01, energy_bite: 5, angle_bite: 5, \
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
    hp:56, \
    walk_speed:0.14d, \
    run_speed:0.32d, \
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
    damage_focus: 80, knockback_focus: 0.02, energy_focus: 40, cooldown_focus:2, angle_focus:35, \
    damage_area: 20, knockback_area: 0.01, energy_area: 27, cooldown_area:15, \
    damage_slap: 10, knockback_slap: 0.035, energy_slap: 15, angle_slap: 35, cooldown_slap: 10, \
    damage_jaw: 12, knockback_jaw: 0.01, energy_jaw: 10, angle_jaw: 10, \
    cooldown_drop: 5, \
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
    damage_punch_1:22, knockback_punch_1:0.01, energy_punch_1:20, angle_punch_1: 5,\
    damage_punch_2:26, knockback_punch_2:0.01, energy_punch_2:15, angle_punch_2: 5,\
    damage_punch_3:40, knockback_punch_3:0.02, energy_punch_3:25, angle_punch_3: 5,\
    damage_fortified: 25, knockback_fortified: 0.03, energy_fortified: 50, angle_fortified: 10, cooldown_fortified:8,\
    damage_onslaught: 25, knockback_onslaught: 0.0, energy_onslaught: 35, angle_onslaught: 0, \
    damage_impale: 50, knockback_impale: 0.0, energy_impale: 35, angle_impale: 0, cooldown_impale:15,\
    damage_jaw: 14, knockback_jaw: 0.01, energy_jaw: 10, angle_jaw: 5, \
    damage_step: 3.7 \
}

# Also, scale is already good
data merge storage minecraft:jaw {\
    id:6, \
    shifter:jaw, \
    name:"Jaw Titan", \
    color:yellow, \
    bossbar_display:uFFF5, \
    bossbar_color:yellow, \
    bossbar_style: notched_6, \
    hp:32, \
    walk_speed:0.13d, \
    run_speed:0.6d, \
    type:skeleton_horse, \
    jump:0d, \
    step_height:5d, \
    explosion:15, \
    resistance:2, \
    regen_ticks:100, \
    scale_vehicle:1.3, \
    scale_player:2.1, \
    block_range:7, \
    entity_range:7, \
    energy_decrease: 2,\
    damage_bite: 40, knockback_bite: 0.005, energy_bite: 10, angle_bite: 10, \
    damage_charge: 40, knockback_charge: 0.01, energy_charge: 10, angle_charge: 40, cooldown_charge:4, \
    energy_jump: 5, \
    energy_hold: 24, \
    damage_step: 1 \
}