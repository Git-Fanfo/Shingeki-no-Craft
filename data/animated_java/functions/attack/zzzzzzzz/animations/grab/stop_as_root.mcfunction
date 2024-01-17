scoreboard players set @s aj.attack.animation.grab.local_anim_time 0
tag @s remove aj.attack.animation.grab
execute on passengers run data modify entity @s interpolation_duration set value 0
tag @s add aj.attack.disable_command_keyframes
function animated_java:attack/zzzzzzzz/animations/grab/tree/leaf_0
tag @s remove aj.attack.disable_command_keyframes