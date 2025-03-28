scoreboard players set state armor_vars 5
execute on vehicle run effect clear @s slowness

## Follow combo
execute if score combo_punch armor_vars matches 1 on vehicle on passengers if entity @s[tag=aj.armor.root] run function snc:shifters/mobs/armor/animate/rocket
scoreboard players set combo_punch armor_vars 0
execute on vehicle on controller run function snc:shifters/mobs/armor/abilities/atk_2 with storage minecraft:armor