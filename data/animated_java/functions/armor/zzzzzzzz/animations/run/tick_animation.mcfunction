scoreboard players add @s aj.armor.animation.run.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.armor.animation.run.local_anim_time
function animated_java:armor/zzzzzzzz/animations/run/apply_frame_as_root
execute if score @s aj.armor.animation.run.local_anim_time matches 29.. run function animated_java:armor/zzzzzzzz/animations/run/end