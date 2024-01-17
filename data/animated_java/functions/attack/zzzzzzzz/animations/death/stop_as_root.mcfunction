scoreboard players set @s aj.attack.animation.death.local_anim_time 0
tag @s remove aj.attack.animation.death
execute on passengers run data modify entity @s interpolation_duration set value 0
tag @s add aj.attack.disable_command_keyframes
function animated_java:attack/zzzzzzzz/animations/death/tree/leaf_0
tag @s remove aj.attack.disable_command_keyframes