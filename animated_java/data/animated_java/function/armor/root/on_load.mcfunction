# This file was generated by Animated Java via MC-Build. It is not recommended to edit this file directly.
execute unless entity @s[tag=aj.armor.root] run return 0
execute on passengers if entity @s[tag=aj.armor.data] unless data entity @s {data:{rigHash: 'e5e38d640f30223060e18a42b2cd6166bd7fb341514f64a113542db4f0bbec0d'}} on vehicle run function animated_java:armor/root/zzz/0
scoreboard players set @s aj.is_rig_loaded 1