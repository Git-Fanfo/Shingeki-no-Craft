# This file was generated by Animated Java via MC-Build. It is not recommended to edit this file directly.
scoreboard players remove @s aj.tween_duration 1
execute if score @s aj.tween_duration matches 1.. run return 1
execute if score @s aj.tween_duration matches 0 on passengers run data modify entity @s interpolation_duration set value 1
execute store result storage aj:temp frame int 1 run scoreboard players get @s aj.death.frame
function animated_java:beast/animations/death/zzz/apply_frame with storage aj:temp
execute if score @s aj.death.frame matches 80.. run return run function animated_java:beast/animations/death/pause
scoreboard players add @s aj.death.frame 1