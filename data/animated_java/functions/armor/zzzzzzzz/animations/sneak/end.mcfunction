execute if score @s aj.armor.animation.sneak.loop_mode = $aj.loop_mode.loop aj.i run function animated_java:armor/zzzzzzzz/animations/sneak/end_loop
execute if score @s aj.armor.animation.sneak.loop_mode = $aj.loop_mode.once aj.i run function animated_java:armor/animations/sneak/stop
execute if score @s aj.armor.animation.sneak.loop_mode = $aj.loop_mode.hold aj.i run function animated_java:armor/animations/sneak/pause