execute if items entity @s hotbar.* *[custom_data~{barrels: 1b}] unless items entity @s hotbar.* *[custom_data~{turrets: 1b}] run function snc:shifters/mobs/cart/action/shipload/barrels/spawn
execute if items entity @s hotbar.* *[custom_data~{turrets: 1b}] run function snc:shifters/mobs/cart/action/shipload/turrets/spawn