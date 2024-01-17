scoreboard players add @s aj.attack.animation.death.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.attack.animation.death.local_anim_time
function animated_java:attack/zzzzzzzz/animations/death/apply_frame_as_root
execute if score @s aj.attack.animation.death.local_anim_time matches 324.. run function animated_java:attack/zzzzzzzz/animations/death/end