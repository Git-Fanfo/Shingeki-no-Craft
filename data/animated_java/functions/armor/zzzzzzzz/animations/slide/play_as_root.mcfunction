scoreboard players set @s aj.anim_time 0
scoreboard players set @s aj.armor.animation.slide.local_anim_time 0
scoreboard players set @s aj.armor.animation.slide.loop_mode 2
execute on passengers run data modify entity @s interpolation_duration set value 0
function animated_java:armor/zzzzzzzz/animations/slide/tree/leaf_0
execute on passengers run data modify entity @s interpolation_duration set value 1
tag @s add aj.armor.animation.slide