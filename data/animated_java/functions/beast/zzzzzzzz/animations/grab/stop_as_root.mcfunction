scoreboard players set @s aj.beast.animation.grab.local_anim_time 0
tag @s remove aj.beast.animation.grab
execute on passengers run data modify entity @s interpolation_duration set value 0
tag @s add aj.beast.disable_command_keyframes
function animated_java:beast/zzzzzzzz/animations/grab/tree/leaf_0
tag @s remove aj.beast.disable_command_keyframes