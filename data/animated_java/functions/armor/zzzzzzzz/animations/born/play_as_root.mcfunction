scoreboard players set @s aj.anim_time 0
scoreboard players set @s aj.armor.animation.born.local_anim_time 0
scoreboard players set @s aj.armor.animation.born.loop_mode 2
execute on passengers run data modify entity @s interpolation_duration set value 0
function animated_java:armor/zzzzzzzz/animations/born/tree/leaf_0
execute on passengers run data modify entity @s interpolation_duration set value 1
tag @s add aj.armor.animation.born