# This file was generated by Animated Java via MC-Build. It is not recommended to edit this file directly.
execute unless entity @s[type=item_display,tag=aj.armor.root] run return run function animated_java:global/errors/function_not_executed_as_root_entity {'export_namespace': 'armor', 'function_path': 'animated_java:armor/animations/pause_all'}
tag @s remove aj.armor.animation.idle.playing
tag @s remove aj.armor.animation.walk.playing
tag @s remove aj.armor.animation.born.playing
tag @s remove aj.armor.animation.death.playing
tag @s remove aj.armor.animation.charge.playing
tag @s remove aj.armor.animation.run.playing
tag @s remove aj.armor.animation.slide.playing
tag @s remove aj.armor.animation.punch_1.playing
tag @s remove aj.armor.animation.punch_2.playing
tag @s remove aj.armor.animation.punch_3.playing
tag @s remove aj.armor.animation.init_charge.playing
tag @s remove aj.armor.animation.hardening.playing
tag @s remove aj.armor.animation.sneak.playing
tag @s remove aj.armor.animation.consume.playing