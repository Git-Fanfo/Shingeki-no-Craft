execute if score @s aj.beast.animation.consume.loop_mode = $aj.loop_mode.loop aj.i run function animated_java:beast/zzzzzzzz/animations/consume/end_loop
execute if score @s aj.beast.animation.consume.loop_mode = $aj.loop_mode.once aj.i run function animated_java:beast/animations/consume/stop
execute if score @s aj.beast.animation.consume.loop_mode = $aj.loop_mode.hold aj.i run function animated_java:beast/animations/consume/pause