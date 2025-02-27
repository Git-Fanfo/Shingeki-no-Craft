scoreboard players set state armor_vars 5
execute on vehicle run effect clear @s slowness

# Follow combo
execute if score combo_punch armor_vars matches 2 on vehicle on passengers if entity @s[tag=aj.armor.root] run function snc:shifters/mobs/armor/animate/punch_3
execute unless score combo_punch armor_vars matches 2 run scoreboard players set combo_punch armor_vars 0