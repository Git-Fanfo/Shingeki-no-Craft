scoreboard players add @s aj.attack.animation.kick_1.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.attack.animation.kick_1.local_anim_time
function animated_java:attack/zzzzzzzz/animations/kick_1/apply_frame_as_root
execute if score @s aj.attack.animation.kick_1.local_anim_time matches 27.. run function animated_java:attack/zzzzzzzz/animations/kick_1/end