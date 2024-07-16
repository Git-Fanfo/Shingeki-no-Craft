# Range
execute if score @s atk matches 70 run function snc:titans/model/attack {"distance" : 15}

# Attack
execute if score @s atk matches 70 on vehicle run effect give @s slowness 1 5 true

execute if score @s atk matches 62 run function snc:titans/tangible/vomit/summon