# This file was generated by Animated Java via MC-Build. It is not recommended to edit this file directly.
execute unless entity @s[type=item_display,tag=aj.beast.root] run return run function animated_java:global/errors/function_not_executed_as_root_entity {'export_namespace': 'beast', 'function_path': 'animated_java:beast/animations/throw_big/apply_frame'}
$execute store result storage aj:temp frame int 1 run scoreboard players set @s aj.throw_big.frame $(frame)
execute at @s run function animated_java:beast/animations/throw_big/zzz/apply_frame with storage aj:temp