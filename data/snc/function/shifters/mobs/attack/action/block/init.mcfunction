execute as 0000007f-0000-007f-0000-007f00000003 on passengers if entity @s[tag=aj.attack.root] run function snc:shifters/mobs/attack/animate/block
effect give @s resistance 1 3 true
$scoreboard players remove $energy attack_vars $(energy_block)