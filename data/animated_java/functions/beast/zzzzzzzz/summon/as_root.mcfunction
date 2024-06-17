execute unless score #frame aj.i = #frame aj.i run scoreboard players set #frame aj.i 0
execute unless score #variant aj.i = #variant aj.i run scoreboard players set #variant aj.i 0
execute unless score #animation aj.i = #animation aj.i run scoreboard players set #animation aj.i -1
scoreboard players set @s aj.anim_time 0
scoreboard players set @s aj.beast.rig_loaded 1
scoreboard players operation @s aj.beast.export_version = aj.beast.export_version aj.i
execute store result score @s aj.id run scoreboard players add .aj.last_id aj.id 1
tp @s ~ ~ ~ ~ ~
execute at @s on passengers run function animated_java:beast/zzzzzzzz/summon/as_rig_entities
execute if score #variant aj.i = $aj.beast.variant.default aj.id run function animated_java:beast/zzzzzzzz/apply_variant/default/as_root
execute if score #variant aj.i = $aj.beast.variant.noskin_1 aj.id run function animated_java:beast/zzzzzzzz/apply_variant/noskin_1/as_root
execute if score #variant aj.i = $aj.beast.variant.noskin_10 aj.id run function animated_java:beast/zzzzzzzz/apply_variant/noskin_10/as_root
execute if score #variant aj.i = $aj.beast.variant.noskin_11 aj.id run function animated_java:beast/zzzzzzzz/apply_variant/noskin_11/as_root
execute if score #variant aj.i = $aj.beast.variant.noskin_12 aj.id run function animated_java:beast/zzzzzzzz/apply_variant/noskin_12/as_root
execute if score #variant aj.i = $aj.beast.variant.noskin_13 aj.id run function animated_java:beast/zzzzzzzz/apply_variant/noskin_13/as_root
execute if score #variant aj.i = $aj.beast.variant.noskin_14 aj.id run function animated_java:beast/zzzzzzzz/apply_variant/noskin_14/as_root
execute if score #variant aj.i = $aj.beast.variant.noskin_15 aj.id run function animated_java:beast/zzzzzzzz/apply_variant/noskin_15/as_root
execute if score #variant aj.i = $aj.beast.variant.noskin_2 aj.id run function animated_java:beast/zzzzzzzz/apply_variant/noskin_2/as_root
execute if score #variant aj.i = $aj.beast.variant.noskin_3 aj.id run function animated_java:beast/zzzzzzzz/apply_variant/noskin_3/as_root
execute if score #variant aj.i = $aj.beast.variant.noskin_4 aj.id run function animated_java:beast/zzzzzzzz/apply_variant/noskin_4/as_root
execute if score #variant aj.i = $aj.beast.variant.noskin_5 aj.id run function animated_java:beast/zzzzzzzz/apply_variant/noskin_5/as_root
execute if score #variant aj.i = $aj.beast.variant.noskin_6 aj.id run function animated_java:beast/zzzzzzzz/apply_variant/noskin_6/as_root
execute if score #variant aj.i = $aj.beast.variant.noskin_7 aj.id run function animated_java:beast/zzzzzzzz/apply_variant/noskin_7/as_root
execute if score #variant aj.i = $aj.beast.variant.noskin_8 aj.id run function animated_java:beast/zzzzzzzz/apply_variant/noskin_8/as_root
execute if score #variant aj.i = $aj.beast.variant.noskin_9 aj.id run function animated_java:beast/zzzzzzzz/apply_variant/noskin_9/as_root
execute if score #animation aj.i matches 0.. run scoreboard players operation @s aj.anim_time = #frame aj.i
execute if score #animation aj.i = $aj.beast.animation.idle aj.id run function animated_java:beast/zzzzzzzz/animations/idle/apply_frame_as_root
execute if score #animation aj.i = $aj.beast.animation.idle aj.id run scoreboard players operation @s aj.beast.animation.idle.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.beast.animation.walk aj.id run function animated_java:beast/zzzzzzzz/animations/walk/apply_frame_as_root
execute if score #animation aj.i = $aj.beast.animation.walk aj.id run scoreboard players operation @s aj.beast.animation.walk.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.beast.animation.throw_big aj.id run function animated_java:beast/zzzzzzzz/animations/throw_big/apply_frame_as_root
execute if score #animation aj.i = $aj.beast.animation.throw_big aj.id run scoreboard players operation @s aj.beast.animation.throw_big.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.beast.animation.throw_area aj.id run function animated_java:beast/zzzzzzzz/animations/throw_area/apply_frame_as_root
execute if score #animation aj.i = $aj.beast.animation.throw_area aj.id run scoreboard players operation @s aj.beast.animation.throw_area.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.beast.animation.born aj.id run function animated_java:beast/zzzzzzzz/animations/born/apply_frame_as_root
execute if score #animation aj.i = $aj.beast.animation.born aj.id run scoreboard players operation @s aj.beast.animation.born.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.beast.animation.death aj.id run function animated_java:beast/zzzzzzzz/animations/death/apply_frame_as_root
execute if score #animation aj.i = $aj.beast.animation.death aj.id run scoreboard players operation @s aj.beast.animation.death.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.beast.animation.grab aj.id run function animated_java:beast/zzzzzzzz/animations/grab/apply_frame_as_root
execute if score #animation aj.i = $aj.beast.animation.grab aj.id run scoreboard players operation @s aj.beast.animation.grab.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.beast.animation.sneak aj.id run function animated_java:beast/zzzzzzzz/animations/sneak/apply_frame_as_root
execute if score #animation aj.i = $aj.beast.animation.sneak aj.id run scoreboard players operation @s aj.beast.animation.sneak.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.beast.animation.consume aj.id run function animated_java:beast/zzzzzzzz/animations/consume/apply_frame_as_root
execute if score #animation aj.i = $aj.beast.animation.consume aj.id run scoreboard players operation @s aj.beast.animation.consume.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.beast.animation.slap aj.id run function animated_java:beast/zzzzzzzz/animations/slap/apply_frame_as_root
execute if score #animation aj.i = $aj.beast.animation.slap aj.id run scoreboard players operation @s aj.beast.animation.slap.local_anim_time = #frame aj.i
execute at @s run function #animated_java:beast/on_summon/as_root
tag @s remove aj.new
scoreboard players reset #frame aj.i
scoreboard players reset #variant aj.i
scoreboard players reset #animation aj.i