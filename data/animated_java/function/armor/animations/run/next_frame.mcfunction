# This file was generated by Animated Java via MC-Build. It is not recommended to edit this file directly.
execute unless entity @s[type=item_display,tag=aj.armor.root] run return run function animated_java:global/errors/function_not_executed_as_root_entity {'export_namespace': 'armor', 'function_path': 'animated_java:armor/animations/run/next_frame'}
execute if score @s aj.run.frame matches 36.. run scoreboard players set @s aj.run.frame 1
execute store result storage aj:temp frame int 1 run scoreboard players get @s aj.run.frame
execute at @s run function animated_java:armor/animations/run/zzz/apply_frame with storage aj:temp
scoreboard players add @s aj.run.frame 1