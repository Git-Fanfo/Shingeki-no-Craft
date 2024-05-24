scoreboard objectives add aj.i dummy
scoreboard objectives add aj.id dummy
scoreboard objectives add aj.tween_time dummy
scoreboard objectives add aj.anim_time dummy
scoreboard objectives add aj.life_time dummy
scoreboard objectives add aj.armor.export_version dummy
scoreboard objectives add aj.armor.rig_loaded dummy
scoreboard objectives add aj.armor.animation.idle.local_anim_time dummy
scoreboard objectives add aj.armor.animation.walk.local_anim_time dummy
scoreboard objectives add aj.armor.animation.born.local_anim_time dummy
scoreboard objectives add aj.armor.animation.death.local_anim_time dummy
scoreboard objectives add aj.armor.animation.charge.local_anim_time dummy
scoreboard objectives add aj.armor.animation.run.local_anim_time dummy
scoreboard objectives add aj.armor.animation.slide.local_anim_time dummy
scoreboard objectives add aj.armor.animation.punch_1.local_anim_time dummy
scoreboard objectives add aj.armor.animation.punch_2.local_anim_time dummy
scoreboard objectives add aj.armor.animation.punch_3.local_anim_time dummy
scoreboard objectives add aj.armor.animation.init_charge.local_anim_time dummy
scoreboard objectives add aj.armor.animation.hardening.local_anim_time dummy
scoreboard objectives add aj.armor.animation.sneak.local_anim_time dummy
scoreboard objectives add aj.armor.animation.consume.local_anim_time dummy
scoreboard objectives add aj.armor.animation.idle.loop_mode dummy
scoreboard objectives add aj.armor.animation.walk.loop_mode dummy
scoreboard objectives add aj.armor.animation.born.loop_mode dummy
scoreboard objectives add aj.armor.animation.death.loop_mode dummy
scoreboard objectives add aj.armor.animation.charge.loop_mode dummy
scoreboard objectives add aj.armor.animation.run.loop_mode dummy
scoreboard objectives add aj.armor.animation.slide.loop_mode dummy
scoreboard objectives add aj.armor.animation.punch_1.loop_mode dummy
scoreboard objectives add aj.armor.animation.punch_2.loop_mode dummy
scoreboard objectives add aj.armor.animation.punch_3.loop_mode dummy
scoreboard objectives add aj.armor.animation.init_charge.loop_mode dummy
scoreboard objectives add aj.armor.animation.hardening.loop_mode dummy
scoreboard objectives add aj.armor.animation.sneak.loop_mode dummy
scoreboard objectives add aj.armor.animation.consume.loop_mode dummy
scoreboard players set $aj.armor.animation.idle aj.id 0
scoreboard players set $aj.armor.animation.walk aj.id 1
scoreboard players set $aj.armor.animation.born aj.id 2
scoreboard players set $aj.armor.animation.death aj.id 3
scoreboard players set $aj.armor.animation.charge aj.id 4
scoreboard players set $aj.armor.animation.run aj.id 5
scoreboard players set $aj.armor.animation.slide aj.id 6
scoreboard players set $aj.armor.animation.punch_1 aj.id 7
scoreboard players set $aj.armor.animation.punch_2 aj.id 8
scoreboard players set $aj.armor.animation.punch_3 aj.id 9
scoreboard players set $aj.armor.animation.init_charge aj.id 10
scoreboard players set $aj.armor.animation.hardening aj.id 11
scoreboard players set $aj.armor.animation.sneak aj.id 12
scoreboard players set $aj.armor.animation.consume aj.id 13
scoreboard players set $aj.armor.variant.default aj.id 0
scoreboard players set $aj.armor.variant.noskin_1 aj.id 1
scoreboard players set $aj.armor.variant.noskin_2 aj.id 2
scoreboard players set $aj.armor.variant.noskin_3 aj.id 3
scoreboard players set $aj.armor.variant.noskin_4 aj.id 4
scoreboard players add .aj.last_id aj.id 0
scoreboard players set $aj.loop_mode.loop aj.i 0
scoreboard players set $aj.loop_mode.once aj.i 1
scoreboard players set $aj.loop_mode.hold aj.i 2
scoreboard players set aj.armor.export_version aj.i -65995587
scoreboard players reset * aj.armor.rig_loaded
execute as @e[type=minecraft:item_display,tag=aj.armor.root] run function animated_java:armor/zzzzzzzz/on_load