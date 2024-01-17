scoreboard players add @s aj.armor.animation.idle.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.armor.animation.idle.local_anim_time
function animated_java:armor/zzzzzzzz/animations/idle/apply_frame_as_root
execute if score @s aj.armor.animation.idle.local_anim_time matches 120.. run function animated_java:armor/zzzzzzzz/animations/idle/end