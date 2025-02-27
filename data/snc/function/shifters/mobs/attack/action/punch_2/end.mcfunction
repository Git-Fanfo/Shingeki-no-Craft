scoreboard players set state attack_vars 5
execute on vehicle run effect clear @s slowness

# Follow combo
execute if score combo_punch attack_vars matches 2 on vehicle on passengers if entity @s[tag=aj.attack.root] run function snc:shifters/mobs/attack/animate/punch_3
execute unless score combo_punch attack_vars matches 2 run scoreboard players set combo_punch attack_vars 0