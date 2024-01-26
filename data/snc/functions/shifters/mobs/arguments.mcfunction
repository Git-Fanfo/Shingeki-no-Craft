data merge storage minecraft:cart {\
    id:1, \
    shifter:cart, \
    color:light_purple, \
    bossbar_display:uFFF3, \
    bossbar_color:pink, \
    time:59, \
    cd_time:-5, \
    cd_time_hurt:-9, \
    hp:20, \
    walk_speed:0.35d, \
    run_speed:0.35d, \
    type:camel, \
    jump:.8d, \
    step_height:3.6d, \
    resistance:2, \
    parry:false, \
    regen_ticks:100, \
    scale_vehicle:2, \
    scale_player:2.4 \
}
## Fanfo from the future says: jump:1d works pretty good for Jaw!

data merge storage minecraft:colossal {\
    id:2, \
    shifter:colossal, \
    color:aqua, \
    bossbar:uFFF1, \
    hp:72, \
    time:5, \
    step_height:3.6d, \
    cd_time:-14, \
    cd_time_hurt:-39, \
    resistance:2, \
    parry:false, \
    regen_ticks:140, \
    scale_vehicle:6.3, \
    scale_player:4.5 \
}

## id : identifier of the shifter, never change.
## shifter : name of the shifter, never change.
## color : color of the shifter.
## bossbar_display : texture of the bossbar.
## bossbar_color : color of the bossbar.
## time : how much time the shifter can be transformed.
## cd_time : how much time has to pass until shift again.
## cd_time_hurt : how much time has to pass until shift again after being hurt.
## hp : how many hp the shifter has when transformed.
## walk_speed : speed of the titan when walking.
## run_speed : speed of the titan when running.
## jump : jump strength.
## resistance : resistance of the shifter to scale HP.
## parry : Can the shifter parry? If true then is equal to "shifter", false otherwise.
## regen_ticks : How much time in ticks takes the shifter to regen HP, the less value the stronger.

data merge storage minecraft:attack {\
    id:3, \
    shifter:attack, \
    color:dark_red, \
    bossbar_display:uFFF1, \
    bossbar_color:red, \
    time:15, \
    cd_time:-10, \
    cd_time_hurt:-29, \
    hp:40, \
    walk_speed:0.13d, \
    run_speed:0.36d, \
    type:skeleton_horse, \
    jump:2d, \
    step_height:3.6d, \
    resistance:2, \
    parry:attack, \
    regen_ticks:80, \
    scale_vehicle:6.3, \
    scale_player:4.5, \
    dmg2:36, \
    dmg3:24, \
    jaw_dmg:20, \
    footstep_dmg:6 \
}

data merge storage minecraft:beast {\
    id:4, \
    shifter:beast, \
    color:green, \
    bossbar_display:uFFF2, \
    bossbar_color:green, \
    time:25, \
    cd_time:-10, \
    cd_time_hurt:-29, \
    hp:50, \
    walk_speed:0.14d, \
    run_speed:0.20d, \
    type:skeleton_horse, \
    jump:1.3d, \
    step_height:3.6d, \
    resistance:2, \
    parry:false, \
    regen_ticks:140, \
    scale_vehicle:6.3, \
    scale_player:4.5, \
    dmg3:60, \
    dmg4:20, \
    jaw_dmg:15 \
}

data merge storage minecraft:armor {\
    id:5, \
    shifter:armor, \
    color:gold, \
    bossbar_display:uFFF1, \
    bossbar_color:red, \
    time:15, \
    cd_time:-10, \
    cd_time_hurt:-29, \
    hp:40, \
    walk_speed:0.13d, \
    run_speed:0.36d, \
    jump:2d, \
    type:skeleton_horse, \
    step_height:3.6d, \
    resistance:2, \
    parry:attack, \
    regen_ticks:80, \
    scale_vehicle:6.3, \
    scale_player:4.5, \
    dmg2:36, \
    dmg3:24, \
    jaw_dmg:20, \
    footstep_dmg:6 \
}
