execute if score @s aj.armor.animation.hardening.loop_mode = $aj.loop_mode.loop aj.i run function animated_java:armor/zzzzzzzz/animations/hardening/end_loop
execute if score @s aj.armor.animation.hardening.loop_mode = $aj.loop_mode.once aj.i run function animated_java:armor/animations/hardening/stop
execute if score @s aj.armor.animation.hardening.loop_mode = $aj.loop_mode.hold aj.i run function animated_java:armor/animations/hardening/pause