scoreboard objectives add aj.i dummy
scoreboard objectives add aj.id dummy
scoreboard objectives add aj.tween_time dummy
scoreboard objectives add aj.anim_time dummy
scoreboard objectives add aj.life_time dummy
scoreboard objectives add aj.beast.export_version dummy
scoreboard objectives add aj.beast.rig_loaded dummy
scoreboard objectives add aj.beast.animation.idle.local_anim_time dummy
scoreboard objectives add aj.beast.animation.walk.local_anim_time dummy
scoreboard objectives add aj.beast.animation.throw_big.local_anim_time dummy
scoreboard objectives add aj.beast.animation.throw_area.local_anim_time dummy
scoreboard objectives add aj.beast.animation.born.local_anim_time dummy
scoreboard objectives add aj.beast.animation.death.local_anim_time dummy
scoreboard objectives add aj.beast.animation.grab.local_anim_time dummy
scoreboard objectives add aj.beast.animation.sneak.local_anim_time dummy
scoreboard objectives add aj.beast.animation.idle.loop_mode dummy
scoreboard objectives add aj.beast.animation.walk.loop_mode dummy
scoreboard objectives add aj.beast.animation.throw_big.loop_mode dummy
scoreboard objectives add aj.beast.animation.throw_area.loop_mode dummy
scoreboard objectives add aj.beast.animation.born.loop_mode dummy
scoreboard objectives add aj.beast.animation.death.loop_mode dummy
scoreboard objectives add aj.beast.animation.grab.loop_mode dummy
scoreboard objectives add aj.beast.animation.sneak.loop_mode dummy
scoreboard players set $aj.beast.animation.idle aj.id 0
scoreboard players set $aj.beast.animation.walk aj.id 1
scoreboard players set $aj.beast.animation.throw_big aj.id 2
scoreboard players set $aj.beast.animation.throw_area aj.id 3
scoreboard players set $aj.beast.animation.born aj.id 4
scoreboard players set $aj.beast.animation.death aj.id 5
scoreboard players set $aj.beast.animation.grab aj.id 6
scoreboard players set $aj.beast.animation.sneak aj.id 7
scoreboard players set $aj.beast.variant.default aj.id 0
scoreboard players set $aj.beast.variant.noskin_1 aj.id 1
scoreboard players set $aj.beast.variant.noskin_10 aj.id 2
scoreboard players set $aj.beast.variant.noskin_11 aj.id 3
scoreboard players set $aj.beast.variant.noskin_12 aj.id 4
scoreboard players set $aj.beast.variant.noskin_13 aj.id 5
scoreboard players set $aj.beast.variant.noskin_14 aj.id 6
scoreboard players set $aj.beast.variant.noskin_15 aj.id 7
scoreboard players set $aj.beast.variant.noskin_2 aj.id 8
scoreboard players set $aj.beast.variant.noskin_3 aj.id 9
scoreboard players set $aj.beast.variant.noskin_4 aj.id 10
scoreboard players set $aj.beast.variant.noskin_5 aj.id 11
scoreboard players set $aj.beast.variant.noskin_6 aj.id 12
scoreboard players set $aj.beast.variant.noskin_7 aj.id 13
scoreboard players set $aj.beast.variant.noskin_8 aj.id 14
scoreboard players set $aj.beast.variant.noskin_9 aj.id 15
scoreboard players add .aj.last_id aj.id 0
scoreboard players set $aj.loop_mode.loop aj.i 0
scoreboard players set $aj.loop_mode.once aj.i 1
scoreboard players set $aj.loop_mode.hold aj.i 2
scoreboard players set aj.beast.export_version aj.i 678310065
scoreboard players reset * aj.beast.rig_loaded
execute as @e[type=minecraft:item_display,tag=aj.beast.root] run function animated_java:beast/zzzzzzzz/on_load