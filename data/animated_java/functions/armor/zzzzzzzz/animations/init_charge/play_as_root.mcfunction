scoreboard players set @s aj.anim_time 0
scoreboard players set @s aj.armor.animation.init_charge.local_anim_time 0
scoreboard players set @s aj.armor.animation.init_charge.loop_mode 2
execute on passengers run data modify entity @s interpolation_duration set value 0
function animated_java:armor/zzzzzzzz/animations/init_charge/tree/leaf_0
execute on passengers run data modify entity @s interpolation_duration set value 1
tag @s add aj.armor.animation.init_charge