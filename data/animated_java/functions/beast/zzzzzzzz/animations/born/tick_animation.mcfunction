scoreboard players add @s aj.beast.animation.born.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.beast.animation.born.local_anim_time
function animated_java:beast/zzzzzzzz/animations/born/apply_frame_as_root
execute if score @s aj.beast.animation.born.local_anim_time matches 50.. run function animated_java:beast/zzzzzzzz/animations/born/end