execute unless score #frame aj.i = #frame aj.i run scoreboard players set #frame aj.i 0
execute unless score #variant aj.i = #variant aj.i run scoreboard players set #variant aj.i 0
execute unless score #animation aj.i = #animation aj.i run scoreboard players set #animation aj.i -1
scoreboard players set @s aj.anim_time 0
scoreboard players set @s aj.armor.rig_loaded 1
scoreboard players operation @s aj.armor.export_version = aj.armor.export_version aj.i
execute store result score @s aj.id run scoreboard players add .aj.last_id aj.id 1
tp @s ~ ~ ~ ~ ~
execute at @s on passengers run function animated_java:armor/zzzzzzzz/summon/as_rig_entities
execute if score #variant aj.i = $aj.armor.variant.default aj.id run function animated_java:armor/zzzzzzzz/apply_variant/default/as_root
execute if score #animation aj.i matches 0.. run scoreboard players operation @s aj.anim_time = #frame aj.i
execute if score #animation aj.i = $aj.armor.animation.idle aj.id run function animated_java:armor/zzzzzzzz/animations/idle/apply_frame_as_root
execute if score #animation aj.i = $aj.armor.animation.idle aj.id run scoreboard players operation @s aj.armor.animation.idle.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.armor.animation.walk aj.id run function animated_java:armor/zzzzzzzz/animations/walk/apply_frame_as_root
execute if score #animation aj.i = $aj.armor.animation.walk aj.id run scoreboard players operation @s aj.armor.animation.walk.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.armor.animation.born aj.id run function animated_java:armor/zzzzzzzz/animations/born/apply_frame_as_root
execute if score #animation aj.i = $aj.armor.animation.born aj.id run scoreboard players operation @s aj.armor.animation.born.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.armor.animation.death aj.id run function animated_java:armor/zzzzzzzz/animations/death/apply_frame_as_root
execute if score #animation aj.i = $aj.armor.animation.death aj.id run scoreboard players operation @s aj.armor.animation.death.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.armor.animation.charge aj.id run function animated_java:armor/zzzzzzzz/animations/charge/apply_frame_as_root
execute if score #animation aj.i = $aj.armor.animation.charge aj.id run scoreboard players operation @s aj.armor.animation.charge.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.armor.animation.run aj.id run function animated_java:armor/zzzzzzzz/animations/run/apply_frame_as_root
execute if score #animation aj.i = $aj.armor.animation.run aj.id run scoreboard players operation @s aj.armor.animation.run.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.armor.animation.slide aj.id run function animated_java:armor/zzzzzzzz/animations/slide/apply_frame_as_root
execute if score #animation aj.i = $aj.armor.animation.slide aj.id run scoreboard players operation @s aj.armor.animation.slide.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.armor.animation.punch_1 aj.id run function animated_java:armor/zzzzzzzz/animations/punch_1/apply_frame_as_root
execute if score #animation aj.i = $aj.armor.animation.punch_1 aj.id run scoreboard players operation @s aj.armor.animation.punch_1.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.armor.animation.punch_2 aj.id run function animated_java:armor/zzzzzzzz/animations/punch_2/apply_frame_as_root
execute if score #animation aj.i = $aj.armor.animation.punch_2 aj.id run scoreboard players operation @s aj.armor.animation.punch_2.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.armor.animation.punch_3 aj.id run function animated_java:armor/zzzzzzzz/animations/punch_3/apply_frame_as_root
execute if score #animation aj.i = $aj.armor.animation.punch_3 aj.id run scoreboard players operation @s aj.armor.animation.punch_3.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.armor.animation.init_charge aj.id run function animated_java:armor/zzzzzzzz/animations/init_charge/apply_frame_as_root
execute if score #animation aj.i = $aj.armor.animation.init_charge aj.id run scoreboard players operation @s aj.armor.animation.init_charge.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.armor.animation.hardening aj.id run function animated_java:armor/zzzzzzzz/animations/hardening/apply_frame_as_root
execute if score #animation aj.i = $aj.armor.animation.hardening aj.id run scoreboard players operation @s aj.armor.animation.hardening.local_anim_time = #frame aj.i
execute at @s run function #animated_java:armor/on_summon/as_root
tag @s remove aj.new
scoreboard players reset #frame aj.i
scoreboard players reset #variant aj.i
scoreboard players reset #animation aj.i