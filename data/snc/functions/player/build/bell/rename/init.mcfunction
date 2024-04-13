data merge entity @s {CustomNameVisible:1b,width:2f,height:2f,billboard:"vertical",Tags:["village"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[2f,2f,2f]}}

execute store result score @s random run random value 1..18
execute if score @s random matches 1 run data merge entity @s {CustomName:'{"text":"Ehrhardt\'s Edge","color":"gold"}'}
execute if score @s random matches 2 run data merge entity @s {CustomName:'{"text":"Kriegerfort","color":"gold"}'}
execute if score @s random matches 3 run data merge entity @s {CustomName:'{"text":"Waldenruh","color":"gold"}'}
execute if score @s random matches 4 run data merge entity @s {CustomName:'{"text":"Titanweald","color":"gold"}'}
execute if score @s random matches 5 run data merge entity @s {CustomName:'{"text":"Hohenstein","color":"gold"}'}
execute if score @s random matches 6 run data merge entity @s {CustomName:'{"text":"Graufalke","color":"gold"}'}
execute if score @s random matches 7 run data merge entity @s {CustomName:'{"text":"Sturmwacht","color":"gold"}'}
execute if score @s random matches 8 run data merge entity @s {CustomName:'{"text":"Nebelheim","color":"gold"}'}
execute if score @s random matches 9 run data merge entity @s {CustomName:'{"text":"Zerbrochenturm","color":"gold"}'}
execute if score @s random matches 10 run data merge entity @s {CustomName:'{"text":"Falkenrast","color":"gold"}'}
execute if score @s random matches 11 run data merge entity @s {CustomName:'{"text":"Valoria","color":"gold"}'}
execute if score @s random matches 12 run data merge entity @s {CustomName:'{"text":"Drakonica","color":"gold"}'}
execute if score @s random matches 13 run data merge entity @s {CustomName:'{"text":"Solaria","color":"gold"}'}
execute if score @s random matches 14 run data merge entity @s {CustomName:'{"text":"Lysiria","color":"gold"}'}
execute if score @s random matches 15 run data merge entity @s {CustomName:'{"text":"Syridia","color":"gold"}'}
execute if score @s random matches 16 run data merge entity @s {CustomName:'{"text":"Ethelhyme","color":"gold"}'}
execute if score @s random matches 17 run data merge entity @s {CustomName:'{"text":"Inamorta","color":"gold"}'}
execute if score @s random matches 18 run data merge entity @s {CustomName:'{"text":"Verdenburgh","color":"gold"}'}
scoreboard players reset @s random