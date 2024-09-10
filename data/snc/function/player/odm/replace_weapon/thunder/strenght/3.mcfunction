## Soldier
execute unless score @s Titan_Kill_Count matches 1.. run effect give @s slowness 2 3 true
## Veteran
execute unless score @s Titan_Kill_Count matches 10.. run effect give @s slowness 2 2 true
execute unless score @s Titan_Kill_Count matches 10.. run effect give @s blindness 2 0 true
## Leader
execute unless score @s Titan_Kill_Count matches 25.. run effect give @s slowness 2 1 true
## Officer
execute unless score @s Titan_Kill_Count matches 40.. run effect give @s slowness 2 0 true
## Squad
#execute unless score @s Titan_Kill_Count matches 70.. run effect give @s nausea 8 0 true
execute unless score @s Titan_Kill_Count matches 70.. run effect give @s darkness 2 0 true