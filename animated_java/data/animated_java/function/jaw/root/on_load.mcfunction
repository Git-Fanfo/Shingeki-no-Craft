# This file was generated by Animated Java via MC-Build. It is not recommended to edit this file directly.
execute unless entity @s[tag=aj.jaw.root] run return 0
execute on passengers if entity @s[tag=aj.jaw.data] unless data entity @s {data:{rigHash: 'af28214a939f60a16b5e496ea19a8994caa1ca2910fb8d9789bff5fe32f6b0f0'}} on vehicle run function animated_java:jaw/root/zzz/0
scoreboard players set @s aj.is_rig_loaded 1