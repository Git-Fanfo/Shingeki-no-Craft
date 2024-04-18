data merge storage minecraft:cart {\
    id:1, \
    shifter:cart, \
    name:"Cart Titan", \
    color:light_purple, \
    bossbar_display:uFFF3, \
    bossbar_color:pink, \
    hp:32, \
    walk_speed:0.35d, \
    run_speed:0.35d, \
    type:camel, \
    jump:.8d, \
    step_height:3.6d, \
    explosion:15, \
    resistance:2, \
    regen_ticks:100, \
    scale_vehicle:2, \
    scale_player:2.4, \
    block_range:7, \
    entity_range:7, \
    energy_decrease: 1,\
    damage_jaw: 30, knockback_jaw: 8, energy_jaw: 40, \
    damage_step: 2 \
}
## Note: Fanfo from the future says: Argument "jump:1d" works pretty good for Jaw!

data merge storage minecraft:colossal {\
    id:2, \
    shifter:colossal, \
    name:"Colossal Titan", \
    color:aqua, \
    bossbar_display:uFFF0, \
    bossbar_color:blue, \
    hp:72, \
    walk_speed:0.1d, \
    run_speed:0.1d, \
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
    damage_kick_1:60, knockback_kick_1:10, energy_kick_1:110, \
    damage_jaw: 30, knockback_jaw: 8, energy_jaw: 40, \
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
    type:skeleton_horse, \
    hp:44, \
    walk_speed:0.13d, \
    run_speed:0.36d, \
    jump:2d, \
    step_height:3.6d, \
    explosion:15, \
    resistance:2, \
    regen_ticks:80, \
    scale_vehicle:6.3, \
    scale_player:4.5, \
    block_range:10, \
    entity_range:0, \
    energy_decrease:2,\
    damage_punch_1:20, knockback_punch_1:2, energy_punch_1:50, \
    damage_punch_2:24, knockback_punch_2:4, energy_punch_2:40, \
    damage_punch_3:30, knockback_punch_3:10, energy_punch_3:35, \
    damage_kick_1:20, knockback_kick_1:2, energy_kick_1:40, \
    damage_kick_2:24, knockback_kick_2:4, energy_kick_2:30, \
    damage_kick_3:28, knockback_kick_3:6, energy_kick_3:20, \
    damage_jaw: 10, knockback_jaw: 2, energy_jaw: 10, \
    damage_step: 3 \
}

data merge storage minecraft:beast {\
    id:4, \
    shifter:beast, \
    name:"Beast Titan", \
    color:green, \
    bossbar_display:uFFF2, \
    bossbar_color:green, \
    hp:52, \
    walk_speed:0.14d, \
    run_speed:0.20d, \
    type:skeleton_horse, \
    jump:1.3d, \
    step_height:3.6d, \
    explosion:15, \
    resistance:2, \
    regen_ticks:140, \
    scale_vehicle:6.8, \
    scale_player:10, \
    block_range:11, \
    entity_range:0, \
    energy_decrease: 2,\
    damage_focus: 60, knockback_focus: 10, energy_focus: 80, \
    damage_area: 20, knockback_area: 3, energy_area: 27, \
    damage_jaw: 8, knockback_jaw: 2, energy_jaw: 10, \
    damage_step: 4 \
}

data merge storage minecraft:armor {\
    id:5, \
    shifter:armor, \
    name:"Armored Titan", \
    color:gold, \
    bossbar_display:uFFF1, \
    bossbar_color:red, \
    hp:44, \
    walk_speed:0.13d, \
    run_speed:0.6d, \
    jump:2d, \
    type:skeleton_horse, \
    step_height:3.6d, \
    explosion:15, \
    resistance:2, \
    regen_ticks:80, \
    scale_vehicle:6.8, \
    scale_player:4.7, \
    block_range:10, \
    entity_range:0, \
    energy_decrease: 2,\
    energy_attack: 45,\
    dmg2:36, \
    dmg3:24, \
    jaw_dmg:20, \
    damage_step: 3 \
}
