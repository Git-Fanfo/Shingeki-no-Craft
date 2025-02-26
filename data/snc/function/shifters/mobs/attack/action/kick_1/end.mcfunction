scoreboard players set state attack_vars 5
execute on vehicle run effect clear @s slowness

# Follow combo
execute if score combo_kick attack_vars matches 1 as 0000007f-0000-007f-0000-007f00000003 on passengers if entity @s[tag=aj.attack.root] run function snc:shifters/mobs/attack/animate/kick_2

execute unless score combo_kick attack_vars matches 1 run scoreboard players set combo_kick attack_vars 0