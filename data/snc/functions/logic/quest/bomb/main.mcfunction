execute unless block ~ ~-1 ~ smithing_table run tellraw @s ["<Bomb> ","Stranger, I need a place to sell my stuff! ",{"text":"I need to be on top of a Smithing Table","color":"yellow","bold": true}," in order to work!","\n",{"translate":"aot.villager.follow.seller","color":"green","clickEvent":{"action":"run_command","value":"/trigger messages set 10"},"hoverEvent":{"action":"show_text","contents":[{"translate":"aot.villager.follow.seller.hover","color":"yellow"}]}}]

execute if block ~ ~-1 ~ smithing_table store result score @s random run random value 1..3
execute if score @s random matches 1 run tellraw @s ["<Bomb> ","What are you buying?"]
execute if score @s random matches 2 run tellraw @s ["<Bomb> ","Over here stranger."]
execute if score @s random matches 3 run tellraw @s ["<Bomb> ","Ahh.. i'll buy it at a high price."]
# execute if score @s random matches 4 run tellraw @s ["<Alex> ","AHHH!! NOO!!! PLEASE DON'T KILL MEEE!!!"]
scoreboard players reset @s random