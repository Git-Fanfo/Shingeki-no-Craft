## Soldier
execute unless score @s Titan_Kill_Count matches 1.. run effect give @s slowness 2 2 true
## Veteran
execute unless score @s Titan_Kill_Count matches 10.. run effect give @s slowness 2 1 true
execute unless score @s Titan_Kill_Count matches 10.. run effect give @s blindness 2 0 true
## Leader
execute unless score @s Titan_Kill_Count matches 25.. run effect give @s slowness 2 0 true