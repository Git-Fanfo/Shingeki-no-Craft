scoreboard players set @s aj.anim_time 0
scoreboard players set @s aj.armor.animation.walk.local_anim_time 0
scoreboard players set @s aj.armor.animation.walk.loop_mode 0
execute on passengers run data modify entity @s interpolation_duration set value 0
function animated_java:armor/zzzzzzzz/animations/walk/tree/leaf_0
execute on passengers run data modify entity @s interpolation_duration set value 1
tag @s add aj.armor.animation.walk