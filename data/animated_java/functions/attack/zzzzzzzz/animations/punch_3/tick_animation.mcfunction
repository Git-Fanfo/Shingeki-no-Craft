scoreboard players add @s aj.attack.animation.punch_3.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.attack.animation.punch_3.local_anim_time
function animated_java:attack/zzzzzzzz/animations/punch_3/apply_frame_as_root
execute if score @s aj.attack.animation.punch_3.local_anim_time matches 17.. run function animated_java:attack/zzzzzzzz/animations/punch_3/end