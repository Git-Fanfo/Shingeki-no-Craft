# This file was generated by Animated Java via MC-Build. It is not recommended to edit this file directly.
execute unless entity @s[type=item_display,tag=aj.armor.root] run return run function animated_java:global/errors/function_not_executed_as_root_entity {'export_namespace': 'armor', 'function_path': 'animated_java:armor/as_all_locators'}
$data modify storage aj:temp command set value '$(command)'
execute on passengers if entity @s[tag=aj.global.data] run function animated_java:armor/zzz/13