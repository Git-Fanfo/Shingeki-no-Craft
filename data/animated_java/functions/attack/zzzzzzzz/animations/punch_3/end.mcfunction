execute if score @s aj.attack.animation.punch_3.loop_mode = $aj.loop_mode.loop aj.i run function animated_java:attack/zzzzzzzz/animations/punch_3/end_loop
execute if score @s aj.attack.animation.punch_3.loop_mode = $aj.loop_mode.once aj.i run function animated_java:attack/animations/punch_3/stop
execute if score @s aj.attack.animation.punch_3.loop_mode = $aj.loop_mode.hold aj.i run function animated_java:attack/animations/punch_3/pause