scoreboard objectives add aj.i dummy
scoreboard objectives add aj.id dummy
scoreboard objectives add aj.tween_time dummy
scoreboard objectives add aj.anim_time dummy
scoreboard objectives add aj.life_time dummy
scoreboard objectives add aj.attack.export_version dummy
scoreboard objectives add aj.attack.rig_loaded dummy
scoreboard objectives add aj.attack.animation.run.local_anim_time dummy
scoreboard objectives add aj.attack.animation.walk.local_anim_time dummy
scoreboard objectives add aj.attack.animation.idle.local_anim_time dummy
scoreboard objectives add aj.attack.animation.punch_1.local_anim_time dummy
scoreboard objectives add aj.attack.animation.punch_2.local_anim_time dummy
scoreboard objectives add aj.attack.animation.punch_3.local_anim_time dummy
scoreboard objectives add aj.attack.animation.death.local_anim_time dummy
scoreboard objectives add aj.attack.animation.born.local_anim_time dummy
scoreboard objectives add aj.attack.animation.sneak.local_anim_time dummy
scoreboard objectives add aj.attack.animation.grab.local_anim_time dummy
scoreboard objectives add aj.attack.animation.kick_1.local_anim_time dummy
scoreboard objectives add aj.attack.animation.kick_2.local_anim_time dummy
scoreboard objectives add aj.attack.animation.kick_3.local_anim_time dummy
scoreboard objectives add aj.attack.animation.block.local_anim_time dummy
scoreboard objectives add aj.attack.animation.run.loop_mode dummy
scoreboard objectives add aj.attack.animation.walk.loop_mode dummy
scoreboard objectives add aj.attack.animation.idle.loop_mode dummy
scoreboard objectives add aj.attack.animation.punch_1.loop_mode dummy
scoreboard objectives add aj.attack.animation.punch_2.loop_mode dummy
scoreboard objectives add aj.attack.animation.punch_3.loop_mode dummy
scoreboard objectives add aj.attack.animation.death.loop_mode dummy
scoreboard objectives add aj.attack.animation.born.loop_mode dummy
scoreboard objectives add aj.attack.animation.sneak.loop_mode dummy
scoreboard objectives add aj.attack.animation.grab.loop_mode dummy
scoreboard objectives add aj.attack.animation.kick_1.loop_mode dummy
scoreboard objectives add aj.attack.animation.kick_2.loop_mode dummy
scoreboard objectives add aj.attack.animation.kick_3.loop_mode dummy
scoreboard objectives add aj.attack.animation.block.loop_mode dummy
scoreboard players set $aj.attack.animation.run aj.id 0
scoreboard players set $aj.attack.animation.walk aj.id 1
scoreboard players set $aj.attack.animation.idle aj.id 2
scoreboard players set $aj.attack.animation.punch_1 aj.id 3
scoreboard players set $aj.attack.animation.punch_2 aj.id 4
scoreboard players set $aj.attack.animation.punch_3 aj.id 5
scoreboard players set $aj.attack.animation.death aj.id 6
scoreboard players set $aj.attack.animation.born aj.id 7
scoreboard players set $aj.attack.animation.sneak aj.id 8
scoreboard players set $aj.attack.animation.grab aj.id 9
scoreboard players set $aj.attack.animation.kick_1 aj.id 10
scoreboard players set $aj.attack.animation.kick_2 aj.id 11
scoreboard players set $aj.attack.animation.kick_3 aj.id 12
scoreboard players set $aj.attack.animation.block aj.id 13
scoreboard players set $aj.attack.variant.default aj.id 0
scoreboard players set $aj.attack.variant.noskin_1 aj.id 1
scoreboard players set $aj.attack.variant.noskin_10 aj.id 2
scoreboard players set $aj.attack.variant.noskin_2 aj.id 3
scoreboard players set $aj.attack.variant.noskin_3 aj.id 4
scoreboard players set $aj.attack.variant.noskin_4 aj.id 5
scoreboard players set $aj.attack.variant.noskin_5 aj.id 6
scoreboard players set $aj.attack.variant.noskin_6 aj.id 7
scoreboard players set $aj.attack.variant.noskin_7 aj.id 8
scoreboard players set $aj.attack.variant.noskin_8 aj.id 9
scoreboard players set $aj.attack.variant.noskin_9 aj.id 10
scoreboard players add .aj.last_id aj.id 0
scoreboard players set $aj.loop_mode.loop aj.i 0
scoreboard players set $aj.loop_mode.once aj.i 1
scoreboard players set $aj.loop_mode.hold aj.i 2
scoreboard players set aj.attack.export_version aj.i -1006900483
scoreboard players reset * aj.attack.rig_loaded
execute as @e[type=minecraft:item_display,tag=aj.attack.root] run function animated_java:attack/zzzzzzzz/on_load