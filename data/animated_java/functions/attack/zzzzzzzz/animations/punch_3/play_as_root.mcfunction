scoreboard players set @s aj.anim_time 0
scoreboard players set @s aj.attack.animation.punch_3.local_anim_time 0
scoreboard players set @s aj.attack.animation.punch_3.loop_mode 2
execute on passengers run data modify entity @s interpolation_duration set value 0
function animated_java:attack/zzzzzzzz/animations/punch_3/tree/leaf_0
execute on passengers run data modify entity @s interpolation_duration set value 1
tag @s add aj.attack.animation.punch_3