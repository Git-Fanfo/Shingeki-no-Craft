# This file was generated by Animated Java via MC-Build. It is not recommended to edit this file directly.
execute unless entity @s[type=item_display,tag=aj.attack.root] run return run function animated_java:global/errors/function_not_executed_as_root_entity {'export_namespace': 'attack', 'function_path': 'animated_java:attack/animations/punch_3/next_frame'}
execute if score @s aj.punch_3.frame matches 18.. run scoreboard players set @s aj.punch_3.frame 1
execute store result storage aj:temp frame int 1 run scoreboard players get @s aj.punch_3.frame
execute at @s run function animated_java:attack/animations/punch_3/zzz/apply_frame with storage aj:temp
scoreboard players add @s aj.punch_3.frame 1