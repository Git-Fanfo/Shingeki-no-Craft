# This file was generated by Animated Java via MC-Build. It is not recommended to edit this file directly.
execute unless entity @s[type=item_display,tag=aj.attack.root] run return run function animated_java:global/errors/function_not_executed_as_root_entity {'export_namespace': 'attack', 'function_path': 'animated_java:attack/animations/punch_3/stop'}
tag @s remove aj.attack.animation.punch_3.playing
scoreboard players set @s aj.punch_3.frame 0
tag @s add aj.transforms_only
execute at @s run function animated_java:attack/animations/punch_3/zzz/set_frame {frame: 0}
tag @s remove aj.transforms_only