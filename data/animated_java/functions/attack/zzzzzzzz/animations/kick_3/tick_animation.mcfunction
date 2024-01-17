scoreboard players add @s aj.attack.animation.kick_3.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.attack.animation.kick_3.local_anim_time
function animated_java:attack/zzzzzzzz/animations/kick_3/apply_frame_as_root
execute if score @s aj.attack.animation.kick_3.local_anim_time matches 38.. run function animated_java:attack/zzzzzzzz/animations/kick_3/end