scoreboard players add @s aj.attack.animation.run.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.attack.animation.run.local_anim_time
function animated_java:attack/zzzzzzzz/animations/run/apply_frame_as_root
execute if score @s aj.attack.animation.run.local_anim_time matches 24.. run function animated_java:attack/zzzzzzzz/animations/run/end