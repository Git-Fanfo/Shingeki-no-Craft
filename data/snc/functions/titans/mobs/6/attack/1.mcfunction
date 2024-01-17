# Range
execute if score @s atk matches 140 run function snc:titans/model/attack {"distance" : 15}

# Attack
execute as @s[scores={atk=140}] on vehicle run effect give @s speed 3 2 true