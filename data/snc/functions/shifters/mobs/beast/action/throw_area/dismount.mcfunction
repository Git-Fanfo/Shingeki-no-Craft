tag @s remove snc.projectile
# snowball < pivot < item_dislay
execute on vehicle on vehicle run kill @s
# pivot < item_dislay
execute on vehicle run kill @s
# kill entity
execute on passengers if entity @s[tag=!ai] run damage @s 200 minecraft:explosion
execute on passengers if entity @s[tag=ai] run function snc:titans/kill
kill