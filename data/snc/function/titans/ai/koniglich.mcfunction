tag @s remove koniglich
execute on passengers unless entity @s[tag=hurtbox] run function snc:titans/ai/koniglich
execute on passengers if entity @s[tag=hurtbox] run scoreboard players set @s koniglich 1