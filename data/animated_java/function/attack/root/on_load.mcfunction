# This file was generated by Animated Java via MC-Build. It is not recommended to edit this file directly.
execute unless entity @s[tag=aj.attack.root] run return 0
execute on passengers if entity @s[tag=aj.attack.data] unless data entity @s {data:{rigHash: '32f6876d79dad2c0fd1c86d67b45efd24a39688485c7f06594a7a96b04827dcc'}} on vehicle run function animated_java:attack/root/zzz/0
scoreboard players set @s aj.is_rig_loaded 1