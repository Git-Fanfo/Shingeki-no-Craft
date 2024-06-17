scoreboard players set @s aj.anim_time 0
scoreboard players set @s aj.beast.animation.slap.local_anim_time 0
scoreboard players set @s aj.beast.animation.slap.loop_mode 2
execute on passengers run data modify entity @s interpolation_duration set value 0
function animated_java:beast/zzzzzzzz/animations/slap/tree/leaf_0
execute on passengers run data modify entity @s interpolation_duration set value 1
tag @s add aj.beast.animation.slap