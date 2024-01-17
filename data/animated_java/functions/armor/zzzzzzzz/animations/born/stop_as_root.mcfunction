scoreboard players set @s aj.armor.animation.born.local_anim_time 0
tag @s remove aj.armor.animation.born
execute on passengers run data modify entity @s interpolation_duration set value 0
tag @s add aj.armor.disable_command_keyframes
function animated_java:armor/zzzzzzzz/animations/born/tree/leaf_0
tag @s remove aj.armor.disable_command_keyframes