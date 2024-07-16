execute if score @s Titan_Kill_Count matches 0 run team leave @s
execute if score @s Titan_Kill_Count matches 1..9 run team join soldier
execute if score @s Titan_Kill_Count matches 10..24 run team join veteran
execute if score @s Titan_Kill_Count matches 25..39 run team join leader
execute if score @s Titan_Kill_Count matches 40..69 run team join officer
execute if score @s Titan_Kill_Count matches 70..99 run team join squad
execute if score @s Titan_Kill_Count matches 100..199 run team join v_captain
execute if score @s Titan_Kill_Count matches 200.. run team join captain