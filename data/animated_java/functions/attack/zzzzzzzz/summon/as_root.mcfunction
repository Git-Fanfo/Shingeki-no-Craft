execute unless score #frame aj.i = #frame aj.i run scoreboard players set #frame aj.i 0
execute unless score #variant aj.i = #variant aj.i run scoreboard players set #variant aj.i 0
execute unless score #animation aj.i = #animation aj.i run scoreboard players set #animation aj.i -1
scoreboard players set @s aj.anim_time 0
scoreboard players set @s aj.attack.rig_loaded 1
scoreboard players operation @s aj.attack.export_version = aj.attack.export_version aj.i
execute store result score @s aj.id run scoreboard players add .aj.last_id aj.id 1
tp @s ~ ~ ~ ~ ~
execute at @s on passengers run function animated_java:attack/zzzzzzzz/summon/as_rig_entities
execute if score #variant aj.i = $aj.attack.variant.default aj.id run function animated_java:attack/zzzzzzzz/apply_variant/default/as_root
execute if score #variant aj.i = $aj.attack.variant.noskin_1 aj.id run function animated_java:attack/zzzzzzzz/apply_variant/noskin_1/as_root
execute if score #variant aj.i = $aj.attack.variant.noskin_10 aj.id run function animated_java:attack/zzzzzzzz/apply_variant/noskin_10/as_root
execute if score #variant aj.i = $aj.attack.variant.noskin_2 aj.id run function animated_java:attack/zzzzzzzz/apply_variant/noskin_2/as_root
execute if score #variant aj.i = $aj.attack.variant.noskin_3 aj.id run function animated_java:attack/zzzzzzzz/apply_variant/noskin_3/as_root
execute if score #variant aj.i = $aj.attack.variant.noskin_4 aj.id run function animated_java:attack/zzzzzzzz/apply_variant/noskin_4/as_root
execute if score #variant aj.i = $aj.attack.variant.noskin_5 aj.id run function animated_java:attack/zzzzzzzz/apply_variant/noskin_5/as_root
execute if score #variant aj.i = $aj.attack.variant.noskin_6 aj.id run function animated_java:attack/zzzzzzzz/apply_variant/noskin_6/as_root
execute if score #variant aj.i = $aj.attack.variant.noskin_7 aj.id run function animated_java:attack/zzzzzzzz/apply_variant/noskin_7/as_root
execute if score #variant aj.i = $aj.attack.variant.noskin_8 aj.id run function animated_java:attack/zzzzzzzz/apply_variant/noskin_8/as_root
execute if score #variant aj.i = $aj.attack.variant.noskin_9 aj.id run function animated_java:attack/zzzzzzzz/apply_variant/noskin_9/as_root
execute if score #animation aj.i matches 0.. run scoreboard players operation @s aj.anim_time = #frame aj.i
execute if score #animation aj.i = $aj.attack.animation.run aj.id run function animated_java:attack/zzzzzzzz/animations/run/apply_frame_as_root
execute if score #animation aj.i = $aj.attack.animation.run aj.id run scoreboard players operation @s aj.attack.animation.run.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.attack.animation.walk aj.id run function animated_java:attack/zzzzzzzz/animations/walk/apply_frame_as_root
execute if score #animation aj.i = $aj.attack.animation.walk aj.id run scoreboard players operation @s aj.attack.animation.walk.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.attack.animation.idle aj.id run function animated_java:attack/zzzzzzzz/animations/idle/apply_frame_as_root
execute if score #animation aj.i = $aj.attack.animation.idle aj.id run scoreboard players operation @s aj.attack.animation.idle.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.attack.animation.punch_1 aj.id run function animated_java:attack/zzzzzzzz/animations/punch_1/apply_frame_as_root
execute if score #animation aj.i = $aj.attack.animation.punch_1 aj.id run scoreboard players operation @s aj.attack.animation.punch_1.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.attack.animation.punch_2 aj.id run function animated_java:attack/zzzzzzzz/animations/punch_2/apply_frame_as_root
execute if score #animation aj.i = $aj.attack.animation.punch_2 aj.id run scoreboard players operation @s aj.attack.animation.punch_2.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.attack.animation.punch_3 aj.id run function animated_java:attack/zzzzzzzz/animations/punch_3/apply_frame_as_root
execute if score #animation aj.i = $aj.attack.animation.punch_3 aj.id run scoreboard players operation @s aj.attack.animation.punch_3.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.attack.animation.death aj.id run function animated_java:attack/zzzzzzzz/animations/death/apply_frame_as_root
execute if score #animation aj.i = $aj.attack.animation.death aj.id run scoreboard players operation @s aj.attack.animation.death.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.attack.animation.born aj.id run function animated_java:attack/zzzzzzzz/animations/born/apply_frame_as_root
execute if score #animation aj.i = $aj.attack.animation.born aj.id run scoreboard players operation @s aj.attack.animation.born.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.attack.animation.sneak aj.id run function animated_java:attack/zzzzzzzz/animations/sneak/apply_frame_as_root
execute if score #animation aj.i = $aj.attack.animation.sneak aj.id run scoreboard players operation @s aj.attack.animation.sneak.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.attack.animation.grab aj.id run function animated_java:attack/zzzzzzzz/animations/grab/apply_frame_as_root
execute if score #animation aj.i = $aj.attack.animation.grab aj.id run scoreboard players operation @s aj.attack.animation.grab.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.attack.animation.kick_1 aj.id run function animated_java:attack/zzzzzzzz/animations/kick_1/apply_frame_as_root
execute if score #animation aj.i = $aj.attack.animation.kick_1 aj.id run scoreboard players operation @s aj.attack.animation.kick_1.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.attack.animation.kick_2 aj.id run function animated_java:attack/zzzzzzzz/animations/kick_2/apply_frame_as_root
execute if score #animation aj.i = $aj.attack.animation.kick_2 aj.id run scoreboard players operation @s aj.attack.animation.kick_2.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.attack.animation.kick_3 aj.id run function animated_java:attack/zzzzzzzz/animations/kick_3/apply_frame_as_root
execute if score #animation aj.i = $aj.attack.animation.kick_3 aj.id run scoreboard players operation @s aj.attack.animation.kick_3.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.attack.animation.block aj.id run function animated_java:attack/zzzzzzzz/animations/block/apply_frame_as_root
execute if score #animation aj.i = $aj.attack.animation.block aj.id run scoreboard players operation @s aj.attack.animation.block.local_anim_time = #frame aj.i
execute at @s run function #animated_java:attack/on_summon/as_root
tag @s remove aj.new
scoreboard players reset #frame aj.i
scoreboard players reset #variant aj.i
scoreboard players reset #animation aj.i